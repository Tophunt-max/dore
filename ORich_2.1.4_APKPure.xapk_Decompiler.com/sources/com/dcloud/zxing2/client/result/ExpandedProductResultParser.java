package com.dcloud.zxing2.client.result;

import com.dcloud.zxing2.BarcodeFormat;
import com.dcloud.zxing2.Result;
import com.taobao.weex.el.parse.Operators;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public final class ExpandedProductResultParser extends ResultParser {
    private static String findAIvalue(int i, String str) {
        if (str.charAt(i) != '(') {
            return null;
        }
        String strSubstring = str.substring(i + 1);
        StringBuilder sb = new StringBuilder();
        for (int i2 = 0; i2 < strSubstring.length(); i2++) {
            char cCharAt = strSubstring.charAt(i2);
            if (cCharAt == ')') {
                return sb.toString();
            }
            if (cCharAt < '0' || cCharAt > '9') {
                return null;
            }
            sb.append(cCharAt);
        }
        return sb.toString();
    }

    private static String findValue(int i, String str) {
        StringBuilder sb = new StringBuilder();
        String strSubstring = str.substring(i);
        for (int i2 = 0; i2 < strSubstring.length(); i2++) {
            char cCharAt = strSubstring.charAt(i2);
            if (cCharAt != '(') {
                sb.append(cCharAt);
            } else {
                if (findAIvalue(i2, strSubstring) != null) {
                    break;
                }
                sb.append(Operators.BRACKET_START);
            }
        }
        return sb.toString();
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    @Override // com.dcloud.zxing2.client.result.ResultParser
    public ExpandedProductParsedResult parse(Result result) {
        String strSubstring;
        String str;
        ExpandedProductParsedResult expandedProductParsedResult = null;
        if (result.getBarcodeFormat() != BarcodeFormat.RSS_EXPANDED) {
            return null;
        }
        String massagedText = ResultParser.getMassagedText(result);
        HashMap map = new HashMap();
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        String str11 = null;
        String strSubstring2 = null;
        String strSubstring3 = null;
        String str12 = null;
        int i = 0;
        while (i < massagedText.length()) {
            String strFindAIvalue = findAIvalue(i, massagedText);
            if (strFindAIvalue == null) {
                return expandedProductParsedResult;
            }
            char c = 2;
            int length = i + strFindAIvalue.length() + 2;
            String strFindValue = findValue(length, massagedText);
            int length2 = length + strFindValue.length();
            strFindAIvalue.hashCode();
            byte b = -1;
            int iHashCode = strFindAIvalue.hashCode();
            String str13 = strSubstring2;
            String str14 = str11;
            if (iHashCode != 1536) {
                if (iHashCode != 1537) {
                    if (iHashCode != 1567) {
                        if (iHashCode != 1568) {
                            if (iHashCode != 1570) {
                                if (iHashCode != 1572) {
                                    if (iHashCode != 1574) {
                                        switch (iHashCode) {
                                            case 1567966:
                                                if (strFindAIvalue.equals("3100")) {
                                                    c = 7;
                                                    b = c;
                                                }
                                                break;
                                            case 1567967:
                                                if (strFindAIvalue.equals("3101")) {
                                                    c = '\b';
                                                    b = c;
                                                }
                                                break;
                                            case 1567968:
                                                if (strFindAIvalue.equals("3102")) {
                                                    c = '\t';
                                                    b = c;
                                                }
                                                break;
                                            case 1567969:
                                                if (strFindAIvalue.equals("3103")) {
                                                    c = '\n';
                                                    b = c;
                                                }
                                                break;
                                            case 1567970:
                                                if (strFindAIvalue.equals("3104")) {
                                                    c = 11;
                                                    b = c;
                                                }
                                                break;
                                            case 1567971:
                                                if (strFindAIvalue.equals("3105")) {
                                                    c = '\f';
                                                    b = c;
                                                }
                                                break;
                                            case 1567972:
                                                if (strFindAIvalue.equals("3106")) {
                                                    c = '\r';
                                                    b = c;
                                                }
                                                break;
                                            case 1567973:
                                                if (strFindAIvalue.equals("3107")) {
                                                    c = 14;
                                                    b = c;
                                                }
                                                break;
                                            case 1567974:
                                                if (strFindAIvalue.equals("3108")) {
                                                    c = 15;
                                                    b = c;
                                                }
                                                break;
                                            case 1567975:
                                                if (strFindAIvalue.equals("3109")) {
                                                    c = 16;
                                                    b = c;
                                                }
                                                break;
                                            default:
                                                switch (iHashCode) {
                                                    case 1568927:
                                                        if (strFindAIvalue.equals("3200")) {
                                                            c = 17;
                                                            b = c;
                                                        }
                                                        break;
                                                    case 1568928:
                                                        if (strFindAIvalue.equals("3201")) {
                                                            c = 18;
                                                            b = c;
                                                        }
                                                        break;
                                                    case 1568929:
                                                        if (strFindAIvalue.equals("3202")) {
                                                            c = 19;
                                                            b = c;
                                                        }
                                                        break;
                                                    case 1568930:
                                                        if (strFindAIvalue.equals("3203")) {
                                                            c = 20;
                                                            b = c;
                                                        }
                                                        break;
                                                    case 1568931:
                                                        if (strFindAIvalue.equals("3204")) {
                                                            c = 21;
                                                            b = c;
                                                        }
                                                        break;
                                                    case 1568932:
                                                        if (strFindAIvalue.equals("3205")) {
                                                            c = 22;
                                                            b = c;
                                                        }
                                                        break;
                                                    case 1568933:
                                                        if (strFindAIvalue.equals("3206")) {
                                                            c = 23;
                                                            b = c;
                                                        }
                                                        break;
                                                    case 1568934:
                                                        if (strFindAIvalue.equals("3207")) {
                                                            c = 24;
                                                            b = c;
                                                        }
                                                        break;
                                                    case 1568935:
                                                        if (strFindAIvalue.equals("3208")) {
                                                            c = 25;
                                                            b = c;
                                                        }
                                                        break;
                                                    case 1568936:
                                                        if (strFindAIvalue.equals("3209")) {
                                                            c = 26;
                                                            b = c;
                                                        }
                                                        break;
                                                    default:
                                                        switch (iHashCode) {
                                                            case 1575716:
                                                                if (strFindAIvalue.equals("3920")) {
                                                                    c = 27;
                                                                    b = c;
                                                                }
                                                                break;
                                                            case 1575717:
                                                                if (strFindAIvalue.equals("3921")) {
                                                                    c = 28;
                                                                    b = c;
                                                                }
                                                                break;
                                                            case 1575718:
                                                                if (strFindAIvalue.equals("3922")) {
                                                                    c = 29;
                                                                    b = c;
                                                                }
                                                                break;
                                                            case 1575719:
                                                                if (strFindAIvalue.equals("3923")) {
                                                                    c = 30;
                                                                    b = c;
                                                                }
                                                                break;
                                                            default:
                                                                switch (iHashCode) {
                                                                    case 1575747:
                                                                        if (strFindAIvalue.equals("3930")) {
                                                                            c = 31;
                                                                            b = c;
                                                                        }
                                                                        break;
                                                                    case 1575748:
                                                                        if (strFindAIvalue.equals("3931")) {
                                                                            c = ' ';
                                                                            b = c;
                                                                        }
                                                                        break;
                                                                    case 1575749:
                                                                        if (strFindAIvalue.equals("3932")) {
                                                                            c = '!';
                                                                            b = c;
                                                                        }
                                                                        break;
                                                                    case 1575750:
                                                                        if (strFindAIvalue.equals("3933")) {
                                                                            c = '\"';
                                                                            b = c;
                                                                        }
                                                                        break;
                                                                }
                                                                break;
                                                        }
                                                        break;
                                                }
                                                break;
                                        }
                                    } else if (strFindAIvalue.equals("17")) {
                                        c = 6;
                                        b = c;
                                    }
                                } else if (strFindAIvalue.equals("15")) {
                                    c = 5;
                                    b = c;
                                }
                            } else if (strFindAIvalue.equals("13")) {
                                c = 4;
                                b = c;
                            }
                        } else if (strFindAIvalue.equals("11")) {
                            c = 3;
                            b = c;
                        }
                    } else if (strFindAIvalue.equals("10")) {
                        b = c;
                    }
                } else if (strFindAIvalue.equals("01")) {
                    c = 1;
                    b = c;
                }
            } else if (strFindAIvalue.equals("00")) {
                c = 0;
                b = c;
            }
            switch (b) {
                case 0:
                    str3 = strFindValue;
                    strSubstring2 = str13;
                    str11 = str14;
                    i = length2;
                    expandedProductParsedResult = null;
                    break;
                case 1:
                    str2 = strFindValue;
                    strSubstring2 = str13;
                    str11 = str14;
                    i = length2;
                    expandedProductParsedResult = null;
                    break;
                case 2:
                    str4 = strFindValue;
                    strSubstring2 = str13;
                    str11 = str14;
                    i = length2;
                    expandedProductParsedResult = null;
                    break;
                case 3:
                    str5 = strFindValue;
                    strSubstring2 = str13;
                    str11 = str14;
                    i = length2;
                    expandedProductParsedResult = null;
                    break;
                case 4:
                    str6 = strFindValue;
                    strSubstring2 = str13;
                    str11 = str14;
                    i = length2;
                    expandedProductParsedResult = null;
                    break;
                case 5:
                    str7 = strFindValue;
                    strSubstring2 = str13;
                    str11 = str14;
                    i = length2;
                    expandedProductParsedResult = null;
                    break;
                case 6:
                    str8 = strFindValue;
                    strSubstring2 = str13;
                    str11 = str14;
                    i = length2;
                    expandedProductParsedResult = null;
                    break;
                case 7:
                case 8:
                case 9:
                case 10:
                case 11:
                case 12:
                case 13:
                case 14:
                case 15:
                case 16:
                    strSubstring = strFindAIvalue.substring(3);
                    str = ExpandedProductParsedResult.KILOGRAM;
                    str11 = strSubstring;
                    str10 = str;
                    strSubstring2 = str13;
                    str9 = strFindValue;
                    i = length2;
                    expandedProductParsedResult = null;
                    break;
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                    strSubstring = strFindAIvalue.substring(3);
                    str = ExpandedProductParsedResult.POUND;
                    str11 = strSubstring;
                    str10 = str;
                    strSubstring2 = str13;
                    str9 = strFindValue;
                    i = length2;
                    expandedProductParsedResult = null;
                    break;
                case 27:
                case 28:
                case 29:
                case 30:
                    strSubstring3 = strFindAIvalue.substring(3);
                    strSubstring2 = strFindValue;
                    str11 = str14;
                    i = length2;
                    expandedProductParsedResult = null;
                    break;
                case 31:
                case 32:
                case 33:
                case 34:
                    if (strFindValue.length() < 4) {
                        return null;
                    }
                    strSubstring2 = strFindValue.substring(3);
                    String strSubstring4 = strFindValue.substring(0, 3);
                    strSubstring3 = strFindAIvalue.substring(3);
                    str12 = strSubstring4;
                    str11 = str14;
                    i = length2;
                    expandedProductParsedResult = null;
                    break;
                default:
                    map.put(strFindAIvalue, strFindValue);
                    strSubstring2 = str13;
                    str11 = str14;
                    i = length2;
                    expandedProductParsedResult = null;
                    break;
            }
        }
        return new ExpandedProductParsedResult(massagedText, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, strSubstring2, strSubstring3, str12, map);
    }
}
