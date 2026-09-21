#!/usr/bin/env node
/**
 * Extract verbatim scoped CSS for a page from the ORich reference spec and write
 * it as a plain stylesheet:
 *   - strips the [data-v-xxxxxxxx] scope attribute selectors
 *   - namespaces every selector under the page root class
 *   - drops dynamic `url('+var+')` fragments the original built via JS
 *
 * Usage: node scripts/extract-page-css.cjs <referenceMd> <rootClass> <outCss>
 */
const fs = require('fs');

const [, , mdPath, root, outPath] = process.argv;
if (!mdPath || !root || !outPath) {
  console.error('usage: extract-page-css.cjs <referenceMd> <rootClass> <outCss>');
  process.exit(1);
}

const md = fs.readFileSync(mdPath, 'utf8');
const m = md.match(/```css\n([\s\S]*?)\n```/);
if (!m) {
  console.error('no css block found in', mdPath);
  process.exit(1);
}

let css = m[1];
// 1) strip every scope attribute selector, e.g. [data-v-7f2b1428]
css = css.replace(/\[data-v-[0-9a-f]+\]/g, '');
// 2) remove dynamic JS-concatenated url() values
css = css.replace(/url\([^)]*\+[^)]*\)/g, 'none');

// 3) namespace each selector under the root class
const rules = [];
const re = /([^{}]+)\{([^{}]*)\}/g;
let r;
while ((r = re.exec(css))) {
  const body = r[2].trim();
  if (!body) continue;
  const sels = r[1]
    .split(',')
    .map((s) => s.trim())
    .filter(Boolean)
    .map((s) => {
      if (s === '*') return `${root} *`;
      if (s === root || s.startsWith(`${root} `) || s.startsWith(`${root}.`) || s.startsWith(`${root}:`)) return s;
      return `${root} ${s}`;
    });
  rules.push(`${sels.join(',')}{${body}}`);
}

fs.writeFileSync(outPath, rules.join('\n') + '\n');
const leftover = (rules.join('\n').match(/\[data-v-/g) || []).length;
console.log(`${outPath}: ${rules.length} rules, leftover scope attrs: ${leftover}`);
