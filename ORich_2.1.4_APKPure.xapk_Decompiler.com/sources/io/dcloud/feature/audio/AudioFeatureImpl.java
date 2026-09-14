package io.dcloud.feature.audio;

import android.media.AudioManager;
import io.dcloud.common.DHInterface.AbsMgr;
import io.dcloud.common.DHInterface.IFeature;
import io.dcloud.common.adapter.util.MessageHandler;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes2.dex */
public class AudioFeatureImpl implements IFeature, MessageHandler.IMessages {
    static final String TAG = "AudioFeatureImpl";
    HashMap<String, ArrayList> mAppsAudioObj = null;

    private Object findAppObj(String str, String str2) {
        ArrayList appObjList = getAppObjList(str);
        if (!appObjList.isEmpty()) {
            for (Object obj : appObjList) {
                if ((obj instanceof AbsAudio) && ((AbsAudio) obj).mUuid.equals(str2)) {
                    return obj;
                }
            }
        }
        return null;
    }

    private ArrayList getAppObjList(String str) {
        ArrayList arrayList = this.mAppsAudioObj.get(str);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList(2);
        this.mAppsAudioObj.put(str, arrayList2);
        return arrayList2;
    }

    private void putAppObjList(String str, Object obj) {
        getAppObjList(str).add(obj);
    }

    private void removeAppObjFromList(String str, Object obj) {
        ArrayList appObjList = getAppObjList(str);
        if (appObjList != null) {
            appObjList.remove(obj);
        }
    }

    private void setCanPlay(String str, String str2, boolean z) {
        for (Object obj : getAppObjList(str)) {
            if (obj instanceof AudioPlayer) {
                AudioPlayer audioPlayer = (AudioPlayer) obj;
                if (!audioPlayer.mUuid.equals(str2) && !z) {
                    audioPlayer.pause();
                }
                audioPlayer.setCanMix(z);
            }
        }
    }

    private void setSpeakerphoneOn(AudioManager audioManager, boolean z) {
        if (z) {
            audioManager.setSpeakerphoneOn(true);
            audioManager.setMode(1);
        } else {
            audioManager.setSpeakerphoneOn(false);
            audioManager.setRouting(0, 1, -1);
            audioManager.setMode(3);
        }
    }

    @Override // io.dcloud.common.DHInterface.IFeature
    public void dispose(String str) {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0047  */
    @Override // io.dcloud.common.DHInterface.IFeature
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String execute(io.dcloud.common.DHInterface.IWebview r9, java.lang.String r10, java.lang.String[] r11) {
        /*
            Method dump skipped, instruction units count: 318
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.feature.audio.AudioFeatureImpl.execute(io.dcloud.common.DHInterface.IWebview, java.lang.String, java.lang.String[]):java.lang.String");
    }

    @Override // io.dcloud.common.DHInterface.IFeature
    public void init(AbsMgr absMgr, String str) {
        this.mAppsAudioObj = new HashMap<>(2);
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x0146  */
    @Override // io.dcloud.common.adapter.util.MessageHandler.IMessages
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void execute(java.lang.Object r18) {
        /*
            Method dump skipped, instruction units count: 602
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: io.dcloud.feature.audio.AudioFeatureImpl.execute(java.lang.Object):void");
    }
}
