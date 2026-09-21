#!/usr/bin/env python3
"""Extract ground-truth per-page reference specs from the decompiled ORich
uni-app bundle.

For every page listed in app-config-service.js this dumps, into
docs/reference/orich/<page>.md:

  * the page's module ids (page / render / options) and CSS scope id
  * the *literal* compiled template (from app-service.js render module, which
    embeds the real static classes/text as the 3rd arg of `_$s`)
  * the scoped CSS rules for the page (from app-view.js)
  * the component options source (data / methods / computed) so behaviour and
    text bindings can be reproduced faithfully

This is read-only analysis of the authorized reference artifact; nothing here
ships in the application.
"""
from __future__ import annotations

import os
import re

ROOT = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))
WWW = os.path.join(
    ROOT,
    "ORich_2.1.4_APKPure.xapk_Decompiler.com",
    "resources",
    "com.orich.orichrelease.apk",
    "assets",
    "apps",
    "__UNI__F330A24",
    "www",
)
OUT = os.path.join(ROOT, "docs", "reference", "orich")


def read(name: str) -> str:
    with open(os.path.join(WWW, name), "r", encoding="utf-8", errors="replace") as f:
        return f.read()


def find_module(src: str, mod: str) -> str | None:
    """Return the body of a webpack module `mod` from `src`."""
    # module keys appear as  "id":function(t,e,s){...}  or  ,id:function(...)
    for pat in (r'"%s":function\([a-z],[a-z],[a-z]\)\{' % re.escape(mod),
                r'[,{]%s:function\([a-z],[a-z],[a-z]\)\{' % re.escape(mod)):
        m = re.search(pat, src)
        if not m:
            continue
        start = m.end() - 1  # at the opening {
        depth = 0
        i = start
        in_str = None
        while i < len(src):
            c = src[i]
            if in_str:
                if c == "\\":
                    i += 2
                    continue
                if c == in_str:
                    in_str = None
            elif c in "\"'":
                in_str = c
            elif c == "{":
                depth += 1
            elif c == "}":
                depth -= 1
                if depth == 0:
                    return src[start : i + 1]
            i += 1
    return None


def balanced(src: str, open_at: int) -> str:
    """Return the {...} block starting at the brace index `open_at`."""
    depth = 0
    in_str = None
    i = open_at
    while i < len(src):
        c = src[i]
        if in_str:
            if c == "\\":
                i += 2
                continue
            if c == in_str:
                in_str = None
        elif c in "\"'":
            in_str = c
        elif c == "{":
            depth += 1
        elif c == "}":
            depth -= 1
            if depth == 0:
                return src[open_at : i + 1]
        i += 1
    return src[open_at:]


def extract_render(rmod: str) -> str:
    """Pull the render function body from a render module."""
    m = re.search(r'=function\(\)\{var t=this', rmod)
    if not m:
        return ""
    brace = rmod.index("{", m.start())
    body = balanced(rmod, brace)
    return pretty_js("function()" + body)


def follow_options(src: str, opts_id: str, depth: int = 0) -> str:
    """Follow re-export chains to the module holding real data/methods."""
    body = find_module(src, opts_id)
    if not body or depth > 4:
        return body or ""
    if ("data:function" in body or "methods:{" in body
            or "computed:{" in body or "data(){" in body):
        return body
    m = re.search(r'var [a-z]=s\("([^"]+)"\)', body)
    if m:
        return follow_options(src, m.group(1), depth + 1)
    return body


def pretty_js(s: str) -> str:
    """Readable multiline pretty-print of a compiled render expression."""
    out = []
    indent = 0
    in_str = None
    i = 0
    pad = "  "
    while i < len(s):
        c = s[i]
        if in_str:
            out.append(c)
            if c == "\\":
                out.append(s[i + 1])
                i += 2
                continue
            if c == in_str:
                in_str = None
            i += 1
            continue
        if c in "\"'":
            in_str = c
            out.append(c)
        elif c in "([":
            indent += 1
            out.append(c)
            out.append("\n" + pad * indent)
        elif c in ")]":
            indent = max(0, indent - 1)
            out.append("\n" + pad * indent)
            out.append(c)
        elif c == ",":
            out.append(c)
            out.append("\n" + pad * indent)
        else:
            out.append(c)
        i += 1
    text = "".join(out)
    # collapse blank/whitespace-only lines
    lines = [ln.rstrip() for ln in text.splitlines() if ln.strip()]
    return "\n".join(lines)


