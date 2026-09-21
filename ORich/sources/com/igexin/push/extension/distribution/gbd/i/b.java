package com.igexin.push.extension.distribution.gbd.i;

import java.security.Provider;

/* JADX INFO: loaded from: classes.dex */
class b extends Provider {
    public b() {
        super("Crypto", 1.0d, "HARMONY (SHA1 digest; SecureRandom; SHA1withDSA signature)");
        put("SecureRandom.SHA1PRNG", "org.apache.harmony.security.provider.crypto.SHA1PRNG_SecureRandomImpl");
        put("SecureRandom.SHA1PRNG ImplementedIn", "Software");
    }
}
