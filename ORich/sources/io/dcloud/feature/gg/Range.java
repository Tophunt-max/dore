package io.dcloud.feature.gg;

/* JADX INFO: loaded from: classes2.dex */
class Range {
    private double end;
    private double start;
    private String type;

    public Range(double d, double d2, String str) {
        this.start = d;
        this.end = d2;
        this.type = str;
    }

    public boolean contains(double d) {
        return d >= this.start && d < this.end;
    }

    public String getType() {
        return this.type;
    }
}
