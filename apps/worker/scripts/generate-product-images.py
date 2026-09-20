#!/usr/bin/env python3
"""Generate distinct product artwork for the Oriva demo catalog.

The original demo images were all the same pale-grey card with the product name
printed on it, so every Hot Picks row looked identical at thumbnail size. These
replacements give each product its own colour scheme and its own flat-vector
silhouette, drawn with primitives so the files stay small and no third-party
artwork (and no licensing question) is involved.

Usage:
    python3 generate-product-images.py [OUT_DIR]

Then upload with:
    wrangler r2 object put oriva-assets/products/<name>.png --file <name>.png \
        --content-type image/png --remote
"""
import math
import os
import sys

from PIL import Image, ImageDraw

SIZE = 600
WHITE = (255, 255, 255)


def gradient(top, bottom):
    """Vertical gradient background."""
    img = Image.new("RGB", (SIZE, SIZE), top)
    d = ImageDraw.Draw(img)
    for y in range(SIZE):
        t = y / (SIZE - 1)
        d.line(
            [(0, y), (SIZE, y)],
            fill=(
                round(top[0] + (bottom[0] - top[0]) * t),
                round(top[1] + (bottom[1] - top[1]) * t),
                round(top[2] + (bottom[2] - top[2]) * t),
            ),
        )
    return img


def halo(d, alpha_img):
    """Soft translucent disc behind the glyph so shapes read on any gradient."""
    ad = ImageDraw.Draw(alpha_img, "RGBA")
    ad.ellipse([100, 100, 500, 500], fill=(255, 255, 255, 28))


def scooter(d):
    # wheels
    for cx in (185, 425):
        d.ellipse([cx - 62, 370, cx + 62, 494], outline=WHITE, width=20)
    # deck + stem + handlebar
    d.line([(200, 432), (350, 432)], fill=WHITE, width=20)
    d.line([(350, 432), (408, 432)], fill=WHITE, width=20)
    d.line([(404, 432), (430, 210)], fill=WHITE, width=20)
    d.line([(372, 196), (470, 196)], fill=WHITE, width=20)
    # rider-facing stem detail
    d.line([(200, 432), (168, 372)], fill=WHITE, width=20)


def cash(d):
    """Two banknotes plus a stack of coins.

    The bundled Roboto subset has no U+20B9 glyph, and a hand-drawn rupee sign
    reads poorly at thumbnail size, so the note/coin silhouette carries the
    meaning instead.
    """
    # back note, offset so it peeks out behind the front one
    d.rounded_rectangle([158, 132, 516, 296], radius=22, outline=WHITE, width=14)
    # front note with a seal in the middle
    d.rounded_rectangle([84, 196, 442, 360], radius=22, outline=WHITE, width=18)
    d.ellipse([226, 240, 300, 314], outline=WHITE, width=16)
    # round coins read far better than flat ellipses at thumbnail size
    for cx in (216, 300, 384):
        d.ellipse([cx - 52, 412, cx + 52, 516], outline=WHITE, width=16)
        d.ellipse([cx - 20, 444, cx + 20, 484], outline=WHITE, width=10)


def phone(d, notch=True):
    d.rounded_rectangle([196, 96, 404, 504], radius=44, outline=WHITE, width=20)
    if notch:
        d.rounded_rectangle([268, 128, 332, 148], radius=10, fill=WHITE)
    # camera cluster
    d.ellipse([228, 180, 268, 220], outline=WHITE, width=12)
    d.ellipse([228, 236, 268, 276], outline=WHITE, width=12)
    # home indicator
    d.rounded_rectangle([262, 462, 338, 474], radius=6, fill=WHITE)


def television(d):
    d.rounded_rectangle([80, 150, 520, 420], radius=24, outline=WHITE, width=20)
    # stand
    d.line([(300, 420), (300, 470)], fill=WHITE, width=18)
    d.line([(210, 476), (390, 476)], fill=WHITE, width=20)
    # play triangle on screen
    d.polygon([(272, 232), (272, 338), (356, 285)], outline=WHITE, width=14)


def trophy(d):
    # cup
    d.rounded_rectangle([210, 130, 390, 300], radius=16, outline=WHITE, width=20)
    d.arc([210, 236, 390, 366], start=0, end=180, fill=WHITE, width=20)
    # handles
    d.arc([132, 148, 232, 268], start=90, end=270, fill=WHITE, width=18)
    d.arc([368, 148, 468, 268], start=270, end=90, fill=WHITE, width=18)
    # stem + base
    d.line([(300, 356), (300, 424)], fill=WHITE, width=20)
    d.rounded_rectangle([222, 430, 378, 466], radius=12, fill=WHITE)
    # star
    pts = []
    for i in range(10):
        ang = math.radians(-90 + i * 36)
        r = 44 if i % 2 == 0 else 18
        pts.append((300 + r * math.cos(ang), 212 + r * math.sin(ang)))
    d.polygon(pts, fill=WHITE)


def gift(d):
    d.rounded_rectangle([120, 250, 480, 490], radius=18, outline=WHITE, width=20)
    # lid
    d.rounded_rectangle([96, 180, 504, 258], radius=16, outline=WHITE, width=20)
    # ribbon
    d.line([(300, 258), (300, 490)], fill=WHITE, width=20)
    # bow
    d.arc([200, 104, 306, 200], start=20, end=210, fill=WHITE, width=18)
    d.arc([294, 104, 400, 200], start=-30, end=160, fill=WHITE, width=18)


PRODUCTS = {
    # slug: (top colour, bottom colour, glyph)
    "electric-scooter": ((0x14, 0xB8, 0xA6), (0x0E, 0x76, 0x90), scooter),
    "cash-award": ((0x22, 0xC5, 0x5E), (0x15, 0x80, 0x3D), cash),
    "iphone-15-pro": ((0x47, 0x55, 0x69), (0x1E, 0x29, 0x3B), lambda d: phone(d)),
    "smart-tv": ((0x8B, 0x5C, 0xF6), (0x5B, 0x21, 0xB6), television),
    "smartphone": ((0xFB, 0x92, 0x3C), (0xEA, 0x58, 0x0C), lambda d: phone(d, False)),
    "premium-reward": ((0xFA, 0xCC, 0x15), (0xD9, 0x77, 0x06), trophy),
    "mystery-gift": ((0xF4, 0x3F, 0x5E), (0xBE, 0x12, 0x3C), gift),
}


def main():
    out = sys.argv[1] if len(sys.argv) > 1 else "product-images"
    os.makedirs(out, exist_ok=True)
    for slug, (top, bottom, glyph) in PRODUCTS.items():
        img = gradient(top, bottom).convert("RGBA")
        overlay = Image.new("RGBA", (SIZE, SIZE), (0, 0, 0, 0))
        halo(None, overlay)
        img = Image.alpha_composite(img, overlay)
        d = ImageDraw.Draw(img)
        glyph(d)
        path = os.path.join(out, f"{slug}.png")
        img.convert("RGB").save(path, "PNG", optimize=True)
        print(f"wrote {path}")


if __name__ == "__main__":
    main()