def extract_scope_css(view: str, scope: str) -> list[str]:
    rules = []
    marker = "[data-v-%s]" % scope
    # find each rule block: selector ... { ... }
    idx = 0
    while True:
        j = view.find(marker, idx)
        if j == -1:
            break
        # selector start: walk back to previous } or ; or start of the css string
        k = j
        while k > 0 and view[k - 1] not in "}{;":
            k -= 1
        # rule end: next }
        end = view.find("}", j)
        if end == -1:
            break
        rule = view[k:end + 1].strip()
        rule = rule.replace("\\r", "").replace("\\n", " ")
        rule = re.sub(r"\s+", " ", rule)
        if rule and rule not in rules:
            rules.append(rule)
        idx = end + 1
    return rules


def main() -> None:
    cfg = read("app-config-service.js")
    svc = read("app-service.js")
    view = read("app-view.js")

    m = re.search(r'"pages":\[(.*?)\]', cfg)
    pages = re.findall(r'"([^"]+)"', m.group(1))

    os.makedirs(OUT, exist_ok=True)

    # map page path -> page module id
    page_mod = {}
    for pm in re.finditer(r'__definePage\("([^"]+)",\(function\(\)\{return Vue\.extend\(s\("([^"]+)"\)\.default\)\}\)\)', svc):
        page_mod[pm.group(1)] = pm.group(2)

    index_lines = ["# ORich reference specs\n",
                   "Generated by `scripts/extract-orich-reference.py` from the authorized decompiled bundle. Read-only ground truth for pixel-perfect cloning.\n",
                   "| # | page | render | options | scope |",
                   "|--:|------|--------|---------|-------|"]

    for n, page in enumerate(pages, 1):
        mod = page_mod.get(page)
        render_id = opts_id = scope = None
        body = find_module(svc, mod) if mod else None
        if body:
            mm = re.search(r'var [a-z]=s\("([^"]+)"\),[a-z]=s\("([^"]+)"\)', body)
            if mm:
                render_id, opts_id = mm.group(1), mm.group(2)
            sc = re.search(r'Object\([a-z]\["a"\]\)\([^,]+,[^,]+,[^,]+,![01],null,"([0-9a-f]+)"', body)
            if sc:
                scope = sc.group(1)

        template = ""
        if render_id:
            rmod = find_module(svc, render_id)
            if rmod:
                template = extract_render(rmod)

        opts_src = follow_options(svc, opts_id) if opts_id else ""

        css = extract_scope_css(view, scope) if scope else []

        safe = page.replace("/", "__")
        with open(os.path.join(OUT, safe + ".md"), "w", encoding="utf-8") as f:
            f.write(f"# {page}\n\n")
            f.write(f"- page module: `{mod}`\n- render module: `{render_id}`\n")
            f.write(f"- options module: `{opts_id}`\n- css scope: `data-v-{scope}`\n\n")
            f.write("## Scoped CSS (%d rules)\n\n```css\n" % len(css))
            f.write("\n".join(css))
            f.write("\n```\n\n")
            f.write("## Compiled template (literal classes/text)\n\n```js\n")
            f.write(template[:60000])
            f.write("\n```\n\n")
            f.write("## Component options (data / methods)\n\n```js\n")
            f.write(opts_src[:40000])
            f.write("\n```\n")

        index_lines.append(f"| {n} | [{page}]({safe}.md) | {render_id} | {opts_id} | {scope} |")

    with open(os.path.join(OUT, "INDEX.md"), "w", encoding="utf-8") as f:
        f.write("\n".join(index_lines) + "\n")

    print("Extracted %d pages to %s" % (len(pages), OUT))


if __name__ == "__main__":
    main()
