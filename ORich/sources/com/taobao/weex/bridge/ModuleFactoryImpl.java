package com.taobao.weex.bridge;

/* JADX INFO: loaded from: classes.dex */
public class ModuleFactoryImpl {
    public boolean hasRigster;
    public ModuleFactory mFactory;

    public ModuleFactoryImpl(ModuleFactory moduleFactory) {
        this.mFactory = null;
        this.hasRigster = false;
        this.mFactory = moduleFactory;
    }

    public ModuleFactoryImpl(ModuleFactory moduleFactory, boolean z) {
        this.mFactory = null;
        this.hasRigster = false;
        this.mFactory = moduleFactory;
        this.hasRigster = z;
    }
}
