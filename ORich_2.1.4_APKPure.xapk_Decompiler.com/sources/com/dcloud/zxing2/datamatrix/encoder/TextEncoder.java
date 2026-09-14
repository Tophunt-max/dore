package com.dcloud.zxing2.datamatrix.encoder;

import com.taobao.weex.el.parse.Operators;

/* JADX INFO: loaded from: classes.dex */
final class TextEncoder extends C40Encoder {
    TextEncoder() {
    }

    @Override // com.dcloud.zxing2.datamatrix.encoder.C40Encoder
    int encodeChar(char c, StringBuilder sb) {
        if (c == ' ') {
            sb.append((char) 3);
            return 1;
        }
        if (c >= '0' && c <= '9') {
            sb.append((char) ((c - '0') + 4));
            return 1;
        }
        if (c >= 'a' && c <= 'z') {
            sb.append((char) ((c - 'a') + 14));
            return 1;
        }
        if (c >= 0 && c <= 31) {
            sb.append((char) 0);
            sb.append(c);
            return 2;
        }
        if (c >= '!' && c <= '/') {
            sb.append((char) 1);
            sb.append((char) (c - '!'));
            return 2;
        }
        if (c >= ':' && c <= '@') {
            sb.append((char) 1);
            sb.append((char) ((c - Operators.CONDITION_IF_MIDDLE) + 15));
            return 2;
        }
        if (c >= '[' && c <= '_') {
            sb.append((char) 1);
            sb.append((char) ((c - Operators.ARRAY_START) + 22));
            return 2;
        }
        if (c == '`') {
            sb.append((char) 2);
            sb.append((char) (c - '`'));
            return 2;
        }
        if (c >= 'A' && c <= 'Z') {
            sb.append((char) 2);
            sb.append((char) ((c - 'A') + 1));
            return 2;
        }
        if (c >= '{' && c <= 127) {
            sb.append((char) 2);
            sb.append((char) ((c - Operators.BLOCK_START) + 27));
            return 2;
        }
        if (c >= 128) {
            sb.append("\u0001\u001e");
            return encodeChar((char) (c - 128), sb) + 2;
        }
        HighLevelEncoder.illegalCharacter(c);
        return -1;
    }

    @Override // com.dcloud.zxing2.datamatrix.encoder.C40Encoder, com.dcloud.zxing2.datamatrix.encoder.Encoder
    public int getEncodingMode() {
        return 2;
    }
}
