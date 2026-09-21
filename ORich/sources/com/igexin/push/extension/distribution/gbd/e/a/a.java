package com.igexin.push.extension.distribution.gbd.e.a;

import android.content.ContentValues;
import com.alibaba.android.bindingx.core.internal.BindingXConstants;
import com.facebook.imageutils.JfifUtil;
import com.igexin.push.extension.distribution.gbd.h.a.m;
import com.igexin.push.extension.distribution.gbd.i.j;
import com.igexin.push.extension.distribution.gbd.i.k;
import com.taobao.weex.el.parse.Operators;
import io.dcloud.common.DHInterface.IApp;
import io.dcloud.common.constant.AbsoluteConst;
import org.json.JSONObject;
import org.mozilla.universalchardet.prober.CharsetProber;
import org.mozilla.universalchardet.prober.contextanalysis.EUCJPContextAnalysis;
import org.mozilla.universalchardet.prober.contextanalysis.SJISContextAnalysis;
import org.mozilla.universalchardet.prober.distributionanalysis.Big5DistributionAnalysis;
import org.mozilla.universalchardet.prober.distributionanalysis.EUCKRDistributionAnalysis;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static a f384a;
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private long E;
    private long F;
    private long G;
    private int H;
    private int I;
    private int J;
    private int K;
    private long L;
    private long M;
    private int N;
    private int O;
    private boolean P;
    private boolean Q;
    private String R;
    private String S;
    private String T;
    private String U;
    private String V;
    private String W;
    private int X;
    private String Y;
    private String Z;
    private String aA;
    private String aB;
    private long aC;
    private long aD;
    private boolean aE;
    private boolean aF;
    private int aG;
    private long aH;
    private int aI;
    private boolean aJ;
    private long aK;
    private String aL;
    private int aM;
    private long aN;
    private boolean aO;
    private String aP;
    private String aQ;
    private long aR;
    private long aS;
    private long aT;
    private boolean aU;
    private boolean aV;
    private long aW;
    private int aX;
    private String aY;
    private int aZ;
    private long aa;
    private boolean ab;
    private long ac;
    private long ad;
    private int ae;
    private int af;
    private String ag;
    private boolean ah;
    private boolean ai;
    private int aj;
    private int ak;
    private boolean al;
    private String am;
    private int an;
    private String ao;
    private boolean ap;
    private boolean aq;
    private String ar;
    private String as;
    private boolean at;
    private boolean au;
    private boolean av;
    private long aw;
    private int ax;
    private int ay;
    private String az;
    private boolean b;
    private boolean bA;
    private boolean bB;
    private boolean bC;
    private int bD;
    private String bE;
    private String bF;
    private boolean bG;
    private boolean bH;
    private String bI;
    private String bJ;
    private boolean bK;
    private String bL;
    private String bM;
    private boolean bN = true;
    private boolean bO = true;
    private boolean bP = false;
    private String bQ = "none";
    private long bR;
    private String bS;
    private int bT;
    private long bU;
    private short ba;
    private boolean bb;
    private long bc;
    private boolean bd;
    private boolean be;
    private String bf;
    private boolean bg;
    private boolean bh;
    private boolean bi;
    private boolean bj;
    private boolean bk;
    private String bl;
    private String bm;
    private boolean bn;
    private String bo;
    private String bp;
    private boolean bq;
    private int br;
    private String bs;
    private String bt;
    private int bu;
    private int bv;
    private int bw;
    private boolean bx;
    private boolean by;
    private String bz;
    private String c;
    private String d;
    private String e;
    private String f;
    private String g;
    private String h;
    private String i;
    private String j;
    private String k;
    private long l;
    private long m;
    private long n;
    private boolean o;
    private boolean p;
    private String q;
    private String r;
    private int s;
    private long t;
    private int u;
    private long v;
    private boolean w;
    private boolean x;
    private String y;
    private boolean z;

    public static synchronized a a() {
        if (f384a == null) {
            f384a = new a();
        }
        return f384a;
    }

    private void a(int i, String str) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(IApp.ConfigProperty.CONFIG_KEY, Integer.valueOf(i));
        contentValues.put("value", str);
        com.igexin.push.extension.distribution.gbd.c.c.b.a(BindingXConstants.KEY_CONFIG, (String) null, contentValues);
    }

    private void a(int i, byte[] bArr) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(IApp.ConfigProperty.CONFIG_KEY, Integer.valueOf(i));
        contentValues.put("value", bArr);
        com.igexin.push.extension.distribution.gbd.c.c.b.a(BindingXConstants.KEY_CONFIG, (String) null, contentValues);
    }

    private void c() {
        j.a("GBD_ConfigDataManager", "saveAllData");
        boolean z = com.igexin.push.extension.distribution.gbd.c.a.b;
        boolean z2 = this.b;
        if (z != z2) {
            com.igexin.push.extension.distribution.gbd.c.a.b = z2;
            a(0, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.b));
        }
        boolean z3 = com.igexin.push.extension.distribution.gbd.c.a.M;
        boolean z4 = this.Q;
        if (z3 != z4) {
            com.igexin.push.extension.distribution.gbd.c.a.M = z4;
            a(191, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.M));
        }
        boolean z5 = com.igexin.push.extension.distribution.gbd.c.a.i;
        boolean z6 = this.bH;
        if (z5 != z6) {
            com.igexin.push.extension.distribution.gbd.c.a.i = z6;
            a(141, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.i));
        }
        boolean z7 = com.igexin.push.extension.distribution.gbd.c.a.bL;
        boolean z8 = this.bK;
        if (z7 != z8) {
            com.igexin.push.extension.distribution.gbd.c.a.bL = z8;
            a(148, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bL));
        }
        boolean z9 = com.igexin.push.extension.distribution.gbd.c.a.as;
        boolean z10 = this.z;
        if (z9 != z10) {
            com.igexin.push.extension.distribution.gbd.c.a.as = z10;
            a(186, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.as));
        }
        boolean z11 = com.igexin.push.extension.distribution.gbd.c.a.ai;
        boolean z12 = this.o;
        if (z11 != z12) {
            com.igexin.push.extension.distribution.gbd.c.a.ai = z12;
            a(177, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.ai));
        }
        boolean z13 = com.igexin.push.extension.distribution.gbd.c.a.aj;
        boolean z14 = this.p;
        if (z13 != z14) {
            com.igexin.push.extension.distribution.gbd.c.a.aj = z14;
            a(178, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.aj));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.ak.equals(this.q)) {
            com.igexin.push.extension.distribution.gbd.c.a.ak = this.q;
            a(179, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.ak.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.al.equals(this.h)) {
            com.igexin.push.extension.distribution.gbd.c.a.al = this.h;
            a(190, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.al.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.am.equals(this.r)) {
            com.igexin.push.extension.distribution.gbd.c.a.am = this.r;
            a(180, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.am.getBytes()));
        }
        int i = com.igexin.push.extension.distribution.gbd.c.a.an;
        int i2 = this.u;
        if (i != i2) {
            com.igexin.push.extension.distribution.gbd.c.a.an = i2;
            a(181, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.an));
        }
        long j = com.igexin.push.extension.distribution.gbd.c.a.ao;
        long j2 = this.v;
        if (j != j2) {
            com.igexin.push.extension.distribution.gbd.c.a.ao = j2;
            a(182, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.ao));
        }
        boolean z15 = com.igexin.push.extension.distribution.gbd.c.a.ap;
        boolean z16 = this.w;
        if (z15 != z16) {
            com.igexin.push.extension.distribution.gbd.c.a.ap = z16;
            a(183, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.ap));
        }
        boolean z17 = com.igexin.push.extension.distribution.gbd.c.a.aq;
        boolean z18 = this.x;
        if (z17 != z18) {
            com.igexin.push.extension.distribution.gbd.c.a.aq = z18;
            a(184, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.aq));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.ar.equals(this.y)) {
            com.igexin.push.extension.distribution.gbd.c.a.ar = this.y;
            a(185, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.ar.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.x.equals(this.j)) {
            com.igexin.push.extension.distribution.gbd.c.a.x = this.j;
            a(162, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.x.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.bD.equals(this.k)) {
            com.igexin.push.extension.distribution.gbd.c.a.bD = this.k;
            a(187, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.bD.getBytes()));
        }
        long j3 = com.igexin.push.extension.distribution.gbd.c.a.bE;
        long j4 = this.l;
        if (j3 != j4) {
            com.igexin.push.extension.distribution.gbd.c.a.bE = j4;
            a(188, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bE));
        }
        long j5 = com.igexin.push.extension.distribution.gbd.c.a.bF;
        long j6 = this.m;
        if (j5 != j6) {
            com.igexin.push.extension.distribution.gbd.c.a.bF = j6;
            a(189, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bF));
        }
        long j7 = com.igexin.push.extension.distribution.gbd.c.a.y;
        long j8 = this.n;
        if (j7 != j8) {
            com.igexin.push.extension.distribution.gbd.c.a.y = j8;
            a(163, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.y));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.I.equals(this.bL)) {
            com.igexin.push.extension.distribution.gbd.c.a.I = this.bL;
            a(149, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.I.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.bJ.equals(this.bJ)) {
            com.igexin.push.extension.distribution.gbd.c.a.bJ = this.bJ;
            a(147, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.bJ.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.j.equals(this.bI)) {
            com.igexin.push.extension.distribution.gbd.c.a.j = this.bI;
            a(EUCJPContextAnalysis.SINGLE_SHIFT_3, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.j.getBytes()));
        }
        boolean z19 = com.igexin.push.extension.distribution.gbd.c.a.bw;
        boolean z20 = this.D;
        if (z19 != z20) {
            com.igexin.push.extension.distribution.gbd.c.a.bw = z20;
            a(144, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bw));
        }
        boolean z21 = com.igexin.push.extension.distribution.gbd.c.a.bM;
        boolean z22 = this.bx;
        if (z21 != z22) {
            com.igexin.push.extension.distribution.gbd.c.a.bM = z22;
            a(127, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bM));
        }
        boolean z23 = com.igexin.push.extension.distribution.gbd.c.a.bN;
        boolean z24 = this.by;
        if (z23 != z24) {
            com.igexin.push.extension.distribution.gbd.c.a.bN = z24;
            a(128, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bN));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.bO.equals(this.bz)) {
            com.igexin.push.extension.distribution.gbd.c.a.bO = this.bz;
            a(129, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.bO.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.bo.equals(this.bf)) {
            com.igexin.push.extension.distribution.gbd.c.a.bo = this.bf;
            a(EUCKRDistributionAnalysis.HIGHBYTE_BEGIN, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.bo.getBytes()));
        }
        boolean z25 = com.igexin.push.extension.distribution.gbd.c.a.bP;
        boolean z26 = this.bA;
        if (z25 != z26) {
            com.igexin.push.extension.distribution.gbd.c.a.bP = z26;
            a(SJISContextAnalysis.HIRAGANA_HIGHBYTE, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bP));
        }
        boolean z27 = com.igexin.push.extension.distribution.gbd.c.a.bQ;
        boolean z28 = this.bB;
        if (z27 != z28) {
            com.igexin.push.extension.distribution.gbd.c.a.bQ = z28;
            a(131, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bQ));
        }
        boolean z29 = com.igexin.push.extension.distribution.gbd.c.a.bR;
        boolean z30 = this.bG;
        if (z29 != z30) {
            com.igexin.push.extension.distribution.gbd.c.a.bR = z30;
            a(136, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bR));
        }
        boolean z31 = com.igexin.push.extension.distribution.gbd.c.a.bS;
        boolean z32 = this.bC;
        if (z31 != z32) {
            com.igexin.push.extension.distribution.gbd.c.a.bS = z32;
            a(132, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bS));
        }
        int i3 = com.igexin.push.extension.distribution.gbd.c.a.bT;
        int i4 = this.bD;
        if (i3 != i4) {
            com.igexin.push.extension.distribution.gbd.c.a.bT = i4;
            a(133, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bT));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.bU.equals(this.bE)) {
            com.igexin.push.extension.distribution.gbd.c.a.bU = this.bE;
            a(134, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.bU.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.bV.equals(this.bF)) {
            com.igexin.push.extension.distribution.gbd.c.a.bV = this.bF;
            a(135, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.bV.getBytes()));
        }
        int i5 = com.igexin.push.extension.distribution.gbd.c.a.bI;
        int i6 = this.bw;
        if (i5 != i6) {
            com.igexin.push.extension.distribution.gbd.c.a.bI = i6;
            a(Big5DistributionAnalysis.LOWBYTE_END_1, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bI));
        }
        int i7 = com.igexin.push.extension.distribution.gbd.c.a.bG;
        int i8 = this.bu;
        if (i7 != i8) {
            com.igexin.push.extension.distribution.gbd.c.a.bG = i8;
            a(124, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bG));
        }
        int i9 = com.igexin.push.extension.distribution.gbd.c.a.bH;
        int i10 = this.bv;
        if (i9 != i10) {
            com.igexin.push.extension.distribution.gbd.c.a.bH = i10;
            a(125, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bH));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.F.equals(this.R)) {
            com.igexin.push.extension.distribution.gbd.c.a.F = this.R;
            a(145, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.F.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.G.equals(this.S)) {
            com.igexin.push.extension.distribution.gbd.c.a.G = this.S;
            a(146, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.G.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.bC.equals(this.bt)) {
            com.igexin.push.extension.distribution.gbd.c.a.bC = this.bt;
            a(123, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.bC.getBytes()));
        }
        int i11 = com.igexin.push.extension.distribution.gbd.c.a.bA;
        int i12 = this.br;
        if (i11 != i12) {
            com.igexin.push.extension.distribution.gbd.c.a.bA = i12;
            a(121, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bA));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.bB.equals(this.bs)) {
            com.igexin.push.extension.distribution.gbd.c.a.bB = this.bs;
            a(CharsetProber.ASCII_Z, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.bB.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.bx.equals(this.bo)) {
            com.igexin.push.extension.distribution.gbd.c.a.bx = this.bo;
            a(118, com.igexin.push.extension.distribution.gbd.c.a.bx);
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.by.equals(this.bp)) {
            com.igexin.push.extension.distribution.gbd.c.a.by = this.bp;
            a(119, com.igexin.push.extension.distribution.gbd.c.a.by);
        }
        boolean z33 = com.igexin.push.extension.distribution.gbd.c.a.bz;
        boolean z34 = this.bq;
        if (z33 != z34) {
            com.igexin.push.extension.distribution.gbd.c.a.bz = z34;
            a(120, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bz));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.bi.equals(this.aY)) {
            com.igexin.push.extension.distribution.gbd.c.a.bi = this.aY;
            a(100, com.igexin.push.extension.distribution.gbd.c.a.bi);
        }
        int i13 = com.igexin.push.extension.distribution.gbd.c.a.bj;
        int i14 = this.aZ;
        if (i13 != i14) {
            com.igexin.push.extension.distribution.gbd.c.a.bj = i14;
            a(104, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bj));
        }
        short s = com.igexin.push.extension.distribution.gbd.c.a.bk;
        short s2 = this.ba;
        if (s != s2) {
            com.igexin.push.extension.distribution.gbd.c.a.bk = s2;
            a(105, String.valueOf((int) this.ba));
        }
        boolean z35 = com.igexin.push.extension.distribution.gbd.c.a.P;
        boolean z36 = this.bb;
        if (z35 != z36) {
            com.igexin.push.extension.distribution.gbd.c.a.P = z36;
            a(65, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.P));
        }
        long j9 = com.igexin.push.extension.distribution.gbd.c.a.R;
        long j10 = this.bc;
        if (j9 != j10) {
            com.igexin.push.extension.distribution.gbd.c.a.R = j10;
            a(68, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.R));
        }
        long j11 = com.igexin.push.extension.distribution.gbd.c.a.bK;
        long j12 = this.L;
        if (j11 != j12) {
            com.igexin.push.extension.distribution.gbd.c.a.bK = j12;
            a(161, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bK));
        }
        long j13 = com.igexin.push.extension.distribution.gbd.c.a.m;
        long j14 = this.F;
        if (j13 != j14) {
            com.igexin.push.extension.distribution.gbd.c.a.m = j14;
            a(150, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.m));
        }
        long j15 = com.igexin.push.extension.distribution.gbd.c.a.aK;
        long j16 = this.aR;
        if (j15 != j16) {
            com.igexin.push.extension.distribution.gbd.c.a.aK = j16;
            a(93, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.aK));
        }
        long j17 = com.igexin.push.extension.distribution.gbd.c.a.aJ;
        long j18 = this.aS;
        if (j17 != j18) {
            com.igexin.push.extension.distribution.gbd.c.a.aJ = j18;
            a(94, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.aJ));
        }
        long j19 = com.igexin.push.extension.distribution.gbd.c.a.aL;
        long j20 = this.aT;
        if (j19 != j20) {
            com.igexin.push.extension.distribution.gbd.c.a.aL = j20;
            a(95, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.aL));
        }
        boolean z37 = com.igexin.push.extension.distribution.gbd.c.a.aM;
        boolean z38 = this.aU;
        if (z37 != z38) {
            com.igexin.push.extension.distribution.gbd.c.a.aM = z38;
            a(96, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.aM));
        }
        boolean z39 = com.igexin.push.extension.distribution.gbd.c.a.aN;
        boolean z40 = this.aV;
        if (z39 != z40) {
            com.igexin.push.extension.distribution.gbd.c.a.aN = z40;
            a(97, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.aN));
        }
        long j21 = com.igexin.push.extension.distribution.gbd.c.a.aO;
        long j22 = this.aW;
        if (j21 != j22) {
            com.igexin.push.extension.distribution.gbd.c.a.aO = j22;
            a(98, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.aO));
        }
        int i15 = com.igexin.push.extension.distribution.gbd.c.a.aP;
        int i16 = this.aX;
        if (i15 != i16) {
            com.igexin.push.extension.distribution.gbd.c.a.aP = i16;
            a(99, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.aP));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.d.equals(this.i)) {
            com.igexin.push.extension.distribution.gbd.c.a.d = this.i;
            a(139, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.d.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.c.equals(this.c)) {
            com.igexin.push.extension.distribution.gbd.c.a.c = this.c;
            a(1, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.c.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.e.equals(this.d)) {
            com.igexin.push.extension.distribution.gbd.c.a.e = this.d;
            a(2, com.igexin.b.b.a.b(this.d.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.f.equals(this.e)) {
            com.igexin.push.extension.distribution.gbd.c.a.f = this.e;
            a(89, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.f.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.g.equals(this.f)) {
            com.igexin.push.extension.distribution.gbd.c.a.g = this.f;
            a(137, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.g.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.h.equals(this.g)) {
            com.igexin.push.extension.distribution.gbd.c.a.h = this.g;
            a(138, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.h.getBytes()));
        }
        boolean z41 = com.igexin.push.extension.distribution.gbd.c.a.k;
        boolean z42 = this.A;
        if (z41 != z42) {
            com.igexin.push.extension.distribution.gbd.c.a.k = z42;
            a(3, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.k));
        }
        boolean z43 = com.igexin.push.extension.distribution.gbd.c.a.n;
        boolean z44 = this.B;
        if (z43 != z44) {
            com.igexin.push.extension.distribution.gbd.c.a.n = z44;
            a(140, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.n));
        }
        boolean z45 = com.igexin.push.extension.distribution.gbd.c.a.o;
        boolean z46 = this.C;
        if (z45 != z46) {
            com.igexin.push.extension.distribution.gbd.c.a.o = z46;
            a(172, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.o));
        }
        long j23 = com.igexin.push.extension.distribution.gbd.c.a.l;
        long j24 = this.E;
        if (j23 != j24) {
            com.igexin.push.extension.distribution.gbd.c.a.l = j24;
            a(4, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.l));
            com.igexin.push.extension.distribution.gbd.h.a.j.e().f();
        }
        long j25 = com.igexin.push.extension.distribution.gbd.c.a.p;
        long j26 = this.G;
        if (j25 != j26) {
            com.igexin.push.extension.distribution.gbd.c.a.p = j26;
            a(5, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.p));
            m.e().f();
        }
        int i17 = com.igexin.push.extension.distribution.gbd.c.a.q;
        int i18 = this.H;
        if (i17 != i18) {
            com.igexin.push.extension.distribution.gbd.c.a.q = i18;
            a(6, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.q));
        }
        int i19 = com.igexin.push.extension.distribution.gbd.c.a.r;
        int i20 = this.I;
        if (i19 != i20) {
            com.igexin.push.extension.distribution.gbd.c.a.r = i20;
            a(7, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.r));
        }
        int i21 = com.igexin.push.extension.distribution.gbd.c.a.s;
        int i22 = this.J;
        if (i21 != i22) {
            com.igexin.push.extension.distribution.gbd.c.a.s = i22;
            a(8, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.s));
        }
        int i23 = com.igexin.push.extension.distribution.gbd.c.a.t;
        int i24 = this.K;
        if (i23 != i24) {
            com.igexin.push.extension.distribution.gbd.c.a.t = i24;
            a(9, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.t));
        }
        long j27 = com.igexin.push.extension.distribution.gbd.c.a.u;
        long j28 = this.M;
        if (j27 != j28) {
            com.igexin.push.extension.distribution.gbd.c.a.u = j28;
            a(10, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.u));
        }
        int i25 = com.igexin.push.extension.distribution.gbd.c.a.v;
        int i26 = this.N;
        if (i25 != i26) {
            com.igexin.push.extension.distribution.gbd.c.a.v = i26;
            a(11, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.v));
        }
        int i27 = com.igexin.push.extension.distribution.gbd.c.a.z;
        int i28 = this.O;
        if (i27 != i28) {
            com.igexin.push.extension.distribution.gbd.c.a.z = i28;
            a(12, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.z));
        }
        boolean z47 = !com.igexin.push.extension.distribution.gbd.c.a.B;
        boolean z48 = this.P;
        if (z47 == z48) {
            com.igexin.push.extension.distribution.gbd.c.a.B = z48;
            a(14, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.B));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.C.equals(this.U)) {
            com.igexin.push.extension.distribution.gbd.c.a.C = this.U;
            a(15, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.C.getBytes()));
        }
        int i29 = com.igexin.push.extension.distribution.gbd.c.a.E;
        int i30 = this.X;
        if (i29 != i30) {
            com.igexin.push.extension.distribution.gbd.c.a.E = i30;
            a(16, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.E));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.J.equals(this.Z)) {
            com.igexin.push.extension.distribution.gbd.c.a.J = this.Z;
            a(18, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.J.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.H.equals(this.Y)) {
            com.igexin.push.extension.distribution.gbd.c.a.H = this.Y;
            a(17, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.H.getBytes()));
        }
        long j29 = com.igexin.push.extension.distribution.gbd.c.a.K;
        long j30 = this.aa;
        if (j29 != j30) {
            com.igexin.push.extension.distribution.gbd.c.a.K = j30;
            a(19, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.K));
        }
        boolean z49 = !com.igexin.push.extension.distribution.gbd.c.a.A;
        boolean z50 = this.ab;
        if (z49 == z50) {
            com.igexin.push.extension.distribution.gbd.c.a.A = z50;
            a(20, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.A));
        }
        long j31 = com.igexin.push.extension.distribution.gbd.c.a.N;
        long j32 = this.ac;
        if (j31 != j32) {
            com.igexin.push.extension.distribution.gbd.c.a.N = j32;
            a(21, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.N));
            com.igexin.push.extension.distribution.gbd.h.a.e.e().a(System.currentTimeMillis());
            com.igexin.push.extension.distribution.gbd.h.a.e.e().f();
        }
        long j33 = com.igexin.push.extension.distribution.gbd.c.a.w;
        long j34 = this.ad;
        if (j33 != j34) {
            com.igexin.push.extension.distribution.gbd.c.a.w = j34;
            a(22, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.w));
        }
        int i31 = com.igexin.push.extension.distribution.gbd.c.a.S;
        int i32 = this.ae;
        if (i31 != i32) {
            com.igexin.push.extension.distribution.gbd.c.a.S = i32;
            a(27, String.valueOf(this.ae));
        }
        int i33 = com.igexin.push.extension.distribution.gbd.c.a.T;
        int i34 = this.af;
        if (i33 != i34) {
            com.igexin.push.extension.distribution.gbd.c.a.T = i34;
            a(28, String.valueOf(this.af));
        }
        boolean z51 = com.igexin.push.extension.distribution.gbd.c.a.X;
        boolean z52 = this.ah;
        if (z51 != z52) {
            com.igexin.push.extension.distribution.gbd.c.a.X = z52;
            a(30, String.valueOf(this.ah));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.U.equals(this.ag)) {
            com.igexin.push.extension.distribution.gbd.c.a.U = this.ag;
            a(29, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.U.getBytes()));
        }
        boolean z53 = com.igexin.push.extension.distribution.gbd.c.a.ac;
        boolean z54 = this.ai;
        if (z53 != z54) {
            com.igexin.push.extension.distribution.gbd.c.a.ac = z54;
            a(31, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.ac));
        }
        int i35 = com.igexin.push.extension.distribution.gbd.c.a.ad;
        int i36 = this.aj;
        if (i35 != i36) {
            com.igexin.push.extension.distribution.gbd.c.a.ad = i36;
            a(32, String.valueOf(this.aj));
        }
        int i37 = com.igexin.push.extension.distribution.gbd.c.a.ae;
        int i38 = this.ak;
        if (i37 != i38) {
            com.igexin.push.extension.distribution.gbd.c.a.ae = i38;
            a(33, String.valueOf(this.ak));
        }
        boolean z55 = com.igexin.push.extension.distribution.gbd.c.a.Y;
        boolean z56 = this.al;
        if (z55 != z56) {
            com.igexin.push.extension.distribution.gbd.c.a.Y = z56;
            a(34, String.valueOf(this.al));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.aa.equals(this.am)) {
            com.igexin.push.extension.distribution.gbd.c.a.aa = this.am;
            a(35, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.aa.getBytes()));
        }
        int i39 = com.igexin.push.extension.distribution.gbd.c.a.Z;
        int i40 = this.an;
        if (i39 != i40) {
            com.igexin.push.extension.distribution.gbd.c.a.Z = i40;
            a(36, String.valueOf(this.an));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.D.equals(this.ao)) {
            com.igexin.push.extension.distribution.gbd.c.a.D = this.ao;
            a(38, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.D.getBytes()));
        }
        boolean z57 = com.igexin.push.extension.distribution.gbd.c.a.af;
        boolean z58 = this.ap;
        if (z57 != z58) {
            com.igexin.push.extension.distribution.gbd.c.a.af = z58;
            a(39, String.valueOf(this.ap));
        }
        boolean z59 = com.igexin.push.extension.distribution.gbd.c.a.ag;
        boolean z60 = this.aq;
        if (z59 != z60) {
            com.igexin.push.extension.distribution.gbd.c.a.ag = z60;
            a(170, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.ag));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.ah.equals(this.ar)) {
            com.igexin.push.extension.distribution.gbd.c.a.ah = this.ar;
            a(171, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.ah.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.V.equals(this.as)) {
            com.igexin.push.extension.distribution.gbd.c.a.V = this.as;
            a(41, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.V.getBytes()));
        }
        boolean z61 = com.igexin.push.extension.distribution.gbd.c.a.at;
        boolean z62 = this.at;
        if (z61 != z62) {
            com.igexin.push.extension.distribution.gbd.c.a.at = z62;
            a(44, String.valueOf(this.at));
        }
        boolean z63 = com.igexin.push.extension.distribution.gbd.c.a.W;
        boolean z64 = this.au;
        if (z63 != z64) {
            com.igexin.push.extension.distribution.gbd.c.a.W = z64;
            a(46, String.valueOf(this.au));
        }
        boolean z65 = com.igexin.push.extension.distribution.gbd.c.a.au;
        boolean z66 = this.av;
        if (z65 != z66) {
            com.igexin.push.extension.distribution.gbd.c.a.au = z66;
            a(48, String.valueOf(this.av));
        }
        long j35 = com.igexin.push.extension.distribution.gbd.c.a.av;
        long j36 = this.aw;
        if (j35 != j36) {
            com.igexin.push.extension.distribution.gbd.c.a.av = j36;
            a(49, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.av));
        }
        int i41 = com.igexin.push.extension.distribution.gbd.c.a.aw;
        int i42 = this.ax;
        if (i41 != i42) {
            com.igexin.push.extension.distribution.gbd.c.a.aw = i42;
            a(50, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.aw));
        }
        int i43 = com.igexin.push.extension.distribution.gbd.c.a.ax;
        int i44 = this.ay;
        if (i43 != i44) {
            com.igexin.push.extension.distribution.gbd.c.a.ax = i44;
            a(52, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.ax));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.ay.equals(this.az)) {
            com.igexin.push.extension.distribution.gbd.c.a.ay = this.az;
            a(53, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.ay.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.az.equals(this.aA)) {
            com.igexin.push.extension.distribution.gbd.c.a.az = this.aA;
            a(70, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.az.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.aA.equals(this.V)) {
            com.igexin.push.extension.distribution.gbd.c.a.aA = this.V;
            a(174, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.aA.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.aB.equals(this.W)) {
            k.q();
            com.igexin.push.extension.distribution.gbd.c.a.aB = this.W;
            a(175, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.aB.getBytes()));
        }
        long j37 = com.igexin.push.extension.distribution.gbd.c.a.aF;
        long j38 = this.aC;
        if (j37 != j38) {
            com.igexin.push.extension.distribution.gbd.c.a.aF = j38;
            a(55, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.aF));
        }
        long j39 = com.igexin.push.extension.distribution.gbd.c.a.aG;
        long j40 = this.aD;
        if (j39 != j40) {
            com.igexin.push.extension.distribution.gbd.c.a.aG = j40;
            a(56, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.aG));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.aE.equals(this.aB)) {
            com.igexin.push.extension.distribution.gbd.c.a.aE = this.aB;
            a(54, com.igexin.push.extension.distribution.gbd.c.a.aE);
        }
        boolean z67 = com.igexin.push.extension.distribution.gbd.c.a.aH;
        boolean z68 = this.aE;
        if (z67 != z68) {
            com.igexin.push.extension.distribution.gbd.c.a.aH = z68;
            a(57, String.valueOf(this.aE));
        }
        boolean z69 = com.igexin.push.extension.distribution.gbd.c.a.aI;
        boolean z70 = this.aF;
        if (z69 != z70) {
            com.igexin.push.extension.distribution.gbd.c.a.aI = z70;
            a(87, String.valueOf(this.aF));
        }
        int i45 = com.igexin.push.extension.distribution.gbd.c.a.f371a;
        int i46 = this.aG;
        if (i45 != i46) {
            com.igexin.push.extension.distribution.gbd.c.a.f371a = i46;
            a(88, String.valueOf(this.aG));
        }
        long j41 = com.igexin.push.extension.distribution.gbd.c.a.aT;
        long j42 = this.aH;
        if (j41 != j42) {
            com.igexin.push.extension.distribution.gbd.c.a.aT = j42;
            a(61, String.valueOf(this.aH));
        }
        int i47 = com.igexin.push.extension.distribution.gbd.c.a.aU;
        int i48 = this.aI;
        if (i47 != i48) {
            com.igexin.push.extension.distribution.gbd.c.a.aU = i48;
            a(63, String.valueOf(this.aI));
        }
        boolean z71 = com.igexin.push.extension.distribution.gbd.c.a.O;
        boolean z72 = this.aJ;
        if (z71 != z72) {
            com.igexin.push.extension.distribution.gbd.c.a.O = z72;
            a(64, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.O));
        }
        long j43 = com.igexin.push.extension.distribution.gbd.c.a.Q;
        long j44 = this.aK;
        if (j43 != j44) {
            com.igexin.push.extension.distribution.gbd.c.a.Q = j44;
            a(67, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.Q));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.aV.equals(this.aL)) {
            com.igexin.push.extension.distribution.gbd.c.a.aV = this.aL;
            a(71, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.aV.getBytes()));
        }
        if (com.igexin.push.extension.distribution.gbd.c.a.aW != this.aM) {
            a(true);
            com.igexin.push.extension.distribution.gbd.c.a.aW = this.aM;
            a(72, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.aW));
        }
        long j45 = com.igexin.push.extension.distribution.gbd.c.a.aQ;
        long j46 = this.aN;
        if (j45 != j46) {
            com.igexin.push.extension.distribution.gbd.c.a.aQ = j46;
            a(73, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.aQ));
        }
        boolean z73 = com.igexin.push.extension.distribution.gbd.c.a.aR;
        boolean z74 = this.aO;
        if (z73 != z74) {
            com.igexin.push.extension.distribution.gbd.c.a.aR = z74;
            a(74, String.valueOf(this.aO));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.aS.equals(this.aP)) {
            com.igexin.push.extension.distribution.gbd.c.a.aS = this.aP;
            a(75, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.aS.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.aC.equals(this.bM)) {
            com.igexin.push.extension.distribution.gbd.c.a.aC = this.bM;
            a(77, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.aC.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.aD.equals(this.T)) {
            com.igexin.push.extension.distribution.gbd.c.a.aD = this.T;
            a(EUCJPContextAnalysis.SINGLE_SHIFT_2, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.aD.getBytes()));
        }
        boolean z75 = com.igexin.push.extension.distribution.gbd.c.a.aY;
        boolean z76 = this.bN;
        if (z75 != z76) {
            com.igexin.push.extension.distribution.gbd.c.a.aY = z76;
            a(78, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.aY));
        }
        boolean z77 = com.igexin.push.extension.distribution.gbd.c.a.aZ;
        boolean z78 = this.bO;
        if (z77 != z78) {
            com.igexin.push.extension.distribution.gbd.c.a.aZ = z78;
            a(79, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.aZ));
        }
        boolean z79 = com.igexin.push.extension.distribution.gbd.c.a.ba;
        boolean z80 = this.bP;
        if (z79 != z80) {
            com.igexin.push.extension.distribution.gbd.c.a.ba = z80;
            a(80, String.valueOf(this.bP));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.bb.equals(this.bQ)) {
            com.igexin.push.extension.distribution.gbd.c.a.bb = this.bQ;
            a(81, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.bb.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.bc.equals(this.aQ)) {
            com.igexin.push.extension.distribution.gbd.c.a.bc = this.aQ;
            a(85, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.bc.getBytes()));
        }
        long j47 = com.igexin.push.extension.distribution.gbd.c.a.L;
        long j48 = this.bR;
        if (j47 != j48) {
            com.igexin.push.extension.distribution.gbd.c.a.L = j48;
            a(86, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.L));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.bd.equals(this.bS)) {
            com.igexin.push.extension.distribution.gbd.c.a.bd = this.bS;
            a(90, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.bd.getBytes()));
        }
        int i49 = com.igexin.push.extension.distribution.gbd.c.a.be;
        int i50 = this.bT;
        if (i49 != i50) {
            com.igexin.push.extension.distribution.gbd.c.a.be = i50;
            a(91, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.be));
        }
        long j49 = com.igexin.push.extension.distribution.gbd.c.a.bg;
        long j50 = this.bU;
        if (j49 != j50) {
            com.igexin.push.extension.distribution.gbd.c.a.bg = j50;
            a(92, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bg));
        }
        int i51 = com.igexin.push.extension.distribution.gbd.c.a.bf;
        int i52 = this.s;
        if (i51 != i52) {
            com.igexin.push.extension.distribution.gbd.c.a.bf = i52;
            a(JfifUtil.MARKER_SOFn, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bf));
        }
        long j51 = com.igexin.push.extension.distribution.gbd.c.a.bh;
        long j52 = this.t;
        if (j51 != j52) {
            com.igexin.push.extension.distribution.gbd.c.a.bh = j52;
            a(193, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bh));
        }
        boolean z81 = com.igexin.push.extension.distribution.gbd.c.a.bm;
        boolean z82 = this.bd;
        if (z81 != z82) {
            com.igexin.push.extension.distribution.gbd.c.a.bm = z82;
            a(106, String.valueOf(this.bd));
        }
        boolean z83 = com.igexin.push.extension.distribution.gbd.c.a.bn;
        boolean z84 = this.be;
        if (z83 != z84) {
            com.igexin.push.extension.distribution.gbd.c.a.bn = z84;
            a(173, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bn));
        }
        boolean z85 = com.igexin.push.extension.distribution.gbd.c.a.bl;
        boolean z86 = this.bg;
        if (z85 != z86) {
            com.igexin.push.extension.distribution.gbd.c.a.bl = z86;
            a(110, String.valueOf(this.bg));
        }
        boolean z87 = com.igexin.push.extension.distribution.gbd.c.a.bp;
        boolean z88 = this.bh;
        if (z87 != z88) {
            com.igexin.push.extension.distribution.gbd.c.a.bp = z88;
            a(111, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bp));
        }
        boolean z89 = com.igexin.push.extension.distribution.gbd.c.a.bq;
        boolean z90 = this.bi;
        if (z89 != z90) {
            com.igexin.push.extension.distribution.gbd.c.a.bq = z90;
            a(112, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bq));
        }
        boolean z91 = com.igexin.push.extension.distribution.gbd.c.a.br;
        boolean z92 = this.bj;
        if (z91 != z92) {
            com.igexin.push.extension.distribution.gbd.c.a.br = z92;
            a(113, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.br));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.bs.equals(this.bl)) {
            com.igexin.push.extension.distribution.gbd.c.a.bs = this.bl;
            a(115, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.bs.getBytes()));
        }
        if (!com.igexin.push.extension.distribution.gbd.c.a.bt.equals(this.bm)) {
            com.igexin.push.extension.distribution.gbd.c.a.bt = this.bm;
            a(117, com.igexin.b.b.a.b(com.igexin.push.extension.distribution.gbd.c.a.bt.getBytes()));
        }
        boolean z93 = com.igexin.push.extension.distribution.gbd.c.a.bu;
        boolean z94 = this.bk;
        if (z93 != z94) {
            com.igexin.push.extension.distribution.gbd.c.a.bu = z94;
            a(114, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bu));
        }
        boolean z95 = com.igexin.push.extension.distribution.gbd.c.a.bv;
        boolean z96 = this.bn;
        if (z95 != z96) {
            com.igexin.push.extension.distribution.gbd.c.a.bv = z96;
            a(116, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.bv));
        }
    }

    public void a(String str) {
        if (str == null || com.igexin.push.extension.distribution.gbd.c.a.ab.equals(str)) {
            return;
        }
        com.igexin.push.extension.distribution.gbd.c.a.ab = str;
        a(160, com.igexin.b.b.a.b(str.getBytes()));
    }

    public void a(boolean z) {
        com.igexin.push.extension.distribution.gbd.c.a.aX = z;
        a(76, String.valueOf(com.igexin.push.extension.distribution.gbd.c.a.aX));
    }

    public void a(byte[] bArr) {
        String str;
        int i;
        try {
            JSONObject jSONObject = new JSONObject(new String(bArr));
            j.b("GBD_ConfigDataManager", "parse = " + jSONObject);
            if (!jSONObject.has("result") || !"ok".equals(jSONObject.getString("result"))) {
                return;
            }
            this.b = com.igexin.push.extension.distribution.gbd.c.a.b;
            this.bK = com.igexin.push.extension.distribution.gbd.c.a.bL;
            str = "GBD_ConfigDataManager";
            try {
                this.n = com.igexin.push.extension.distribution.gbd.c.a.y;
                this.j = com.igexin.push.extension.distribution.gbd.c.a.x;
                this.k = com.igexin.push.extension.distribution.gbd.c.a.bD;
                this.l = com.igexin.push.extension.distribution.gbd.c.a.bE;
                this.m = com.igexin.push.extension.distribution.gbd.c.a.bF;
                this.bx = com.igexin.push.extension.distribution.gbd.c.a.bM;
                this.Q = com.igexin.push.extension.distribution.gbd.c.a.M;
                this.by = com.igexin.push.extension.distribution.gbd.c.a.bN;
                this.bJ = com.igexin.push.extension.distribution.gbd.c.a.bJ;
                this.bz = com.igexin.push.extension.distribution.gbd.c.a.bO;
                this.bA = com.igexin.push.extension.distribution.gbd.c.a.bP;
                this.bB = com.igexin.push.extension.distribution.gbd.c.a.bQ;
                this.bG = com.igexin.push.extension.distribution.gbd.c.a.bR;
                this.bC = com.igexin.push.extension.distribution.gbd.c.a.bS;
                this.V = com.igexin.push.extension.distribution.gbd.c.a.aA;
                this.W = com.igexin.push.extension.distribution.gbd.c.a.aB;
                this.L = com.igexin.push.extension.distribution.gbd.c.a.bK;
                this.bD = com.igexin.push.extension.distribution.gbd.c.a.bT;
                this.bE = com.igexin.push.extension.distribution.gbd.c.a.bU;
                this.bF = com.igexin.push.extension.distribution.gbd.c.a.bV;
                this.bt = com.igexin.push.extension.distribution.gbd.c.a.bC;
                this.bu = com.igexin.push.extension.distribution.gbd.c.a.bG;
                this.bv = com.igexin.push.extension.distribution.gbd.c.a.bH;
                this.bs = com.igexin.push.extension.distribution.gbd.c.a.bB;
                this.R = com.igexin.push.extension.distribution.gbd.c.a.F;
                this.S = com.igexin.push.extension.distribution.gbd.c.a.G;
                this.aR = com.igexin.push.extension.distribution.gbd.c.a.aK;
                this.aS = com.igexin.push.extension.distribution.gbd.c.a.aJ;
                this.aT = com.igexin.push.extension.distribution.gbd.c.a.aL;
                this.aU = com.igexin.push.extension.distribution.gbd.c.a.aM;
                this.aV = com.igexin.push.extension.distribution.gbd.c.a.aN;
                this.aW = com.igexin.push.extension.distribution.gbd.c.a.aO;
                this.aX = com.igexin.push.extension.distribution.gbd.c.a.aP;
                this.i = com.igexin.push.extension.distribution.gbd.c.a.d;
                this.c = com.igexin.push.extension.distribution.gbd.c.a.c;
                this.d = com.igexin.push.extension.distribution.gbd.c.a.e;
                this.e = com.igexin.push.extension.distribution.gbd.c.a.f;
                this.f = com.igexin.push.extension.distribution.gbd.c.a.g;
                this.g = com.igexin.push.extension.distribution.gbd.c.a.h;
                this.D = com.igexin.push.extension.distribution.gbd.c.a.bw;
                this.A = com.igexin.push.extension.distribution.gbd.c.a.k;
                this.B = com.igexin.push.extension.distribution.gbd.c.a.n;
                this.C = com.igexin.push.extension.distribution.gbd.c.a.o;
                this.o = com.igexin.push.extension.distribution.gbd.c.a.ai;
                this.p = com.igexin.push.extension.distribution.gbd.c.a.aj;
                this.q = com.igexin.push.extension.distribution.gbd.c.a.ak;
                this.h = com.igexin.push.extension.distribution.gbd.c.a.al;
                this.r = com.igexin.push.extension.distribution.gbd.c.a.am;
                this.u = com.igexin.push.extension.distribution.gbd.c.a.an;
                this.v = com.igexin.push.extension.distribution.gbd.c.a.ao;
                this.w = com.igexin.push.extension.distribution.gbd.c.a.ap;
                this.x = com.igexin.push.extension.distribution.gbd.c.a.aq;
                this.y = com.igexin.push.extension.distribution.gbd.c.a.ar;
                this.z = com.igexin.push.extension.distribution.gbd.c.a.as;
                this.E = com.igexin.push.extension.distribution.gbd.c.a.l;
                this.G = com.igexin.push.extension.distribution.gbd.c.a.p;
                this.H = com.igexin.push.extension.distribution.gbd.c.a.q;
                this.I = com.igexin.push.extension.distribution.gbd.c.a.r;
                this.J = com.igexin.push.extension.distribution.gbd.c.a.s;
                this.K = com.igexin.push.extension.distribution.gbd.c.a.t;
                this.M = com.igexin.push.extension.distribution.gbd.c.a.u;
                this.N = com.igexin.push.extension.distribution.gbd.c.a.v;
                this.O = com.igexin.push.extension.distribution.gbd.c.a.z;
                this.P = com.igexin.push.extension.distribution.gbd.c.a.B;
                this.U = com.igexin.push.extension.distribution.gbd.c.a.C;
                this.X = com.igexin.push.extension.distribution.gbd.c.a.E;
                this.Z = com.igexin.push.extension.distribution.gbd.c.a.J;
                this.Y = com.igexin.push.extension.distribution.gbd.c.a.H;
                this.aa = com.igexin.push.extension.distribution.gbd.c.a.K;
                this.ab = com.igexin.push.extension.distribution.gbd.c.a.A;
                this.ac = com.igexin.push.extension.distribution.gbd.c.a.N;
                this.ad = com.igexin.push.extension.distribution.gbd.c.a.w;
                this.ae = com.igexin.push.extension.distribution.gbd.c.a.S;
                this.af = com.igexin.push.extension.distribution.gbd.c.a.T;
                this.ah = com.igexin.push.extension.distribution.gbd.c.a.X;
                this.ag = com.igexin.push.extension.distribution.gbd.c.a.U;
                this.ai = com.igexin.push.extension.distribution.gbd.c.a.ac;
                this.aj = com.igexin.push.extension.distribution.gbd.c.a.ad;
                this.ak = com.igexin.push.extension.distribution.gbd.c.a.ae;
                this.al = com.igexin.push.extension.distribution.gbd.c.a.Y;
                this.am = com.igexin.push.extension.distribution.gbd.c.a.aa;
                this.an = com.igexin.push.extension.distribution.gbd.c.a.Z;
                this.ao = com.igexin.push.extension.distribution.gbd.c.a.D;
                this.ap = com.igexin.push.extension.distribution.gbd.c.a.af;
                this.aq = com.igexin.push.extension.distribution.gbd.c.a.ag;
                this.ar = com.igexin.push.extension.distribution.gbd.c.a.ah;
                this.as = com.igexin.push.extension.distribution.gbd.c.a.V;
                this.at = com.igexin.push.extension.distribution.gbd.c.a.at;
                this.au = com.igexin.push.extension.distribution.gbd.c.a.W;
                this.av = com.igexin.push.extension.distribution.gbd.c.a.au;
                this.aw = com.igexin.push.extension.distribution.gbd.c.a.av;
                this.ax = com.igexin.push.extension.distribution.gbd.c.a.aw;
                this.ay = com.igexin.push.extension.distribution.gbd.c.a.ax;
                this.az = com.igexin.push.extension.distribution.gbd.c.a.ay;
                this.aA = com.igexin.push.extension.distribution.gbd.c.a.az;
                this.aB = com.igexin.push.extension.distribution.gbd.c.a.aE;
                this.aE = com.igexin.push.extension.distribution.gbd.c.a.aH;
                this.aF = com.igexin.push.extension.distribution.gbd.c.a.aI;
                this.aG = com.igexin.push.extension.distribution.gbd.c.a.f371a;
                this.aC = com.igexin.push.extension.distribution.gbd.c.a.aF;
                this.aD = com.igexin.push.extension.distribution.gbd.c.a.aG;
                this.aH = com.igexin.push.extension.distribution.gbd.c.a.aT;
                this.aI = com.igexin.push.extension.distribution.gbd.c.a.aU;
                this.aJ = com.igexin.push.extension.distribution.gbd.c.a.O;
                this.aK = com.igexin.push.extension.distribution.gbd.c.a.Q;
                this.aL = com.igexin.push.extension.distribution.gbd.c.a.aV;
                this.aM = com.igexin.push.extension.distribution.gbd.c.a.aW;
                this.aO = com.igexin.push.extension.distribution.gbd.c.a.aR;
                this.aN = com.igexin.push.extension.distribution.gbd.c.a.aQ;
                this.aP = com.igexin.push.extension.distribution.gbd.c.a.aS;
                this.bM = com.igexin.push.extension.distribution.gbd.c.a.aC;
                this.T = com.igexin.push.extension.distribution.gbd.c.a.aD;
                this.bN = com.igexin.push.extension.distribution.gbd.c.a.aY;
                this.bO = com.igexin.push.extension.distribution.gbd.c.a.aZ;
                this.bP = com.igexin.push.extension.distribution.gbd.c.a.ba;
                this.bQ = com.igexin.push.extension.distribution.gbd.c.a.bb;
                this.aQ = com.igexin.push.extension.distribution.gbd.c.a.bc;
                this.bR = com.igexin.push.extension.distribution.gbd.c.a.L;
                this.bS = com.igexin.push.extension.distribution.gbd.c.a.bd;
                this.bT = com.igexin.push.extension.distribution.gbd.c.a.be;
                this.bU = com.igexin.push.extension.distribution.gbd.c.a.bg;
                this.s = com.igexin.push.extension.distribution.gbd.c.a.bf;
                this.t = com.igexin.push.extension.distribution.gbd.c.a.bh;
                this.aY = com.igexin.push.extension.distribution.gbd.c.a.bi;
                this.aZ = com.igexin.push.extension.distribution.gbd.c.a.bj;
                this.ba = com.igexin.push.extension.distribution.gbd.c.a.bk;
                this.bb = com.igexin.push.extension.distribution.gbd.c.a.P;
                this.bc = com.igexin.push.extension.distribution.gbd.c.a.R;
                this.bd = com.igexin.push.extension.distribution.gbd.c.a.bm;
                this.be = com.igexin.push.extension.distribution.gbd.c.a.bn;
                this.bf = com.igexin.push.extension.distribution.gbd.c.a.bo;
                this.bg = com.igexin.push.extension.distribution.gbd.c.a.bl;
                this.bh = com.igexin.push.extension.distribution.gbd.c.a.bp;
                this.bi = com.igexin.push.extension.distribution.gbd.c.a.bq;
                this.bj = com.igexin.push.extension.distribution.gbd.c.a.br;
                this.bk = com.igexin.push.extension.distribution.gbd.c.a.bu;
                this.bl = com.igexin.push.extension.distribution.gbd.c.a.bs;
                this.bm = com.igexin.push.extension.distribution.gbd.c.a.bt;
                this.bn = com.igexin.push.extension.distribution.gbd.c.a.bv;
                this.bo = com.igexin.push.extension.distribution.gbd.c.a.bx;
                this.bp = com.igexin.push.extension.distribution.gbd.c.a.by;
                this.bq = com.igexin.push.extension.distribution.gbd.c.a.bz;
                this.br = com.igexin.push.extension.distribution.gbd.c.a.bA;
                this.bw = com.igexin.push.extension.distribution.gbd.c.a.bI;
                this.bH = com.igexin.push.extension.distribution.gbd.c.a.i;
                this.bI = com.igexin.push.extension.distribution.gbd.c.a.j;
                this.bL = com.igexin.push.extension.distribution.gbd.c.a.I;
                this.F = com.igexin.push.extension.distribution.gbd.c.a.m;
                if (jSONObject.has("tag")) {
                    this.am = jSONObject.getString("tag");
                }
                if (jSONObject.has(BindingXConstants.KEY_CONFIG)) {
                    JSONObject jSONObject2 = new JSONObject(jSONObject.getString(BindingXConstants.KEY_CONFIG));
                    if (jSONObject2.has("sdk.gbd.enable")) {
                        String string = jSONObject2.getString("sdk.gbd.enable");
                        if (string.equals(AbsoluteConst.TRUE) || string.equals(AbsoluteConst.FALSE)) {
                            this.b = Boolean.valueOf(string).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.type24.firstenable")) {
                        String string2 = jSONObject2.getString("sdk.gbd.type24.firstenable");
                        if (string2.equals(AbsoluteConst.TRUE) || string2.equals(AbsoluteConst.FALSE)) {
                            this.Q = Boolean.valueOf(string2).booleanValue();
                        }
                    }
                    long j = 0;
                    if (jSONObject2.has("sdk.gbd.guard.glinterval")) {
                        long j2 = Long.parseLong(jSONObject2.getString("sdk.gbd.guard.glinterval"));
                        if (j2 <= 0) {
                            j2 = 0;
                        }
                        this.n = j2;
                    }
                    if (jSONObject2.has("sdk.gbd.type11.instant")) {
                        this.j = jSONObject2.getString("sdk.gbd.type11.instant");
                    }
                    if (jSONObject2.has("sdk.gbd.type.instantreport")) {
                        this.k = jSONObject2.getString("sdk.gbd.type.instantreport");
                    }
                    if (jSONObject2.has("sdk.gbd.imei.interval")) {
                        long j3 = Long.parseLong(jSONObject2.getString("sdk.gbd.imei.interval"));
                        if (j3 <= 0) {
                            j3 = 0;
                        }
                        this.l = j3;
                    }
                    if (jSONObject2.has("sdk.gbd.type11.blinterval")) {
                        long j4 = Long.parseLong(jSONObject2.getString("sdk.gbd.type11.blinterval"));
                        if (j4 <= 0) {
                            j4 = 0;
                        }
                        this.m = j4;
                    }
                    if (jSONObject2.has("sdk.gbd.screen.interval")) {
                        int i2 = Integer.parseInt(jSONObject2.getString("sdk.gbd.screen.interval"));
                        if (i2 <= 0) {
                            i2 = 30;
                        }
                        this.bw = i2;
                    }
                    if (jSONObject2.has("sdk.gbd.guard.transinterval")) {
                        long j5 = Long.parseLong(jSONObject2.getString("sdk.gbd.guard.transinterval"));
                        if (j5 <= 0) {
                            j5 = 0;
                        }
                        this.F = j5;
                    }
                    if (jSONObject2.has("sdk.gbd.guard.bsinterval")) {
                        long j6 = Long.parseLong(jSONObject2.getString("sdk.gbd.guard.bsinterval"));
                        if (j6 > 0) {
                            j = j6;
                        }
                        this.L = j;
                    }
                    if (jSONObject2.has("sdk.gbd.type31.virtual")) {
                        String string3 = jSONObject2.getString("sdk.gbd.type31.virtual");
                        if (string3.equals(AbsoluteConst.TRUE) || string3.equals(AbsoluteConst.FALSE)) {
                            this.bH = Boolean.valueOf(string3).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.unique.install")) {
                        String string4 = jSONObject2.getString("sdk.gbd.unique.install");
                        if (string4.equals(AbsoluteConst.TRUE) || string4.equals(AbsoluteConst.FALSE)) {
                            this.z = Boolean.valueOf(string4).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.type11.refreshwl")) {
                        String string5 = jSONObject2.getString("sdk.gbd.type11.refreshwl");
                        if (string5.equals(AbsoluteConst.TRUE) || string5.equals(AbsoluteConst.FALSE)) {
                            this.o = Boolean.valueOf(string5).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.type24.enableproc")) {
                        String string6 = jSONObject2.getString("sdk.gbd.type24.enableproc");
                        if (string6.equals(AbsoluteConst.TRUE) || string6.equals(AbsoluteConst.FALSE)) {
                            this.p = Boolean.valueOf(string6).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.type24.scansdbl")) {
                        this.q = jSONObject2.getString("sdk.gbd.type24.scansdbl");
                    }
                    if (jSONObject2.has("sdk.gbd.type32.localbl")) {
                        this.h = jSONObject2.getString("sdk.gbd.type32.localbl");
                    }
                    if (jSONObject2.has("sdk.gbd.type24.scansdwatchapp")) {
                        this.r = jSONObject2.getString("sdk.gbd.type24.scansdwatchapp");
                    }
                    if (jSONObject2.has("sdk.gbd.type24.scanfilemax")) {
                        int i3 = Integer.parseInt(jSONObject2.getString("sdk.gbd.type24.scanfilemax"));
                        if (i3 <= 0) {
                            i3 = 1;
                        }
                        this.u = i3;
                    }
                    if (jSONObject2.has("sdk.gbd.type24.scanintervalmax")) {
                        this.v = Long.parseLong(jSONObject2.getString("sdk.gbd.type24.scanintervalmax"));
                    }
                    if (jSONObject2.has("sdk.gbd.type14.instantreport")) {
                        String string7 = jSONObject2.getString("sdk.gbd.type14.instantreport");
                        if (string7.equals(AbsoluteConst.TRUE) || string7.equals(AbsoluteConst.FALSE)) {
                            this.w = Boolean.valueOf(string7).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.guard.libequalserver")) {
                        String string8 = jSONObject2.getString("sdk.gbd.guard.libequalserver");
                        if (string8.equals(AbsoluteConst.TRUE) || string8.equals(AbsoluteConst.FALSE)) {
                            this.x = Boolean.valueOf(string8).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.plus.localaddlist")) {
                        this.y = jSONObject2.getString("sdk.gbd.plus.localaddlist");
                    }
                    if (jSONObject2.has("sdk.gbd.type31.virtualpm")) {
                        this.bI = jSONObject2.getString("sdk.gbd.type31.virtualpm");
                    }
                    if (jSONObject2.has("sdk.gbd.guard.translist")) {
                        this.bL = jSONObject2.getString("sdk.gbd.guard.translist");
                    }
                    if (jSONObject2.has("sdk.gbd.type31.oaid")) {
                        String string9 = jSONObject2.getString("sdk.gbd.type31.oaid");
                        if (string9.equals(AbsoluteConst.TRUE) || string9.equals(AbsoluteConst.FALSE)) {
                            this.bK = Boolean.valueOf(string9).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.type31.allmac")) {
                        String string10 = jSONObject2.getString("sdk.gbd.type31.allmac");
                        if (string10.equals(AbsoluteConst.TRUE) || string10.equals(AbsoluteConst.FALSE)) {
                            this.D = Boolean.valueOf(string10).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.plus.enable")) {
                        String string11 = jSONObject2.getString("sdk.gbd.plus.enable");
                        if (string11.equals(AbsoluteConst.TRUE) || string11.equals(AbsoluteConst.FALSE)) {
                            this.bx = Boolean.valueOf(string11).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.plus.dafromlocal")) {
                        String string12 = jSONObject2.getString("sdk.gbd.plus.dafromlocal");
                        if (string12.equals(AbsoluteConst.TRUE) || string12.equals(AbsoluteConst.FALSE)) {
                            this.by = Boolean.valueOf(string12).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.bindservice.wl")) {
                        this.bJ = jSONObject2.getString("sdk.gbd.bindservice.wl");
                    }
                    if (jSONObject2.has("sdk.gbd.plus.dalist")) {
                        this.bz = jSONObject2.getString("sdk.gbd.plus.dalist");
                    }
                    if (jSONObject2.has("sdk.gbd.plus.enablea")) {
                        String string13 = jSONObject2.getString("sdk.gbd.plus.enablea");
                        if (string13.equals(AbsoluteConst.TRUE) || string13.equals(AbsoluteConst.FALSE)) {
                            this.bA = Boolean.valueOf(string13).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.plus.enables")) {
                        String string14 = jSONObject2.getString("sdk.gbd.plus.enables");
                        if (string14.equals(AbsoluteConst.TRUE) || string14.equals(AbsoluteConst.FALSE)) {
                            this.bB = Boolean.valueOf(string14).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.plus.enablep")) {
                        String string15 = jSONObject2.getString("sdk.gbd.plus.enablep");
                        if (string15.equals(AbsoluteConst.TRUE) || string15.equals(AbsoluteConst.FALSE)) {
                            this.bG = Boolean.valueOf(string15).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.plus.firstga")) {
                        String string16 = jSONObject2.getString("sdk.gbd.plus.firstga");
                        if (string16.equals(AbsoluteConst.TRUE) || string16.equals(AbsoluteConst.FALSE)) {
                            this.bC = Boolean.valueOf(string16).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.plus.guardcount")) {
                        int i4 = Integer.parseInt(jSONObject2.getString("sdk.gbd.plus.guardcount"));
                        if (i4 <= 0) {
                            i4 = 1;
                        }
                        this.bD = i4;
                    }
                    if (jSONObject2.has("sdk.gbd.plus.whitelist")) {
                        this.bE = jSONObject2.getString("sdk.gbd.plus.whitelist");
                    }
                    if (jSONObject2.has("sdk.gbd.plus.blacklist")) {
                        this.bF = jSONObject2.getString("sdk.gbd.plus.blacklist");
                    }
                    if (jSONObject2.has("sdk.gbd.android.whitelist")) {
                        this.bt = jSONObject2.getString("sdk.gbd.android.whitelist");
                    }
                    if (jSONObject2.has("sdk.gbd.applist.switchnum")) {
                        this.bu = Integer.parseInt(jSONObject2.getString("sdk.gbd.applist.switchnum"));
                    }
                    if (jSONObject2.has("sdk.gbd.collect.stime")) {
                        this.bv = Integer.parseInt(jSONObject2.getString("sdk.gbd.collect.stime"));
                    }
                    if (jSONObject2.has("sdk.gbd.audio.wl")) {
                        this.R = jSONObject2.getString("sdk.gbd.audio.wl");
                    }
                    if (jSONObject2.has("sdk.gbd.service.bl")) {
                        this.S = jSONObject2.getString("sdk.gbd.service.bl");
                    }
                    if (jSONObject2.has("sdk.gbd.guard.intentinfo")) {
                        this.bs = jSONObject2.getString("sdk.gbd.guard.intentinfo");
                    }
                    if (jSONObject2.has("sdk.gbd.cell.cidmask")) {
                        this.aY = jSONObject2.getString("sdk.gbd.cell.cidmask");
                    }
                    if (jSONObject2.has("sdk.gbd.operator.mask")) {
                        this.aZ = Integer.parseInt(jSONObject2.getString("sdk.gbd.operator.mask"));
                    }
                    if (jSONObject2.has("sdk.gbd.pn.enable")) {
                        this.ba = Short.valueOf(jSONObject2.getString("sdk.gbd.pn.enable")).shortValue();
                    }
                    if (jSONObject2.has("sdk.gbd.mf_enable")) {
                        String string17 = jSONObject2.getString("sdk.gbd.mf_enable");
                        if (string17.equals(AbsoluteConst.TRUE) || string17.equals(AbsoluteConst.FALSE)) {
                            this.bb = Boolean.valueOf(string17).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.mf_freq")) {
                        this.bc = Long.parseLong(jSONObject2.getString("sdk.gbd.mf_freq"));
                    }
                    if (jSONObject2.has("sdk.gbd.checkalive.interval")) {
                        this.aR = Long.parseLong(jSONObject2.getString("sdk.gbd.checkalive.interval"));
                    }
                    if (jSONObject2.has("sdk.gbd.checkalive.freq")) {
                        this.aS = Long.parseLong(jSONObject2.getString("sdk.gbd.checkalive.freq"));
                    }
                    if (jSONObject2.has("sdk.gbd.checkalive.merge")) {
                        this.aT = Long.parseLong(jSONObject2.getString("sdk.gbd.checkalive.merge"));
                    }
                    if (jSONObject2.has("sdk.gbd.checkalive.enable")) {
                        this.aU = Boolean.parseBoolean(jSONObject2.getString("sdk.gbd.checkalive.enable"));
                    }
                    if (jSONObject2.has("sdk.gbd.bluetoothscan.enable")) {
                        this.aV = Boolean.parseBoolean(jSONObject2.getString("sdk.gbd.bluetoothscan.enable"));
                    }
                    if (jSONObject2.has("sdk.gbd.bluetoothscan.Interval")) {
                        this.aW = Long.parseLong(jSONObject2.getString("sdk.gbd.bluetoothscan.Interval"));
                    }
                    if (jSONObject2.has("sdk.gdb.bluetoothscan.maxcount")) {
                        this.aX = Integer.parseInt(jSONObject2.getString("sdk.gdb.bluetoothscan.maxcount"));
                    }
                    if (jSONObject2.has("sdk.gbd.type11.rom")) {
                        this.i = jSONObject2.getString("sdk.gbd.type11.rom");
                    }
                    if (jSONObject2.has("sdk.gbd.watchout.app")) {
                        this.c = jSONObject2.getString("sdk.gbd.watchout.app");
                    }
                    if (jSONObject2.has("sdk.gbd.watchout.service")) {
                        this.d = jSONObject2.getString("sdk.gbd.watchout.service");
                    }
                    if (jSONObject2.has("sdk.gbd.watchout.as")) {
                        this.e = jSONObject2.getString("sdk.gbd.watchout.as");
                    }
                    if (jSONObject2.has("sdk.gbd.watchout.mac")) {
                        this.f = jSONObject2.getString("sdk.gbd.watchout.mac");
                    }
                    if (jSONObject2.has("sdk.gbd.watchout.brand")) {
                        this.g = jSONObject2.getString("sdk.gbd.watchout.brand");
                    }
                    if (jSONObject2.has("sdk.gbd.coordinate")) {
                        String string18 = jSONObject2.getString("sdk.gbd.coordinate");
                        if (string18.equals(AbsoluteConst.TRUE) || string18.equals(AbsoluteConst.FALSE)) {
                            this.A = Boolean.valueOf(string18).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.type11.enable")) {
                        String string19 = jSONObject2.getString("sdk.gbd.type11.enable");
                        if (string19.equals(AbsoluteConst.TRUE) || string19.equals(AbsoluteConst.FALSE)) {
                            this.B = Boolean.valueOf(string19).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.pressure.enable")) {
                        String string20 = jSONObject2.getString("sdk.gbd.pressure.enable");
                        if (string20.equals(AbsoluteConst.TRUE) || string20.equals(AbsoluteConst.FALSE)) {
                            this.C = Boolean.valueOf(string20).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.freq")) {
                        this.E = Long.parseLong(jSONObject2.getString("sdk.gbd.freq"));
                    }
                    if (jSONObject2.has("sdk.gbd.wifi.freq")) {
                        this.G = Long.parseLong(jSONObject2.getString("sdk.gbd.wifi.freq"));
                    }
                    if (jSONObject2.has("sdk.gbd.wifi.level")) {
                        this.H = Integer.parseInt(jSONObject2.getString("sdk.gbd.wifi.level"));
                    }
                    if (jSONObject2.has("sdk.gbd.wifi.timeout")) {
                        this.I = Integer.parseInt(jSONObject2.getString("sdk.gbd.wifi.timeout"));
                    }
                    if (jSONObject2.has("sdk.gbd.wifi.size")) {
                        this.J = Integer.parseInt(jSONObject2.getString("sdk.gbd.wifi.size"));
                    }
                    if (jSONObject2.has("sdk.gbd.wifi.changepercent")) {
                        this.K = Integer.parseInt(jSONObject2.getString("sdk.gbd.wifi.changepercent"));
                    }
                    if (jSONObject2.has("sdk.gbd.gps.freq")) {
                        this.M = Integer.parseInt(jSONObject2.getString("sdk.gbd.gps.freq"));
                    }
                    if (jSONObject2.has("sdk.gbd.gps.distance")) {
                        this.N = Integer.parseInt(jSONObject2.getString("sdk.gbd.gps.distance"));
                    }
                    if (jSONObject2.has("sdk.gbd.ral.size")) {
                        this.O = Integer.parseInt(jSONObject2.getString("sdk.gbd.ral.size"));
                    }
                    if (jSONObject2.has("sdk.gbd.guard.enable")) {
                        this.P = jSONObject2.getBoolean("sdk.gbd.guard.enable");
                    }
                    if (jSONObject2.has("sdk.gbd.guard.services")) {
                        this.U = jSONObject2.getString("sdk.gbd.guard.services");
                    }
                    if (jSONObject2.has("sdk.gbd.guard.count")) {
                        this.X = Integer.parseInt(jSONObject2.getString("sdk.gbd.guard.count"));
                    }
                    if (jSONObject2.has("sdk.gbd.guard.whitelist")) {
                        this.Z = jSONObject2.getString("sdk.gbd.guard.whitelist");
                    }
                    if (jSONObject2.has("sdk.gbd.guard.blacklist")) {
                        this.Y = jSONObject2.getString("sdk.gbd.guard.blacklist");
                    }
                    if (jSONObject2.has("gbd.guard.summary.duration")) {
                        this.aa = Long.parseLong(jSONObject2.getString("gbd.guard.summary.duration"));
                    }
                    if (jSONObject2.has("sdk.gbd.guardthirdparty.enable")) {
                        this.ab = jSONObject2.getBoolean("sdk.gbd.guardthirdparty.enable");
                    }
                    if (jSONObject2.has("sdk.gbd.guard.freq")) {
                        this.ac = Long.parseLong(jSONObject2.getString("sdk.gbd.guard.freq"));
                    }
                    if (jSONObject2.has("sdk.gbd.gps.interval")) {
                        this.ad = Long.parseLong(jSONObject2.getString("sdk.gbd.gps.interval"));
                    }
                    if (jSONObject2.has("sdk.gbd.sysmem.limit")) {
                        this.ae = Integer.parseInt(jSONObject2.getString("sdk.gbd.sysmem.limit"));
                    }
                    if (jSONObject2.has("sdk.gbd.appmem.limit")) {
                        this.af = Integer.parseInt(jSONObject2.getString("sdk.gbd.appmem.limit"));
                    }
                    if (jSONObject2.has("sdk.gbd.recenttask.keyword")) {
                        this.ag = jSONObject2.getString("sdk.gbd.recenttask.keyword");
                    }
                    if (jSONObject2.has("sdk.gbd.recenttask.enable")) {
                        String string21 = jSONObject2.getString("sdk.gbd.recenttask.enable");
                        if (string21.equals(AbsoluteConst.TRUE) || string21.equals(AbsoluteConst.FALSE)) {
                            this.ah = Boolean.valueOf(string21).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.guardactivity.first")) {
                        String string22 = jSONObject2.getString("sdk.gbd.guardactivity.first");
                        if (string22.equals(AbsoluteConst.TRUE) || string22.equals(AbsoluteConst.FALSE)) {
                            this.ai = Boolean.valueOf(string22).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.guardtask.starttime")) {
                        this.aj = Integer.parseInt(jSONObject2.getString("sdk.gbd.guardtask.starttime"));
                    }
                    if (jSONObject2.has("sdk.gbd.guardtask.randomtime")) {
                        this.ak = Integer.parseInt(jSONObject2.getString("sdk.gbd.guardtask.randomtime"));
                    }
                    if (jSONObject2.has("sdk.gbd.locate.request")) {
                        String string23 = jSONObject2.getString("sdk.gbd.locate.request");
                        if (string23.equals(AbsoluteConst.TRUE) || string23.equals(AbsoluteConst.FALSE)) {
                            this.al = Boolean.valueOf(string23).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.locate.requesttime")) {
                        this.an = Integer.parseInt(jSONObject2.getString("sdk.gbd.locate.requesttime"));
                    }
                    if (jSONObject2.has("sdk.gbd.guard.intent")) {
                        this.ao = jSONObject2.getString("sdk.gbd.guard.intent");
                    }
                    if (jSONObject2.has("sdk.gbd.bluetooth.enable")) {
                        String string24 = jSONObject2.getString("sdk.gbd.bluetooth.enable");
                        if (string24.equals(AbsoluteConst.TRUE) || string24.equals(AbsoluteConst.FALSE)) {
                            this.ap = Boolean.valueOf(string24).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.newbluetooth.enable")) {
                        String string25 = jSONObject2.getString("sdk.gbd.newbluetooth.enable");
                        if (string25.equals(AbsoluteConst.TRUE) || string25.equals(AbsoluteConst.FALSE)) {
                            this.aq = Boolean.valueOf(string25).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.newbluetooth.bl")) {
                        this.ar = jSONObject2.getString("sdk.gbd.newbluetooth.bl");
                    }
                    if (jSONObject2.has("sdk.gbd.systemapp.keyword")) {
                        this.as = jSONObject2.getString("sdk.gbd.systemapp.keyword");
                    }
                    if (jSONObject2.has("sdk.gbd.guardlog.enable")) {
                        String string26 = jSONObject2.getString("sdk.gbd.guardlog.enable");
                        if (string26.equals(AbsoluteConst.TRUE) || string26.equals(AbsoluteConst.FALSE)) {
                            this.at = Boolean.valueOf(string26).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.newrecenttask.enable")) {
                        String string27 = jSONObject2.getString("sdk.gbd.newrecenttask.enable");
                        if (string27.equals(AbsoluteConst.TRUE) || string27.equals(AbsoluteConst.FALSE)) {
                            this.au = Boolean.valueOf(string27).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.mac.enable")) {
                        String string28 = jSONObject2.getString("sdk.gbd.mac.enable");
                        if (string28.equals(AbsoluteConst.TRUE) || string28.equals(AbsoluteConst.FALSE)) {
                            this.av = Boolean.valueOf(string28).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.mac.interval")) {
                        this.aw = Long.parseLong(jSONObject2.getString("sdk.gbd.mac.interval"));
                    }
                    if (jSONObject2.has("sdk.gbd.mac.pingcount")) {
                        this.ax = Integer.parseInt(jSONObject2.getString("sdk.gbd.mac.pingcount"));
                    }
                    if (jSONObject2.has("sdk.gbd.mac.reportcount")) {
                        this.ay = Integer.parseInt(jSONObject2.getString("sdk.gbd.mac.reportcount"));
                    }
                    if (jSONObject2.has("sdk.gbd.guardgactivity.blacklist")) {
                        this.az = jSONObject2.getString("sdk.gbd.guardgactivity.blacklist").replace(Operators.SPACE_STR, "");
                    }
                    if (jSONObject2.has("sdk.gbd.guard.romandsdkint.blacklist")) {
                        this.aA = jSONObject2.getString("sdk.gbd.guard.romandsdkint.blacklist");
                    }
                    if (jSONObject2.has("sdk.gbd.guard.brandsdkrombl")) {
                        this.V = jSONObject2.getString("sdk.gbd.guard.brandsdkrombl");
                    }
                    if (jSONObject2.has("sdk.gbd.type.brandsdkrombl")) {
                        this.W = jSONObject2.getString("sdk.gbd.type.brandsdkrombl");
                    }
                    if (jSONObject2.has("sdk.gbd.applist.enable")) {
                        String string29 = jSONObject2.getString("sdk.gbd.applist.enable");
                        if (string29.equals(AbsoluteConst.TRUE) || string29.equals(AbsoluteConst.FALSE)) {
                            this.aE = Boolean.valueOf(string29).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.sermd.enable")) {
                        String string30 = jSONObject2.getString("sdk.gbd.sermd.enable");
                        if (string30.equals(AbsoluteConst.TRUE) || string30.equals(AbsoluteConst.FALSE)) {
                            this.aF = Boolean.valueOf(string30).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.applist.runmax")) {
                        this.aG = Integer.parseInt(jSONObject2.getString("sdk.gbd.applist.runmax"));
                    }
                    if (jSONObject2.has("sdk.gbd.applist.interval")) {
                        this.aC = Long.parseLong(jSONObject2.getString("sdk.gbd.applist.interval"));
                    }
                    if (jSONObject2.has("sdk.gbd.applistreport.interval")) {
                        this.aD = Long.parseLong(jSONObject2.getString("sdk.gbd.applistreport.interval"));
                    }
                    if (jSONObject2.has("sdk.gbd.applist.channel")) {
                        this.aB = jSONObject2.getString("sdk.gbd.applist.channel");
                    }
                    if (jSONObject2.has("sdk.gbd.guardservice.interval")) {
                        this.aH = Long.parseLong(jSONObject2.getString("sdk.gbd.guardservice.interval"));
                    }
                    if (jSONObject2.has("sdk.gbd.http.maxsize")) {
                        this.aI = Integer.parseInt(jSONObject2.getString("sdk.gbd.http.maxsize"));
                    }
                    if (jSONObject2.has("sdk.gbd.lf_enable")) {
                        String string31 = jSONObject2.getString("sdk.gbd.lf_enable");
                        if (string31.equals(AbsoluteConst.TRUE) || string31.equals(AbsoluteConst.FALSE)) {
                            this.aJ = Boolean.valueOf(string31).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.lf_freq")) {
                        this.aK = Long.parseLong(jSONObject2.getString("sdk.gbd.lf_freq"));
                    }
                    if (jSONObject2.has("sdk.gbd.app_list_url")) {
                        this.aL = jSONObject2.getString("sdk.gbd.app_list_url");
                    }
                    if (jSONObject2.has("sdk.gbd.app_list_version")) {
                        this.aM = Integer.parseInt(jSONObject2.getString("sdk.gbd.app_list_version"));
                    }
                    if (jSONObject2.has("sdk.gbd.target_app_list.enable")) {
                        String string32 = jSONObject2.getString("sdk.gbd.target_app_list.enable");
                        if (string32.equals(AbsoluteConst.TRUE) || string32.equals(AbsoluteConst.FALSE)) {
                            this.aO = Boolean.valueOf(string32).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.target_app_list.interval")) {
                        this.aN = Long.parseLong(jSONObject2.getString("sdk.gbd.target_app_list.interval"));
                    }
                    if (jSONObject2.has("sdk.gbd.target_app_list")) {
                        this.aP = jSONObject2.getString("sdk.gbd.target_app_list");
                    }
                    if (jSONObject2.has("sdk.gbd.pm_black_list")) {
                        this.bM = jSONObject2.getString("sdk.gbd.pm_black_list");
                    }
                    if (jSONObject2.has("sdk.gbd.pm_white_list")) {
                        this.T = jSONObject2.getString("sdk.gbd.pm_white_list");
                    }
                    if (jSONObject2.has("sdk.gbd.activity.enable")) {
                        String string33 = jSONObject2.getString("sdk.gbd.activity.enable");
                        if (string33.equals(AbsoluteConst.TRUE) || string33.equals(AbsoluteConst.FALSE)) {
                            this.bN = Boolean.valueOf(string33).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.service.enable")) {
                        String string34 = jSONObject2.getString("sdk.gbd.service.enable");
                        if (string34.equals(AbsoluteConst.TRUE) || string34.equals(AbsoluteConst.FALSE)) {
                            this.bO = Boolean.valueOf(string34).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.force.start")) {
                        String string35 = jSONObject2.getString("sdk.gbd.force.start");
                        if (string35.equals(AbsoluteConst.TRUE) || string35.equals(AbsoluteConst.FALSE)) {
                            this.bP = Boolean.valueOf(string35).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.force.start.target")) {
                        this.bQ = jSONObject2.getString("sdk.gbd.force.start.target");
                    }
                    if (jSONObject2.has("sdk.gbd.permission.config")) {
                        this.aQ = jSONObject2.getString("sdk.gbd.permission.config");
                    }
                    if (jSONObject2.has("sdk.gbd.newrecent.interval")) {
                        this.bR = Long.parseLong(jSONObject2.getString("sdk.gbd.newrecent.interval"));
                    }
                    if (jSONObject2.has("sdk.gbd.guard.dynamicactivitylist")) {
                        this.bS = jSONObject2.getString("sdk.gbd.guard.dynamicactivitylist");
                    }
                    if (jSONObject2.has("sdk.gbd.guard.dynamicactivitycount")) {
                        this.bT = jSONObject2.getInt("sdk.gbd.guard.dynamicactivitycount");
                    }
                    if (jSONObject2.has("sdk.gbd.guard.dynamicactivityinterval")) {
                        this.bU = jSONObject2.getLong("sdk.gbd.guard.dynamicactivityinterval");
                    }
                    if (jSONObject2.has("sdk.gbd.trans.dacount")) {
                        this.s = jSONObject2.getInt("sdk.gbd.trans.dacount");
                    }
                    if (jSONObject2.has("sdk.gbd.trans.dainterval")) {
                        this.t = jSONObject2.getLong("sdk.gbd.trans.dainterval");
                    }
                    if (jSONObject2.has("sdk.gbd.check.safe")) {
                        String string36 = jSONObject2.getString("sdk.gbd.check.safe");
                        if (string36.equals(AbsoluteConst.TRUE) || string36.equals(AbsoluteConst.FALSE)) {
                            this.bd = Boolean.valueOf(string36).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.checkguard.safe")) {
                        String string37 = jSONObject2.getString("sdk.gbd.checkguard.safe");
                        if (string37.equals(AbsoluteConst.TRUE) || string37.equals(AbsoluteConst.FALSE)) {
                            this.be = Boolean.valueOf(string37).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.checkguard.brandusb")) {
                        this.bf = jSONObject2.getString("sdk.gbd.checkguard.brandusb");
                    }
                    if (jSONObject2.has("sdk.gbd.localpn.enable")) {
                        String string38 = jSONObject2.getString("sdk.gbd.localpn.enable");
                        if (string38.equals(AbsoluteConst.TRUE) || string38.equals(AbsoluteConst.FALSE)) {
                            this.bg = Boolean.valueOf(string38).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.port.type6")) {
                        String string39 = jSONObject2.getString("sdk.gbd.port.type6");
                        if (string39.equals(AbsoluteConst.TRUE) || string39.equals(AbsoluteConst.FALSE)) {
                            this.bh = Boolean.valueOf(string39).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.report.rs.type6")) {
                        String string40 = jSONObject2.getString("sdk.gbd.report.rs.type6");
                        if (string40.equals(AbsoluteConst.TRUE) || string40.equals(AbsoluteConst.FALSE)) {
                            this.bi = Boolean.valueOf(string40).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.guard.dafromlocal")) {
                        String string41 = jSONObject2.getString("sdk.gbd.guard.dafromlocal");
                        if (string41.equals(AbsoluteConst.TRUE) || string41.equals(AbsoluteConst.FALSE)) {
                            this.bj = Boolean.valueOf(string41).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.guard.dynamicblacklist")) {
                        this.bl = jSONObject2.getString("sdk.gbd.guard.dynamicblacklist");
                    }
                    if (jSONObject2.has("sdk.gbd.guard.photoblacklist")) {
                        this.bm = jSONObject2.getString("sdk.gbd.guard.photoblacklist");
                    }
                    if (jSONObject2.has("sdk.gbd.port.type34")) {
                        String string42 = jSONObject2.getString("sdk.gbd.port.type34");
                        if (string42.equals(AbsoluteConst.TRUE) || string42.equals(AbsoluteConst.FALSE)) {
                            this.bk = Boolean.valueOf(string42).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.guard.daenable")) {
                        String string43 = jSONObject2.getString("sdk.gbd.guard.daenable");
                        if (string43.equals(AbsoluteConst.TRUE) || string43.equals(AbsoluteConst.FALSE)) {
                            this.bn = Boolean.valueOf(string43).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.type43.mask")) {
                        this.bo = jSONObject2.getString("sdk.gbd.type43.mask");
                    }
                    if (jSONObject2.has("sdk.gbd.type24rs.mask")) {
                        this.bp = jSONObject2.getString("sdk.gbd.type24rs.mask");
                    }
                    if (jSONObject2.has("sdk.gbd.type24rs.system")) {
                        String string44 = jSONObject2.getString("sdk.gbd.type24rs.system");
                        if (string44.equals(AbsoluteConst.TRUE) || string44.equals(AbsoluteConst.FALSE)) {
                            this.bq = Boolean.valueOf(string44).booleanValue();
                        }
                    }
                    if (jSONObject2.has("sdk.gbd.ral.max") && (i = Integer.parseInt(jSONObject2.getString("sdk.gbd.ral.max"))) > 0 && i < 100) {
                        this.br = i;
                    }
                    c();
                    return;
                }
                return;
            } catch (Throwable th) {
                th = th;
            }
        } catch (Throwable th2) {
            th = th2;
            str = "GBD_ConfigDataManager";
        }
        Throwable th3 = th;
        j.a(th3);
        j.b(str, th3.toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:333:0x07d2  */
    /* JADX WARN: Removed duplicated region for block: B:343:0x010e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:344:0x0129 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:345:0x0142 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:346:0x014a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:347:0x0153 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:348:0x015b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:349:0x0163 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:350:0x016c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:351:0x0174 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:352:0x017d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:353:0x0185 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:354:0x018d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:355:0x0195 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:356:0x019d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:357:0x01a6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:358:0x01af A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:359:0x01b7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:360:0x01bf A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:361:0x01c8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:362:0x01d1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:363:0x01da A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:364:0x01e6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:365:0x01f2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:366:0x01fb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:367:0x0207 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:368:0x020f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:369:0x0218 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:370:0x0220 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:371:0x0229 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:372:0x0231 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:373:0x023a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:374:0x0242 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:375:0x024b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:376:0x0254 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:377:0x025d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:378:0x0265 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:379:0x026e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:380:0x0277 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:381:0x0283 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:382:0x028f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:383:0x0298 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:384:0x02a1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:385:0x02aa A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:386:0x02b2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:387:0x02bb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:388:0x02c4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:389:0x02cc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:390:0x02d4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:391:0x02dc A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:392:0x02e4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:393:0x02ed A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:394:0x02f5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:395:0x02fd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:396:0x0305 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:397:0x030d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:398:0x0315 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:399:0x031e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:400:0x0327 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:401:0x0333 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:402:0x033f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:403:0x0343 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:404:0x0347 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:405:0x0350 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:406:0x035c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:407:0x0365 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:408:0x0371 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:409:0x037d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:410:0x0389 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:411:0x0395 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:412:0x03a1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:413:0x03ad A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:414:0x03b9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:415:0x03c5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:416:0x03c9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:417:0x03d1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:418:0x03d9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:419:0x03e1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:420:0x03e9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:421:0x03f1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:422:0x03f9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:423:0x0401 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:424:0x041c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:425:0x0435 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:426:0x043e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:427:0x0447 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:428:0x0453 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:429:0x045f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:430:0x047a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:431:0x0483 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:432:0x048c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:433:0x0498 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:434:0x04a4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:435:0x04b0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:436:0x04b9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:437:0x04c5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:438:0x04ce A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:439:0x04da A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:440:0x04e6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:441:0x04f2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:442:0x04fb A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:443:0x0504 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:444:0x051f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:445:0x053a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:446:0x0546 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:447:0x0552 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:448:0x056b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:449:0x0577 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:450:0x0583 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:451:0x058f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:452:0x059b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:453:0x059f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:454:0x05a8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:455:0x05b4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:456:0x05c0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:457:0x05d2 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:458:0x05de A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:459:0x05ea A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:460:0x05f6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:461:0x05ff A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:462:0x060b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:463:0x0614 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:464:0x0620 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:465:0x0629 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:466:0x0631 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:467:0x063d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:468:0x0649 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:469:0x0655 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:470:0x0661 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:471:0x066a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:472:0x0676 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:473:0x0682 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:474:0x068e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:475:0x06a9 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:476:0x06b5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:477:0x06c1 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:478:0x06ca A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:479:0x06d3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:480:0x06df A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:481:0x06e8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:482:0x06f4 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:483:0x0700 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:484:0x070c A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:485:0x0727 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:486:0x0733 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:487:0x073f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:488:0x074b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:489:0x0757 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:490:0x0772 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:491:0x078d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:492:0x0795 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:493:0x079e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:494:0x07a7 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:544:0x000e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void b() {
        /*
            Method dump skipped, instruction units count: 2398
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.igexin.push.extension.distribution.gbd.e.a.a.b():void");
    }
}
