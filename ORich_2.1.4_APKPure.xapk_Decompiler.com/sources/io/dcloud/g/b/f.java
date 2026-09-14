package io.dcloud.g.b;

import io.dcloud.common.DHInterface.IPdrModule;
import io.dcloud.common.DHInterface.IPdrModulesInfo;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class f implements IPdrModulesInfo {
    @Override // io.dcloud.common.DHInterface.IPdrModulesInfo
    public Map<String, Class<? extends IPdrModule>> getPdrModuleMap() {
        HashMap map = new HashMap();
        map.put("commit", io.dcloud.g.d.a.class);
        return map;
    }
}
