package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.util.Base64;
import io.dcloud.common.util.JSUtil;
import java.util.Calendar;
import java.util.Locale;
import java.util.TimeZone;

/* JADX INFO: loaded from: classes.dex */
public final class JSONScanner extends JSONLexerBase {
    protected static final char[] typeFieldName = (JSUtil.QUOTE + JSON.DEFAULT_TYPE_KEY + "\":\"").toCharArray();
    public final int ISO8601_LEN_0;
    public final int ISO8601_LEN_1;
    public final int ISO8601_LEN_2;
    private final String text;

    static boolean checkDate(char c, char c2, char c3, char c4, char c5, char c6, int i, int i2) {
        if ((c == '1' || c == '2') && c2 >= '0' && c2 <= '9' && c3 >= '0' && c3 <= '9' && c4 >= '0' && c4 <= '9') {
            if (c5 == '0') {
                if (c6 < '1' || c6 > '9') {
                    return false;
                }
            } else if (c5 != '1' || (c6 != '0' && c6 != '1' && c6 != '2')) {
                return false;
            }
            if (i == 48) {
                return i2 >= 49 && i2 <= 57;
            }
            if (i != 49 && i != 50) {
                return i == 51 && (i2 == 48 || i2 == 49);
            }
            if (i2 >= 48 && i2 <= 57) {
                return true;
            }
        }
        return false;
    }

    private boolean checkTime(char c, char c2, char c3, char c4, char c5, char c6) {
        if (c == '0') {
            if (c2 < '0' || c2 > '9') {
                return false;
            }
        } else {
            if (c != '1') {
                if (c == '2' && c2 >= '0' && c2 <= '4') {
                }
                return false;
            }
            if (c2 < '0' || c2 > '9') {
                return false;
            }
        }
        if (c3 < '0' || c3 > '5') {
            if (c3 != '6' || c4 != '0') {
                return false;
            }
        } else if (c4 < '0' || c4 > '9') {
            return false;
        }
        return (c5 < '0' || c5 > '5') ? c5 == '6' && c6 == '0' : c6 >= '0' && c6 <= '9';
    }

    public JSONScanner(String str) {
        this(str, JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONScanner(String str, int i) {
        this.ISO8601_LEN_0 = 10;
        this.ISO8601_LEN_1 = 19;
        this.ISO8601_LEN_2 = 23;
        this.features = i;
        this.text = str;
        this.bp = -1;
        next();
        if (this.ch == 65279) {
            next();
        }
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final char charAt(int i) {
        if (i >= this.text.length()) {
            return (char) 26;
        }
        return this.text.charAt(i);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final char next() {
        int i = this.bp + 1;
        this.bp = i;
        char cCharAt = charAt(i);
        this.ch = cCharAt;
        return cCharAt;
    }

    public JSONScanner(char[] cArr, int i) {
        this(cArr, i, JSON.DEFAULT_PARSER_FEATURE);
    }

    public JSONScanner(char[] cArr, int i, int i2) {
        this(new String(cArr, 0, i), i2);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    protected final void copyTo(int i, int i2, char[] cArr) {
        this.text.getChars(i, i2 + i, cArr, 0);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final int indexOf(char c, int i) {
        return this.text.indexOf(c, i);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final String addSymbol(int i, int i2, int i3, SymbolTable symbolTable) {
        return symbolTable.addSymbol(this.text, i, i2, i3);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public byte[] bytesValue() {
        return Base64.decodeFast(this.text, this.np + 1, this.sp);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final String stringVal() {
        if (!this.hasSpecial) {
            return subString(this.np + 1, this.sp);
        }
        return new String(this.sbuf, 0, this.sp);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public final String subString(int i, int i2) {
        char[] cArr = new char[i2];
        for (int i3 = i; i3 < i + i2; i3++) {
            cArr[i3 - i] = this.text.charAt(i3);
        }
        return new String(cArr);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase, com.alibaba.fastjson.parser.JSONLexer
    public final String numberString() {
        char cCharAt = charAt((this.np + this.sp) - 1);
        int i = this.sp;
        if (cCharAt == 'L' || cCharAt == 'S' || cCharAt == 'B' || cCharAt == 'F' || cCharAt == 'D') {
            i--;
        }
        return subString(this.np, i);
    }

    public boolean scanISO8601DateIfMatch() {
        return scanISO8601DateIfMatch(true);
    }

    public boolean scanISO8601DateIfMatch(boolean z) {
        int i;
        int i2;
        int i3;
        int i4;
        char cCharAt;
        int i5;
        char cCharAt2;
        int i6;
        int i7;
        char cCharAt3;
        int length = this.text.length() - this.bp;
        if (!z && length > 13) {
            char cCharAt4 = charAt(this.bp);
            char cCharAt5 = charAt(this.bp + 1);
            char cCharAt6 = charAt(this.bp + 2);
            char cCharAt7 = charAt(this.bp + 3);
            char cCharAt8 = charAt(this.bp + 4);
            char cCharAt9 = charAt(this.bp + 5);
            char cCharAt10 = charAt((this.bp + length) - 1);
            char cCharAt11 = charAt((this.bp + length) - 2);
            if (cCharAt4 == '/' && cCharAt5 == 'D' && cCharAt6 == 'a' && cCharAt7 == 't' && cCharAt8 == 'e' && cCharAt9 == '(' && cCharAt10 == '/' && cCharAt11 == ')') {
                int i8 = -1;
                for (int i9 = 6; i9 < length; i9++) {
                    char cCharAt12 = charAt(this.bp + i9);
                    if (cCharAt12 != '+') {
                        if (cCharAt12 < '0' || cCharAt12 > '9') {
                            break;
                        }
                    } else {
                        i8 = i9;
                    }
                }
                if (i8 == -1) {
                    return false;
                }
                int i10 = this.bp + 6;
                long j = Long.parseLong(subString(i10, i8 - i10));
                this.calendar = Calendar.getInstance(TimeZone.getDefault(), Locale.getDefault());
                this.calendar.setTimeInMillis(j);
                this.token = 5;
                return true;
            }
        }
        if (length == 8 || length == 14 || length == 17) {
            int i11 = 0;
            if (z) {
                return false;
            }
            char cCharAt13 = charAt(this.bp);
            char cCharAt14 = charAt(this.bp + 1);
            char cCharAt15 = charAt(this.bp + 2);
            char cCharAt16 = charAt(this.bp + 3);
            char cCharAt17 = charAt(this.bp + 4);
            char cCharAt18 = charAt(this.bp + 5);
            char cCharAt19 = charAt(this.bp + 6);
            char cCharAt20 = charAt(this.bp + 7);
            if (!checkDate(cCharAt13, cCharAt14, cCharAt15, cCharAt16, cCharAt17, cCharAt18, cCharAt19, cCharAt20)) {
                return false;
            }
            setCalendar(cCharAt13, cCharAt14, cCharAt15, cCharAt16, cCharAt17, cCharAt18, cCharAt19, cCharAt20);
            if (length != 8) {
                char cCharAt21 = charAt(this.bp + 8);
                char cCharAt22 = charAt(this.bp + 9);
                char cCharAt23 = charAt(this.bp + 10);
                char cCharAt24 = charAt(this.bp + 11);
                char cCharAt25 = charAt(this.bp + 12);
                char cCharAt26 = charAt(this.bp + 13);
                if (!checkTime(cCharAt21, cCharAt22, cCharAt23, cCharAt24, cCharAt25, cCharAt26)) {
                    return false;
                }
                if (length == 17) {
                    char cCharAt27 = charAt(this.bp + 14);
                    char cCharAt28 = charAt(this.bp + 15);
                    char cCharAt29 = charAt(this.bp + 16);
                    if (cCharAt27 < '0' || cCharAt27 > '9' || cCharAt28 < '0' || cCharAt28 > '9' || cCharAt29 < '0' || cCharAt29 > '9') {
                        return false;
                    }
                    i4 = (digits[cCharAt27] * 100) + (digits[cCharAt28] * 10) + digits[cCharAt29];
                } else {
                    i4 = 0;
                }
                int i12 = (digits[cCharAt21] * 10) + digits[cCharAt22];
                i = (digits[cCharAt23] * 10) + digits[cCharAt24];
                i2 = (digits[cCharAt25] * 10) + digits[cCharAt26];
                i11 = i4;
                i3 = i12;
            } else {
                i = 0;
                i2 = 0;
                i3 = 0;
            }
            this.calendar.set(11, i3);
            this.calendar.set(12, i);
            this.calendar.set(13, i2);
            this.calendar.set(14, i11);
            this.token = 5;
            return true;
        }
        if (length < this.ISO8601_LEN_0 || charAt(this.bp + 4) != '-' || charAt(this.bp + 7) != '-') {
            return false;
        }
        char cCharAt30 = charAt(this.bp);
        char cCharAt31 = charAt(this.bp + 1);
        char cCharAt32 = charAt(this.bp + 2);
        char cCharAt33 = charAt(this.bp + 3);
        char cCharAt34 = charAt(this.bp + 5);
        char cCharAt35 = charAt(this.bp + 6);
        char cCharAt36 = charAt(this.bp + 8);
        char cCharAt37 = charAt(this.bp + 9);
        if (!checkDate(cCharAt30, cCharAt31, cCharAt32, cCharAt33, cCharAt34, cCharAt35, cCharAt36, cCharAt37)) {
            return false;
        }
        setCalendar(cCharAt30, cCharAt31, cCharAt32, cCharAt33, cCharAt34, cCharAt35, cCharAt36, cCharAt37);
        char cCharAt38 = charAt(this.bp + 10);
        if (cCharAt38 != 'T' && (cCharAt38 != ' ' || z)) {
            if (cCharAt38 != '\"' && cCharAt38 != 26) {
                return false;
            }
            this.calendar.set(11, 0);
            this.calendar.set(12, 0);
            this.calendar.set(13, 0);
            this.calendar.set(14, 0);
            int i13 = this.bp + 10;
            this.bp = i13;
            this.ch = charAt(i13);
            this.token = 5;
            return true;
        }
        if (length < this.ISO8601_LEN_1 || charAt(this.bp + 13) != ':' || charAt(this.bp + 16) != ':') {
            return false;
        }
        char cCharAt39 = charAt(this.bp + 11);
        char cCharAt40 = charAt(this.bp + 12);
        char cCharAt41 = charAt(this.bp + 14);
        char cCharAt42 = charAt(this.bp + 15);
        char cCharAt43 = charAt(this.bp + 17);
        char cCharAt44 = charAt(this.bp + 18);
        if (!checkTime(cCharAt39, cCharAt40, cCharAt41, cCharAt42, cCharAt43, cCharAt44)) {
            return false;
        }
        int i14 = (digits[cCharAt39] * 10) + digits[cCharAt40];
        int i15 = (digits[cCharAt41] * 10) + digits[cCharAt42];
        int i16 = (digits[cCharAt43] * 10) + digits[cCharAt44];
        this.calendar.set(11, i14);
        this.calendar.set(12, i15);
        this.calendar.set(13, i16);
        if (charAt(this.bp + 19) == '.') {
            if (length >= this.ISO8601_LEN_2 && (cCharAt = charAt(this.bp + 20)) >= '0' && cCharAt <= '9') {
                int i17 = digits[cCharAt];
                char cCharAt45 = charAt(this.bp + 21);
                if (cCharAt45 < '0' || cCharAt45 > '9') {
                    i5 = 1;
                } else {
                    i17 = (i17 * 10) + digits[cCharAt45];
                    i5 = 2;
                }
                if (i5 == 2 && (cCharAt3 = charAt(this.bp + 22)) >= '0' && cCharAt3 <= '9') {
                    i17 = (i17 * 10) + digits[cCharAt3];
                    i5 = 3;
                }
                this.calendar.set(14, i17);
                char cCharAt46 = charAt(this.bp + 20 + i5);
                if (cCharAt46 == '+' || cCharAt46 == '-') {
                    char cCharAt47 = charAt(this.bp + 20 + i5 + 1);
                    if (cCharAt47 >= '0' && cCharAt47 <= '1' && (cCharAt2 = charAt(this.bp + 20 + i5 + 2)) >= '0' && cCharAt2 <= '9') {
                        char cCharAt48 = charAt(this.bp + 20 + i5 + 3);
                        if (cCharAt48 == ':') {
                            if (charAt(this.bp + 20 + i5 + 4) != '0' || charAt(this.bp + 20 + i5 + 5) != '0') {
                                return false;
                            }
                            i6 = 6;
                        } else if (cCharAt48 != '0') {
                            i6 = 3;
                        } else {
                            if (charAt(this.bp + 20 + i5 + 4) != '0') {
                                return false;
                            }
                            i6 = 5;
                        }
                        int i18 = ((digits[cCharAt47] * 10) + digits[cCharAt2]) * 3600 * 1000;
                        if (cCharAt46 == '-') {
                            i18 = -i18;
                        }
                        if (this.calendar.getTimeZone().getRawOffset() != i18) {
                            String[] availableIDs = TimeZone.getAvailableIDs(i18);
                            if (availableIDs.length > 0) {
                                this.calendar.setTimeZone(TimeZone.getTimeZone(availableIDs[0]));
                            }
                        }
                        i7 = i6;
                    }
                } else {
                    i7 = 0;
                }
                int i19 = i5 + 20 + i7;
                char cCharAt49 = charAt(this.bp + i19);
                if (cCharAt49 != 26 && cCharAt49 != '\"') {
                    return false;
                }
                int i20 = this.bp + i19;
                this.bp = i20;
                this.ch = charAt(i20);
                this.token = 5;
                return true;
            }
            return false;
        }
        this.calendar.set(14, 0);
        int i21 = this.bp + 19;
        this.bp = i21;
        this.ch = charAt(i21);
        this.token = 5;
        return true;
    }

    private void setCalendar(char c, char c2, char c3, char c4, char c5, char c6, char c7, char c8) {
        this.calendar = Calendar.getInstance(TimeZone.getDefault(), Locale.getDefault());
        int i = (digits[c] * 1000) + (digits[c2] * 100) + (digits[c3] * 10) + digits[c4];
        int i2 = ((digits[c5] * 10) + digits[c6]) - 1;
        int i3 = (digits[c7] * 10) + digits[c8];
        this.calendar.set(1, i);
        this.calendar.set(2, i2);
        this.calendar.set(5, i3);
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    public boolean isEOF() {
        if (this.bp != this.text.length()) {
            return this.ch == 26 && this.bp + 1 == this.text.length();
        }
        return true;
    }

    @Override // com.alibaba.fastjson.parser.JSONLexerBase
    protected final void arrayCopy(int i, char[] cArr, int i2, int i3) {
        this.text.getChars(i, i3 + i, cArr, i2);
    }
}
