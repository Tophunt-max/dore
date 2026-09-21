###### Class com.dcloud.android.widget.TabView (com.dcloud.android.widget.TabView)
.class public Lcom/dcloud/android/widget/TabView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dcloud/android/widget/TabView$BackGroundDrawable;
    }
.end annotation


# instance fields
.field private mBackgroundColor:Ljava/lang/String;

.field private mBackgroundImage:Ljava/lang/String;

.field private mBorderStyle:Ljava/lang/String;

.field private mBorderView:Landroid/view/View;

.field private mCommonList:Lcom/alibaba/fastjson/JSONArray;

.field private mCommonSelectedIndex:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDefaultBackgroundColor:Ljava/lang/String;

.field private mDefaultBorderColor:Ljava/lang/String;

.field private mDefaultMaskBackgroundColor:Ljava/lang/String;

.field private mDefaultSelectedTextColor:Ljava/lang/String;

.field private mDefaultTextColor:Ljava/lang/String;

.field private mIDoubleCallback:Lio/dcloud/common/DHInterface/ICallBack;

.field private mIMaskCallback:Lio/dcloud/common/DHInterface/ICallBack;

.field private mIMidCallback:Lio/dcloud/common/DHInterface/ICallBack;

.field private mISingleCallback:Lio/dcloud/common/DHInterface/ICallBack;

.field private mImageSize:Ljava/lang/String;

.field private mMask:Landroid/widget/LinearLayout;

.field private mMidButton:Lcom/alibaba/fastjson/JSONObject;

.field private mMidButtonView:Landroid/widget/RelativeLayout;

.field private mMidIndex:I

.field private mMidTouchListener:Landroid/view/View$OnTouchListener;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnMaskClickListener:Landroid/view/View$OnClickListener;

.field private mScale:F

.field private mSelectedColor:Ljava/lang/String;

.field private mStyleJson:Lcom/alibaba/fastjson/JSONObject;

.field private mTabBar:Landroid/widget/LinearLayout;

.field private mTabHeight:I

.field private mTabHeightStr:Ljava/lang/String;

.field private mTabItemViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/RelativeLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mTextColor:Ljava/lang/String;

.field private mTextSize:Ljava/lang/String;

.field private mTextTop:Ljava/lang/String;

.field private mWebApp:Lio/dcloud/common/DHInterface/IApp;

.field private redDotColor:I

.field private repeatType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;FLio/dcloud/common/DHInterface/IApp;)V
    .registers 8

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "#7A7E83"

    .line 2
    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->mDefaultTextColor:Ljava/lang/String;

    const-string v0, "#3cc51f"

    .line 3
    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->mDefaultSelectedTextColor:Ljava/lang/String;

    const-string v0, "#000000"

    .line 4
    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->mDefaultBorderColor:Ljava/lang/String;

    const-string v0, "#FFFFFF"

    .line 5
    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->mDefaultBackgroundColor:Ljava/lang/String;

    const-string v0, "#00000000"

    .line 6
    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->mDefaultMaskBackgroundColor:Ljava/lang/String;

    const-string v0, "24px"

    .line 24
    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->mImageSize:Ljava/lang/String;

    const-string v0, "3px"

    .line 25
    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->mTextTop:Ljava/lang/String;

    const-string v0, "10px"

    .line 26
    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->mTextSize:Ljava/lang/String;

    const/high16 v0, -0x10000

    .line 32
    iput v0, p0, Lcom/dcloud/android/widget/TabView;->redDotColor:I

    .line 668
    new-instance v0, Lcom/dcloud/android/widget/TabView$2;

    invoke-direct {v0, p0}, Lcom/dcloud/android/widget/TabView$2;-><init>(Lcom/dcloud/android/widget/TabView;)V

    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->mMidTouchListener:Landroid/view/View$OnTouchListener;

    .line 711
    new-instance v0, Lcom/dcloud/android/widget/TabView$3;

    invoke-direct {v0, p0}, Lcom/dcloud/android/widget/TabView$3;-><init>(Lcom/dcloud/android/widget/TabView;)V

    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 725
    new-instance v0, Lcom/dcloud/android/widget/TabView$4;

    invoke-direct {v0, p0}, Lcom/dcloud/android/widget/TabView$4;-><init>(Lcom/dcloud/android/widget/TabView;)V

    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->mOnMaskClickListener:Landroid/view/View$OnClickListener;

    const/4 v0, 0x0

    .line 1034
    iput v0, p0, Lcom/dcloud/android/widget/TabView;->mMidIndex:I

    .line 1035
    iput-object p1, p0, Lcom/dcloud/android/widget/TabView;->mContext:Landroid/content/Context;

    .line 1036
    iput p3, p0, Lcom/dcloud/android/widget/TabView;->mScale:F

    .line 1037
    iput-object p4, p0, Lcom/dcloud/android/widget/TabView;->mWebApp:Lio/dcloud/common/DHInterface/IApp;

    .line 1038
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 1040
    iput-object p2, p0, Lcom/dcloud/android/widget/TabView;->mStyleJson:Lcom/alibaba/fastjson/JSONObject;

    if-nez p2, :cond_53

    .line 1042
    new-instance p2, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p2}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    iput-object p2, p0, Lcom/dcloud/android/widget/TabView;->mStyleJson:Lcom/alibaba/fastjson/JSONObject;

    .line 1044
    :cond_53
    iget-object p2, p0, Lcom/dcloud/android/widget/TabView;->mStyleJson:Lcom/alibaba/fastjson/JSONObject;

    const-string p4, "color"

    invoke-virtual {p2, p4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dcloud/android/widget/TabView;->mTextColor:Ljava/lang/String;

    .line 1045
    iget-object p2, p0, Lcom/dcloud/android/widget/TabView;->mStyleJson:Lcom/alibaba/fastjson/JSONObject;

    const-string p4, "selectedColor"

    invoke-virtual {p2, p4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dcloud/android/widget/TabView;->mSelectedColor:Ljava/lang/String;

    .line 1046
    iget-object p2, p0, Lcom/dcloud/android/widget/TabView;->mStyleJson:Lcom/alibaba/fastjson/JSONObject;

    const-string p4, "backgroundColor"

    invoke-virtual {p2, p4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dcloud/android/widget/TabView;->mBackgroundColor:Ljava/lang/String;

    .line 1047
    iget-object p2, p0, Lcom/dcloud/android/widget/TabView;->mStyleJson:Lcom/alibaba/fastjson/JSONObject;

    const-string p4, "backgroundImage"

    invoke-virtual {p2, p4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dcloud/android/widget/TabView;->mBackgroundImage:Ljava/lang/String;

    .line 1048
    iget-object p2, p0, Lcom/dcloud/android/widget/TabView;->mStyleJson:Lcom/alibaba/fastjson/JSONObject;

    const-string p4, "backgroundRepeat"

    invoke-virtual {p2, p4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dcloud/android/widget/TabView;->repeatType:Ljava/lang/String;

    .line 1049
    iget-object p2, p0, Lcom/dcloud/android/widget/TabView;->mStyleJson:Lcom/alibaba/fastjson/JSONObject;

    const-string p4, "redDotColor"

    invoke-virtual {p2, p4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a1

    .line 1050
    iget-object p2, p0, Lcom/dcloud/android/widget/TabView;->mStyleJson:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p2, p4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1051
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_a1

    .line 1052
    invoke-static {p2}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/dcloud/android/widget/TabView;->redDotColor:I

    .line 1055
    :cond_a1
    iget-object p2, p0, Lcom/dcloud/android/widget/TabView;->mStyleJson:Lcom/alibaba/fastjson/JSONObject;

    const-string p4, "borderStyle"

    invoke-virtual {p2, p4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dcloud/android/widget/TabView;->mBorderStyle:Ljava/lang/String;

    .line 1056
    iget-object p2, p0, Lcom/dcloud/android/widget/TabView;->mStyleJson:Lcom/alibaba/fastjson/JSONObject;

    const-string p4, "fontSize"

    invoke-virtual {p2, p4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_bd

    .line 1057
    iget-object p2, p0, Lcom/dcloud/android/widget/TabView;->mStyleJson:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p2, p4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dcloud/android/widget/TabView;->mTextSize:Ljava/lang/String;

    .line 1059
    :cond_bd
    iget-object p2, p0, Lcom/dcloud/android/widget/TabView;->mStyleJson:Lcom/alibaba/fastjson/JSONObject;

    const-string p4, "iconWidth"

    invoke-virtual {p2, p4}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_cf

    .line 1060
    iget-object p2, p0, Lcom/dcloud/android/widget/TabView;->mStyleJson:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p2, p4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/dcloud/android/widget/TabView;->mImageSize:Ljava/lang/String;

    .line 1062
    :cond_cf
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    const/high16 p4, 0x42900000    # 72.0f

    const/4 v1, 0x1

    .line 1063
    invoke-static {v1, p4, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p2

    .line 1064
    iget-object p4, p0, Lcom/dcloud/android/widget/TabView;->mStyleJson:Lcom/alibaba/fastjson/JSONObject;

    const-string v2, "height"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_eb

    const-string p4, "50px"

    goto :goto_f1

    :cond_eb
    iget-object p4, p0, Lcom/dcloud/android/widget/TabView;->mStyleJson:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :goto_f1
    iput-object p4, p0, Lcom/dcloud/android/widget/TabView;->mTabHeightStr:Ljava/lang/String;

    .line 1065
    iget-object p4, p0, Lcom/dcloud/android/widget/TabView;->mStyleJson:Lcom/alibaba/fastjson/JSONObject;

    const-string v2, "spacing"

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_105

    iget-object p4, p0, Lcom/dcloud/android/widget/TabView;->mStyleJson:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p4, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/dcloud/android/widget/TabView;->mTextTop:Ljava/lang/String;

    .line 1066
    :cond_105
    iget-object p4, p0, Lcom/dcloud/android/widget/TabView;->mTabHeightStr:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p4, v2, p2, p3}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result p2

    float-to-int p2, p2

    iput p2, p0, Lcom/dcloud/android/widget/TabView;->mTabHeight:I

    .line 1067
    iget-object p2, p0, Lcom/dcloud/android/widget/TabView;->mStyleJson:Lcom/alibaba/fastjson/JSONObject;

    const-string p3, "selected"

    invoke-virtual {p2, p3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_11c

    const-string p2, "0"

    goto :goto_122

    :cond_11c
    iget-object p2, p0, Lcom/dcloud/android/widget/TabView;->mStyleJson:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {p2, p3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_122
    iput-object p2, p0, Lcom/dcloud/android/widget/TabView;->mCommonSelectedIndex:Ljava/lang/String;

    .line 1068
    iget-object p2, p0, Lcom/dcloud/android/widget/TabView;->mStyleJson:Lcom/alibaba/fastjson/JSONObject;

    const-string p3, "list"

    invoke-virtual {p2, p3}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object p2

    iput-object p2, p0, Lcom/dcloud/android/widget/TabView;->mCommonList:Lcom/alibaba/fastjson/JSONArray;

    .line 1069
    iget-object p2, p0, Lcom/dcloud/android/widget/TabView;->mStyleJson:Lcom/alibaba/fastjson/JSONObject;

    const-string p3, "midButton"

    invoke-virtual {p2, p3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    iput-object p2, p0, Lcom/dcloud/android/widget/TabView;->mMidButton:Lcom/alibaba/fastjson/JSONObject;

    .line 1070
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/dcloud/android/widget/TabView;->mTabItemViews:Ljava/util/ArrayList;

    .line 1071
    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/dcloud/android/widget/TabView;->mBorderView:Landroid/view/View;

    .line 1072
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p2, p3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 1073
    iget p4, p0, Lcom/dcloud/android/widget/TabView;->mTabHeight:I

    iput p4, p2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    const/16 p4, 0x50

    .line 1074
    iput p4, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 1075
    iget-object v1, p0, Lcom/dcloud/android/widget/TabView;->mBorderView:Landroid/view/View;

    invoke-virtual {p0, v1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1077
    new-instance p2, Landroid/widget/LinearLayout;

    invoke-direct {p2, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/dcloud/android/widget/TabView;->mTabBar:Landroid/widget/LinearLayout;

    .line 1078
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 1079
    iget-object p1, p0, Lcom/dcloud/android/widget/TabView;->mTabBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p4}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 1080
    iget-object p1, p0, Lcom/dcloud/android/widget/TabView;->mTabBar:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 1081
    iget-object p1, p0, Lcom/dcloud/android/widget/TabView;->mTabBar:Landroid/widget/LinearLayout;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    iget p4, p0, Lcom/dcloud/android/widget/TabView;->mTabHeight:I

    invoke-direct {p2, p3, p4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1083
    invoke-direct {p0}, Lcom/dcloud/android/widget/TabView;->initTabStyle()V

    .line 1084
    invoke-direct {p0}, Lcom/dcloud/android/widget/TabView;->initTabItemStyle()V

    .line 1085
    invoke-direct {p0}, Lcom/dcloud/android/widget/TabView;->setSelectedStyle()V

    .line 1086
    iget-object p1, p0, Lcom/dcloud/android/widget/TabView;->mMidTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/dcloud/android/widget/TabView;)Landroid/widget/RelativeLayout;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dcloud/android/widget/TabView;->mMidButtonView:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$100(Lcom/dcloud/android/widget/TabView;)Landroid/widget/LinearLayout;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dcloud/android/widget/TabView;->mTabBar:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/dcloud/android/widget/TabView;)Lio/dcloud/common/DHInterface/ICallBack;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dcloud/android/widget/TabView;->mIMidCallback:Lio/dcloud/common/DHInterface/ICallBack;

    return-object p0
.end method

.method static synthetic access$300(Lcom/dcloud/android/widget/TabView;)Lio/dcloud/common/DHInterface/ICallBack;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dcloud/android/widget/TabView;->mISingleCallback:Lio/dcloud/common/DHInterface/ICallBack;

    return-object p0
.end method

.method static synthetic access$400(Lcom/dcloud/android/widget/TabView;)Lio/dcloud/common/DHInterface/ICallBack;
    .registers 1

    .line 1
    iget-object p0, p0, Lcom/dcloud/android/widget/TabView;->mIMaskCallback:Lio/dcloud/common/DHInterface/ICallBack;

    return-object p0
.end method

.method static synthetic access$500(Lcom/dcloud/android/widget/TabView;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 1
    invoke-direct {p0, p1}, Lcom/dcloud/android/widget/TabView;->getIconPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCommonItemByIndex(I)Landroid/view/ViewGroup;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mTabItemViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-lt v0, p1, :cond_13

    .line 2
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mTabItemViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_13
    const/4 p1, 0x0

    return-object p1
.end method

.method private getIconPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mWebApp:Lio/dcloud/common/DHInterface/IApp;

    invoke-interface {v0, p1}, Lio/dcloud/common/DHInterface/IApp;->convert2AbsFullPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 2
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isDeviceRootDir(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_20
    if-eqz p1, :cond_35

    const-string v0, "/"

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_35

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_35
    if-eqz p1, :cond_45

    const-string v0, "android_asset/"

    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    const-string v1, ""

    .line 9
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 13
    :cond_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file:///android_asset/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initTabItemStyle()V
    .registers 3

    const/4 v0, 0x0

    .line 1
    :goto_1
    iget-object v1, p0, Lcom/dcloud/android/widget/TabView;->mCommonList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_17

    .line 2
    iget-object v1, p0, Lcom/dcloud/android/widget/TabView;->mCommonList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/JSONObject;

    .line 3
    invoke-direct {p0, v0, v1}, Lcom/dcloud/android/widget/TabView;->setCommonItemStyle(ILcom/alibaba/fastjson/JSONObject;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 5
    :cond_17
    invoke-direct {p0}, Lcom/dcloud/android/widget/TabView;->updateMidItemStyle()V

    return-void
.end method

.method private initTabStyle()V
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mTabBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;

    if-eqz v0, :cond_13

    .line 2
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mTabBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;

    goto :goto_1d

    .line 4
    :cond_13
    new-instance v0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;

    invoke-direct {v0, p0}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;-><init>(Lcom/dcloud/android/widget/TabView;)V

    .line 5
    iget-object v1, p0, Lcom/dcloud/android/widget/TabView;->mTabBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    :goto_1d
    iget-object v1, p0, Lcom/dcloud/android/widget/TabView;->repeatType:Ljava/lang/String;

    iget-object v2, p0, Lcom/dcloud/android/widget/TabView;->mBackgroundImage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->setBackgroundRepeat(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/dcloud/android/widget/TabView;->mBackgroundColor:Ljava/lang/String;

    iget-object v2, p0, Lcom/dcloud/android/widget/TabView;->mDefaultBackgroundColor:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/dcloud/android/widget/TabView;->optColor(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->setBackgroundColor(I)V

    .line 9
    iget-object v1, p0, Lcom/dcloud/android/widget/TabView;->mBackgroundImage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->setBackgroundImage(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mTabBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v1, 0x50

    .line 11
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 12
    iget v1, p0, Lcom/dcloud/android/widget/TabView;->mTabHeight:I

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 13
    iget-object v1, p0, Lcom/dcloud/android/widget/TabView;->mTabBar:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mBorderView:Landroid/view/View;

    iget-object v1, p0, Lcom/dcloud/android/widget/TabView;->mBorderStyle:Ljava/lang/String;

    iget-object v2, p0, Lcom/dcloud/android/widget/TabView;->mDefaultBorderColor:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/dcloud/android/widget/TabView;->optColor(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private static optColor(Ljava/lang/String;Ljava/lang/String;)I
    .registers 2

    if-nez p0, :cond_7

    .line 1
    :try_start_2
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 2
    :cond_7
    invoke-static {p0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_c

    return p0

    .line 4
    :catch_c
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private placeholder(Ljava/lang/String;Landroid/widget/ImageView;)V
    .registers 4

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/dcloud/android/widget/TabView;->getIconPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/RequestBuilder;->dontAnimate()Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bumptech/glide/RequestBuilder;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/request/BaseRequestOptions;

    move-result-object p1

    check-cast p1, Lcom/bumptech/glide/RequestBuilder;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    goto :goto_2e

    :catchall_2a
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2e
    :goto_2e
    return-void
.end method

.method private setCommonItemJson(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mCommonList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    if-lt p1, v0, :cond_9

    return-void

    .line 5
    :cond_9
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mCommonList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz p2, :cond_16

    const-string v1, "text"

    .line 7
    invoke-virtual {v0, v1, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    if-eqz p3, :cond_1d

    const-string p2, "iconPath"

    .line 10
    invoke-virtual {v0, p2, p3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    if-eqz p4, :cond_24

    const-string p2, "selectedIconPath"

    .line 13
    invoke-virtual {v0, p2, p4}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    :cond_24
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string p3, "visible"

    invoke-virtual {v0, p3, p2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-direct {p0, p1, v0}, Lcom/dcloud/android/widget/TabView;->setCommonItemStyle(ILcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method private setCommonItemStyle(ILcom/alibaba/fastjson/JSONObject;)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "file:///android_asset/"

    const-string v4, "pagePath"

    .line 1
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string v4, "text"

    .line 2
    invoke-virtual {v2, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "textLocales"

    .line 3
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_1f

    .line 5
    invoke-static {v5, v4}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_1f
    const-string v5, "iconPath"

    .line 7
    invoke-virtual {v2, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "selectedIconPath"

    .line 8
    invoke-virtual {v2, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 10
    iget-object v7, v0, Lcom/dcloud/android/widget/TabView;->mCommonSelectedIndex:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "visible"

    .line 13
    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_3f

    .line 14
    invoke-virtual {v2, v8}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v8

    goto :goto_40

    :cond_3f
    const/4 v8, 0x1

    .line 18
    :goto_40
    iget-object v9, v0, Lcom/dcloud/android/widget/TabView;->mTabItemViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v10

    if-ge v9, v1, :cond_79

    .line 19
    iget-object v9, v0, Lcom/dcloud/android/widget/TabView;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    sget v11, Lio/dcloud/base/R$layout;->dcloud_tabbar_item:I

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 20
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 21
    iget-object v11, v0, Lcom/dcloud/android/widget/TabView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    new-instance v11, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v12, -0x1

    invoke-direct {v11, v12, v12}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/high16 v12, 0x3f800000    # 1.0f

    .line 23
    iput v12, v11, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 24
    iget-object v12, v0, Lcom/dcloud/android/widget/TabView;->mTabBar:Landroid/widget/LinearLayout;

    invoke-virtual {v12, v9, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 25
    iget-object v11, v0, Lcom/dcloud/android/widget/TabView;->mTabItemViews:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_81

    .line 27
    :cond_79
    iget-object v9, v0, Lcom/dcloud/android/widget/TabView;->mTabItemViews:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/RelativeLayout;

    .line 30
    :goto_81
    sget v11, Lio/dcloud/base/R$id;->tabIV:I

    invoke-virtual {v9, v11}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageView;

    .line 32
    invoke-static {v5}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v12

    const/16 v13, 0x8

    const/4 v14, 0x0

    const/4 v15, 0x0

    if-nez v12, :cond_bb

    if-eq v7, v1, :cond_bb

    .line 33
    invoke-virtual {v11, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 34
    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout$LayoutParams;

    .line 35
    iget-object v10, v0, Lcom/dcloud/android/widget/TabView;->mImageSize:Ljava/lang/String;

    iget v14, v0, Lcom/dcloud/android/widget/TabView;->mScale:F

    invoke-static {v10, v15, v15, v14}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result v10

    float-to-int v10, v10

    iput v10, v12, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 36
    iget-object v10, v0, Lcom/dcloud/android/widget/TabView;->mImageSize:Ljava/lang/String;

    iget v14, v0, Lcom/dcloud/android/widget/TabView;->mScale:F

    invoke-static {v10, v15, v15, v14}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result v10

    float-to-int v10, v10

    iput v10, v12, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 37
    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    invoke-direct {v0, v5, v11}, Lcom/dcloud/android/widget/TabView;->placeholder(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_be

    .line 41
    :cond_bb
    invoke-virtual {v11, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 44
    :goto_be
    invoke-static {v6}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_122

    if-ne v7, v1, :cond_122

    const/4 v5, 0x0

    .line 45
    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 46
    invoke-virtual {v11}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 48
    iget-object v10, v0, Lcom/dcloud/android/widget/TabView;->mImageSize:Ljava/lang/String;

    iget v12, v0, Lcom/dcloud/android/widget/TabView;->mScale:F

    invoke-static {v10, v15, v15, v12}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result v10

    float-to-int v10, v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 49
    iget-object v10, v0, Lcom/dcloud/android/widget/TabView;->mImageSize:Ljava/lang/String;

    iget v12, v0, Lcom/dcloud/android/widget/TabView;->mScale:F

    invoke-static {v10, v15, v15, v12}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result v10

    float-to-int v10, v10

    iput v10, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 50
    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-direct {v0, v6}, Lcom/dcloud/android/widget/TabView;->getIconPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 55
    :try_start_ed
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_105

    const-string v10, ""

    .line 56
    invoke-virtual {v5, v3, v10}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 57
    new-instance v5, Lpl/droidsonroids/gif/GifDrawable;

    iget-object v10, v0, Lcom/dcloud/android/widget/TabView;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-direct {v5, v10, v3}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    goto :goto_117

    .line 59
    :cond_105
    new-instance v3, Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v10, v5}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    move-object v5, v3

    :goto_117
    const/4 v3, 0x1

    .line 60
    invoke-virtual {v5, v3}, Lpl/droidsonroids/gif/GifDrawable;->setLoopCount(I)V

    .line 61
    invoke-virtual {v11, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_11e
    .catch Ljava/lang/Exception; {:try_start_ed .. :try_end_11e} :catch_11f

    goto :goto_122

    .line 63
    :catch_11f
    invoke-direct {v0, v6, v11}, Lcom/dcloud/android/widget/TabView;->placeholder(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 66
    :cond_122
    :goto_122
    sget v3, Lio/dcloud/base/R$id;->tabTV:I

    invoke-virtual {v9, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 67
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 68
    sget v2, Lio/dcloud/base/R$id;->itemDot:I

    invoke-virtual {v9, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iget v5, v0, Lcom/dcloud/android/widget/TabView;->redDotColor:I

    invoke-virtual {v2, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 69
    invoke-static {v4}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_187

    const/4 v2, 0x0

    .line 70
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 72
    iget-object v5, v0, Lcom/dcloud/android/widget/TabView;->mTextTop:Ljava/lang/String;

    iget v6, v0, Lcom/dcloud/android/widget/TabView;->mScale:F

    invoke-static {v5, v15, v15, v6}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result v5

    float-to-int v5, v5

    iput v5, v2, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 73
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v2, v0, Lcom/dcloud/android/widget/TabView;->mTextSize:Ljava/lang/String;

    iget v5, v0, Lcom/dcloud/android/widget/TabView;->mScale:F

    invoke-static {v2, v15, v15, v5}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result v2

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    if-eq v7, v1, :cond_178

    .line 77
    iget-object v1, v0, Lcom/dcloud/android/widget/TabView;->mTextColor:Ljava/lang/String;

    iget-object v2, v0, Lcom/dcloud/android/widget/TabView;->mDefaultTextColor:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/dcloud/android/widget/TabView;->optColor(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_183

    .line 79
    :cond_178
    iget-object v1, v0, Lcom/dcloud/android/widget/TabView;->mSelectedColor:Ljava/lang/String;

    iget-object v2, v0, Lcom/dcloud/android/widget/TabView;->mDefaultSelectedTextColor:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/dcloud/android/widget/TabView;->optColor(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 81
    :goto_183
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_18a

    .line 83
    :cond_187
    invoke-virtual {v3, v13}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_18a
    if-eqz v8, :cond_191

    const/4 v1, 0x0

    .line 87
    invoke-virtual {v9, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_194

    .line 89
    :cond_191
    invoke-virtual {v9, v13}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_194
    return-void
.end method

.method private setDotBadgeMarginTop(Landroid/view/ViewGroup;Landroid/view/View;)V
    .registers 10

    .line 1
    sget v0, Lio/dcloud/base/R$id;->tabIV:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/dcloud/android/widget/TabView;->mScale:F

    div-float/2addr v1, v2

    .line 3
    sget v2, Lio/dcloud/base/R$id;->contentWrapper:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/dcloud/android/widget/TabView;->mScale:F

    div-float/2addr v2, v3

    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lcom/dcloud/android/widget/TabView;->mScale:F

    div-float/2addr v3, v4

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2f

    div-float/2addr v3, v2

    :cond_2f
    sub-float v4, v1, v3

    const/4 v5, 0x0

    cmpl-float v6, v4, v2

    if-lez v6, :cond_37

    goto :goto_4c

    :cond_37
    cmpl-float v6, v1, v3

    if-lez v6, :cond_40

    cmpg-float v4, v4, v2

    if-gez v4, :cond_40

    goto :goto_48

    :cond_40
    cmpg-float v3, v1, v3

    if-gez v3, :cond_4b

    cmpl-float v3, v1, v2

    if-lez v3, :cond_4b

    :goto_48
    sub-float v3, v1, v2

    goto :goto_4c

    :cond_4b
    const/4 v3, 0x0

    .line 23
    :goto_4c
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    neg-float v2, v3

    .line 24
    iget v3, p0, Lcom/dcloud/android/widget/TabView;->mScale:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 25
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_92

    .line 27
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lio/dcloud/base/R$id;->itemDot:I

    if-ne v2, v3, :cond_6f

    .line 28
    iget v2, p0, Lcom/dcloud/android/widget/TabView;->mScale:F

    const/high16 v3, -0x3f600000    # -5.0f

    :goto_6c
    mul-float v5, v2, v3

    goto :goto_7c

    .line 29
    :cond_6f
    invoke-virtual {p2}, Landroid/view/View;->getId()I

    move-result v2

    sget v3, Lio/dcloud/base/R$id;->itemBadge:I

    if-ne v2, v3, :cond_7c

    .line 30
    iget v2, p0, Lcom/dcloud/android/widget/TabView;->mScale:F

    const/high16 v3, -0x3ef00000    # -9.0f

    goto :goto_6c

    .line 32
    :cond_7c
    :goto_7c
    sget v2, Lio/dcloud/base/R$id;->contentWrapper:I

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    sub-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    sub-float/2addr v5, p1

    float-to-int p1, v5

    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 34
    :cond_92
    invoke-virtual {p2, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setSelectedStyle()V
    .registers 8

    const-string v0, "file:///android_asset/"

    const/4 v1, 0x0

    .line 1
    :goto_3
    iget-object v2, p0, Lcom/dcloud/android/widget/TabView;->mTabItemViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_a1

    .line 2
    iget-object v2, p0, Lcom/dcloud/android/widget/TabView;->mCommonSelectedIndex:Ljava/lang/String;

    if-eqz v2, :cond_9d

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 4
    iget-object v3, p0, Lcom/dcloud/android/widget/TabView;->mTabItemViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 5
    sget v4, Lio/dcloud/base/R$id;->tabTV:I

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 6
    sget v5, Lio/dcloud/base/R$id;->tabIV:I

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/alibaba/fastjson/JSONObject;

    if-ne v2, v1, :cond_87

    .line 10
    iget-object v2, p0, Lcom/dcloud/android/widget/TabView;->mSelectedColor:Ljava/lang/String;

    iget-object v6, p0, Lcom/dcloud/android/widget/TabView;->mDefaultSelectedTextColor:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/dcloud/android/widget/TabView;->optColor(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v5, :cond_9d

    const-string v2, "selectedIconPath"

    .line 12
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 14
    :try_start_46
    invoke-direct {p0, v2}, Lcom/dcloud/android/widget/TabView;->getIconPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 16
    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_62

    const-string v5, ""

    .line 17
    invoke-virtual {v4, v0, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 18
    new-instance v5, Lpl/droidsonroids/gif/GifDrawable;

    iget-object v6, p0, Lcom/dcloud/android/widget/TabView;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    goto :goto_73

    .line 20
    :cond_62
    new-instance v5, Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Lpl/droidsonroids/gif/GifDrawable;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    :goto_73
    const/4 v4, 0x1

    .line 21
    invoke-virtual {v5, v4}, Lpl/droidsonroids/gif/GifDrawable;->setLoopCount(I)V

    .line 22
    new-instance v4, Lcom/dcloud/android/widget/TabView$1;

    invoke-direct {v4, p0, v3}, Lcom/dcloud/android/widget/TabView$1;-><init>(Lcom/dcloud/android/widget/TabView;Landroid/widget/ImageView;)V

    invoke-virtual {v5, v4}, Lpl/droidsonroids/gif/GifDrawable;->addAnimationListener(Lpl/droidsonroids/gif/AnimationListener;)V

    .line 32
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_46 .. :try_end_82} :catch_83

    goto :goto_9d

    .line 34
    :catch_83
    invoke-direct {p0, v2, v3}, Lcom/dcloud/android/widget/TabView;->placeholder(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_9d

    .line 39
    :cond_87
    iget-object v2, p0, Lcom/dcloud/android/widget/TabView;->mTextColor:Ljava/lang/String;

    iget-object v6, p0, Lcom/dcloud/android/widget/TabView;->mDefaultTextColor:Ljava/lang/String;

    invoke-static {v2, v6}, Lcom/dcloud/android/widget/TabView;->optColor(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz v5, :cond_9d

    const-string v2, "iconPath"

    .line 41
    invoke-virtual {v5, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 42
    invoke-direct {p0, v2, v3}, Lcom/dcloud/android/widget/TabView;->placeholder(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_9d
    :goto_9d
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_3

    :cond_a1
    return-void
.end method

.method private setTabItemStyle()V
    .registers 1

    .line 1
    invoke-direct {p0}, Lcom/dcloud/android/widget/TabView;->initTabItemStyle()V

    return-void
.end method

.method private updateMidItemStyle()V
    .registers 15

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mMidButton:Lcom/alibaba/fastjson/JSONObject;

    if-eqz v0, :cond_13

    const-string v1, "visible"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 2
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mMidButton:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x1

    :goto_14
    if-eqz v0, :cond_1a

    .line 5
    invoke-virtual {p0}, Lcom/dcloud/android/widget/TabView;->canMidButtonShowDisplayed()Z

    move-result v0

    :cond_1a
    if-nez v0, :cond_2e

    .line 8
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mMidButtonView:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_2d

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 9
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mTabBar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dcloud/android/widget/TabView;->mMidButtonView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_2d
    return-void

    .line 13
    :cond_2e
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mMidButton:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_33

    return-void

    :cond_33
    const-string v1, "height"

    .line 16
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    if-eqz v0, :cond_4b

    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mMidButton:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/dcloud/android/widget/TabView;->mScale:F

    invoke-static {v0, v3, v3, v1}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result v0

    goto :goto_4d

    :cond_4b
    const/high16 v0, -0x40800000    # -1.0f

    .line 17
    :goto_4d
    iget-object v1, p0, Lcom/dcloud/android/widget/TabView;->mMidButton:Lcom/alibaba/fastjson/JSONObject;

    const-string v4, "width"

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_64

    iget-object v1, p0, Lcom/dcloud/android/widget/TabView;->mMidButton:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget v4, p0, Lcom/dcloud/android/widget/TabView;->mScale:F

    invoke-static {v1, v3, v3, v4}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result v1

    goto :goto_66

    :cond_64
    const/high16 v1, -0x40800000    # -1.0f

    .line 18
    :goto_66
    iget-object v4, p0, Lcom/dcloud/android/widget/TabView;->mMidButton:Lcom/alibaba/fastjson/JSONObject;

    const-string v5, "text"

    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 19
    iget-object v5, p0, Lcom/dcloud/android/widget/TabView;->mMidButton:Lcom/alibaba/fastjson/JSONObject;

    const-string v6, "textLocales"

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_7c

    .line 21
    invoke-static {v5, v4}, Lio/dcloud/common/util/language/LanguageUtil;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 23
    :cond_7c
    iget-object v5, p0, Lcom/dcloud/android/widget/TabView;->mMidButton:Lcom/alibaba/fastjson/JSONObject;

    const-string v6, "iconWidth"

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8d

    iget-object v5, p0, Lcom/dcloud/android/widget/TabView;->mMidButton:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_8f

    :cond_8d
    iget-object v5, p0, Lcom/dcloud/android/widget/TabView;->mImageSize:Ljava/lang/String;

    :goto_8f
    iget v6, p0, Lcom/dcloud/android/widget/TabView;->mScale:F

    invoke-static {v5, v3, v3, v6}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result v5

    .line 24
    iget-object v6, p0, Lcom/dcloud/android/widget/TabView;->mMidButton:Lcom/alibaba/fastjson/JSONObject;

    const-string v7, "iconPath"

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 25
    iget-object v7, p0, Lcom/dcloud/android/widget/TabView;->mMidButton:Lcom/alibaba/fastjson/JSONObject;

    const-string v8, "backgroundImage"

    invoke-virtual {v7, v8}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 27
    iget-object v8, p0, Lcom/dcloud/android/widget/TabView;->mMidButtonView:Landroid/widget/RelativeLayout;

    if-nez v8, :cond_ba

    .line 28
    iget-object v8, p0, Lcom/dcloud/android/widget/TabView;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    sget v9, Lio/dcloud/base/R$layout;->dcloud_tabbar_mid:I

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/RelativeLayout;

    .line 29
    iput-object v8, p0, Lcom/dcloud/android/widget/TabView;->mMidButtonView:Landroid/widget/RelativeLayout;

    .line 33
    :cond_ba
    sget v9, Lio/dcloud/base/R$id;->itemDot:I

    invoke-virtual {v8, v9}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/GradientDrawable;

    iget v10, p0, Lcom/dcloud/android/widget/TabView;->redDotColor:I

    invoke-virtual {v9, v10}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    .line 34
    iget-object v9, p0, Lcom/dcloud/android/widget/TabView;->mImageSize:Ljava/lang/String;

    iget v10, p0, Lcom/dcloud/android/widget/TabView;->mScale:F

    invoke-static {v9, v3, v3, v10}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result v9

    float-to-int v9, v9

    int-to-float v9, v9

    .line 35
    iget-object v10, p0, Lcom/dcloud/android/widget/TabView;->mTextTop:Ljava/lang/String;

    iget v11, p0, Lcom/dcloud/android/widget/TabView;->mScale:F

    invoke-static {v10, v3, v3, v11}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result v10

    float-to-int v10, v10

    int-to-float v10, v10

    .line 36
    iget-object v11, p0, Lcom/dcloud/android/widget/TabView;->mTextSize:Ljava/lang/String;

    iget v12, p0, Lcom/dcloud/android/widget/TabView;->mScale:F

    invoke-static {v11, v3, v3, v12}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result v11

    float-to-int v11, v11

    int-to-float v11, v11

    .line 37
    sget v12, Lio/dcloud/base/R$id;->tabIV:I

    invoke-virtual {v8, v12}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/ImageView;

    .line 38
    invoke-virtual {v12}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Landroid/widget/RelativeLayout$LayoutParams;

    float-to-int v5, v5

    .line 39
    iput v5, v13, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 40
    iput v5, v13, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 41
    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    invoke-direct {p0, v6, v12}, Lcom/dcloud/android/widget/TabView;->placeholder(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 43
    sget v5, Lio/dcloud/base/R$id;->tabTV:I

    invoke-virtual {v8, v5}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 44
    iget-object v6, p0, Lcom/dcloud/android/widget/TabView;->mTextSize:Ljava/lang/String;

    iget v12, p0, Lcom/dcloud/android/widget/TabView;->mScale:F

    invoke-static {v6, v3, v3, v12}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result v3

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 45
    iget-object v3, p0, Lcom/dcloud/android/widget/TabView;->mTextColor:Ljava/lang/String;

    iget-object v12, p0, Lcom/dcloud/android/widget/TabView;->mDefaultTextColor:Ljava/lang/String;

    invoke-static {v3, v12}, Lcom/dcloud/android/widget/TabView;->optColor(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 48
    iget v12, p0, Lcom/dcloud/android/widget/TabView;->mTabHeight:I

    int-to-float v12, v12

    add-float/2addr v9, v10

    add-float/2addr v9, v11

    sub-float/2addr v12, v9

    const/high16 v9, 0x40000000    # 2.0f

    div-float/2addr v12, v9

    float-to-int v9, v12

    iput v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 49
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_147

    const/16 v3, 0x8

    .line 51
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_14a

    .line 53
    :cond_147
    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 55
    :goto_14a
    sget v3, Lio/dcloud/base/R$id;->bgImg:I

    invoke-virtual {v8, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 56
    invoke-direct {p0, v7, v3}, Lcom/dcloud/android/widget/TabView;->placeholder(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 57
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v4, v1

    float-to-int v0, v0

    invoke-direct {v3, v4, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    cmpl-float v0, v1, v2

    if-nez v0, :cond_164

    const/high16 v0, 0x3f800000    # 1.0f

    .line 59
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 61
    :cond_164
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mMidButtonView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_173

    .line 62
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mTabBar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dcloud/android/widget/TabView;->mMidButtonView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 64
    :cond_173
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mTabBar:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dcloud/android/widget/TabView;->mMidButtonView:Landroid/widget/RelativeLayout;

    iget v2, p0, Lcom/dcloud/android/widget/TabView;->mMidIndex:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public bringMaskToFront()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mMask:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    :cond_7
    return-void
.end method

.method public canMidButtonShowDisplayed()Z
    .registers 8

    .line 1
    invoke-virtual {p0}, Lcom/dcloud/android/widget/TabView;->getTabItemDisplayedSize()I

    move-result v0

    .line 2
    rem-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-nez v1, :cond_b

    const/4 v1, 0x1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    if-eqz v1, :cond_3e

    .line 5
    div-int/lit8 v0, v0, 0x2

    const/4 v3, 0x0

    .line 6
    :goto_11
    iget-object v4, p0, Lcom/dcloud/android/widget/TabView;->mCommonList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_3e

    .line 7
    iget-object v4, p0, Lcom/dcloud/android/widget/TabView;->mCommonList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v4, v2}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_3b

    const-string v5, "visible"

    .line 9
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 10
    invoke-virtual {v4, v5}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_35

    :cond_33
    add-int/lit8 v3, v3, 0x1

    :cond_35
    if-ne v3, v0, :cond_3b

    add-int/lit8 v4, v2, 0x1

    .line 17
    iput v4, p0, Lcom/dcloud/android/widget/TabView;->mMidIndex:I

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_3e
    return v1
.end method

.method public dispose()V
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mTabItemViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->mMidButtonView:Landroid/widget/RelativeLayout;

    return-void
.end method

.method public getMidHeight()I
    .registers 4

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mMidButton:Lcom/alibaba/fastjson/JSONObject;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    :cond_6
    const-string v1, "height"

    .line 4
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/dcloud/android/widget/TabView;->mScale:F

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getTabHeight()I
    .registers 2

    .line 1
    iget v0, p0, Lcom/dcloud/android/widget/TabView;->mTabHeight:I

    return v0
.end method

.method public getTabHeightStr()Ljava/lang/String;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mTabHeightStr:Ljava/lang/String;

    return-object v0
.end method

.method public getTabItemDisplayedSize()I
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_2
    iget-object v2, p0, Lcom/dcloud/android/widget/TabView;->mCommonList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_29

    .line 2
    iget-object v2, p0, Lcom/dcloud/android/widget/TabView;->mCommonList:Lcom/alibaba/fastjson/JSONArray;

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/JSONArray;->getJSONObject(I)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_26

    const-string v3, "visible"

    .line 4
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_24

    .line 5
    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_24
    add-int/lit8 v1, v1, 0x1

    :cond_26
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_29
    return v1
.end method

.method public hideTabBarRedDot(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3

    const-string v0, "index"

    .line 1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    invoke-direct {p0, p1}, Lcom/dcloud/android/widget/TabView;->getCommonItemByIndex(I)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 4
    sget v0, Lio/dcloud/base/R$id;->itemDot:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const/4 v0, 0x4

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1c
    return-void
.end method

.method public removeTabBarBadge(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 3

    const-string v0, "index"

    .line 1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    invoke-direct {p0, p1}, Lcom/dcloud/android/widget/TabView;->getCommonItemByIndex(I)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 4
    sget v0, Lio/dcloud/base/R$id;->itemBadge:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x4

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1c
    return-void
.end method

.method public setDoubleCallbackListener(Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/TabView;->mIDoubleCallback:Lio/dcloud/common/DHInterface/ICallBack;

    return-void
.end method

.method public setMask(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_10

    const-string v1, "color"

    .line 1
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 2
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_11

    :cond_10
    move-object p1, v0

    :goto_11
    const-string v1, "none"

    .line 4
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_48

    .line 5
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mMask:Landroid/widget/LinearLayout;

    if-nez v0, :cond_59

    .line 6
    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dcloud/android/widget/TabView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->mMask:Landroid/widget/LinearLayout;

    .line 7
    iget-object v1, p0, Lcom/dcloud/android/widget/TabView;->mOnMaskClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mMask:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/dcloud/android/widget/TabView;->mDefaultMaskBackgroundColor:Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/dcloud/android/widget/TabView;->optColor(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mMask:Landroid/widget/LinearLayout;

    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_59

    .line 11
    :cond_48
    iget-object p1, p0, Lcom/dcloud/android/widget/TabView;->mMask:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_59

    .line 12
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/dcloud/android/widget/TabView;->mMask:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 13
    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->mMask:Landroid/widget/LinearLayout;

    :cond_59
    :goto_59
    return-void
.end method

.method public setMaskCallbackListener(Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/TabView;->mIMaskCallback:Lio/dcloud/common/DHInterface/ICallBack;

    return-void
.end method

.method public setMidCallbackListener(Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/TabView;->mIMidCallback:Lio/dcloud/common/DHInterface/ICallBack;

    return-void
.end method

.method public setSingleCallbackListener(Lio/dcloud/common/DHInterface/ICallBack;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/TabView;->mISingleCallback:Lio/dcloud/common/DHInterface/ICallBack;

    return-void
.end method

.method public setTabBarBadge(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 6

    const-string v0, "index"

    .line 1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "text"

    .line 2
    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0, v0}, Lcom/dcloud/android/widget/TabView;->getCommonItemByIndex(I)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_34

    .line 5
    sget v1, Lio/dcloud/base/R$id;->itemDot:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 6
    sget v2, Lio/dcloud/base/R$id;->itemBadge:I

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x4

    .line 7
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-direct {p0, v0, v2}, Lcom/dcloud/android/widget/TabView;->setDotBadgeMarginTop(Landroid/view/ViewGroup;Landroid/view/View;)V

    const/4 p1, 0x0

    .line 10
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_34
    return-void
.end method

.method public setTabBarItem(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 9

    const-string v0, "index"

    .line 1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const-string v0, "text"

    .line 2
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "iconPath"

    .line 3
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "selectedIconPath"

    .line 4
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "visible"

    .line 7
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 8
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getBooleanValue(Ljava/lang/String;)Z

    move-result p1

    move v6, p1

    goto :goto_2c

    :cond_2a
    const/4 p1, 0x1

    const/4 v6, 0x1

    :goto_2c
    move-object v1, p0

    .line 10
    invoke-direct/range {v1 .. v6}, Lcom/dcloud/android/widget/TabView;->setCommonItemJson(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public setTabBarStyle(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 5

    const-string v0, "color"

    .line 1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 2
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->mTextColor:Ljava/lang/String;

    :cond_e
    const-string v0, "selectedColor"

    .line 4
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 5
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->mSelectedColor:Ljava/lang/String;

    :cond_1c
    const-string v0, "backgroundColor"

    .line 7
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 8
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->mBackgroundColor:Ljava/lang/String;

    :cond_2a
    const-string v0, "backgroundImage"

    .line 10
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_38

    .line 11
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->mBackgroundImage:Ljava/lang/String;

    :cond_38
    const-string v0, "borderStyle"

    .line 13
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_46

    .line 14
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->mBorderStyle:Ljava/lang/String;

    :cond_46
    const-string v0, "height"

    .line 16
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 17
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->mTabHeightStr:Ljava/lang/String;

    .line 18
    iget v1, p0, Lcom/dcloud/android/widget/TabView;->mScale:F

    const/4 v2, 0x0

    invoke-static {v0, v2, v2, v1}, Lio/dcloud/common/util/PdrUtil;->parseFloat(Ljava/lang/String;FFF)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/dcloud/android/widget/TabView;->mTabHeight:I

    :cond_5e
    const-string v0, "midButton"

    .line 20
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 21
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->mMidButton:Lcom/alibaba/fastjson/JSONObject;

    :cond_6c
    const-string v0, "fontSize"

    .line 23
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7a

    .line 24
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->mTextSize:Ljava/lang/String;

    :cond_7a
    const-string v0, "iconWidth"

    .line 26
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_88

    .line 27
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->mImageSize:Ljava/lang/String;

    :cond_88
    const-string v0, "backgroundRepeat"

    .line 29
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_96

    .line 30
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/android/widget/TabView;->repeatType:Ljava/lang/String;

    .line 32
    :cond_96
    invoke-direct {p0}, Lcom/dcloud/android/widget/TabView;->initTabStyle()V

    .line 33
    invoke-direct {p0}, Lcom/dcloud/android/widget/TabView;->setTabItemStyle()V

    .line 34
    invoke-direct {p0}, Lcom/dcloud/android/widget/TabView;->setSelectedStyle()V

    const-string v0, "redDotColor"

    .line 36
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e8

    .line 37
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 38
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e8

    .line 39
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v0

    .line 40
    iget v1, p0, Lcom/dcloud/android/widget/TabView;->redDotColor:I

    if-eq v1, v0, :cond_e8

    .line 41
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/dcloud/android/widget/TabView;->redDotColor:I

    const/4 p1, 0x0

    .line 43
    :goto_c0
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mTabItemViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_e8

    .line 44
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView;->mTabItemViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_e5

    .line 46
    sget v1, Lio/dcloud/base/R$id;->itemDot:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iget v1, p0, Lcom/dcloud/android/widget/TabView;->redDotColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_e5
    add-int/lit8 p1, p1, 0x1

    goto :goto_c0

    :cond_e8
    return-void
.end method

.method public showTabBarRedDot(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 5

    const-string v0, "index"

    .line 1
    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    invoke-direct {p0, p1}, Lcom/dcloud/android/widget/TabView;->getCommonItemByIndex(I)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_2b

    .line 4
    sget v0, Lio/dcloud/base/R$id;->itemDot:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 5
    sget v1, Lio/dcloud/base/R$id;->itemBadge:I

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x4

    .line 6
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    invoke-direct {p0, p1, v0}, Lcom/dcloud/android/widget/TabView;->setDotBadgeMarginTop(Landroid/view/ViewGroup;Landroid/view/View;)V

    const/4 p1, 0x0

    .line 8
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2b
    return-void
.end method

.method public switchTab(I)V
    .registers 2

    .line 1
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dcloud/android/widget/TabView;->mCommonSelectedIndex:Ljava/lang/String;

    .line 2
    invoke-direct {p0}, Lcom/dcloud/android/widget/TabView;->setSelectedStyle()V

    return-void
.end method

.method public updateMidButton(Lcom/alibaba/fastjson/JSONObject;)V
    .registers 2

    if-eqz p1, :cond_4

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/TabView;->mMidButton:Lcom/alibaba/fastjson/JSONObject;

    .line 3
    :cond_4
    invoke-direct {p0}, Lcom/dcloud/android/widget/TabView;->updateMidItemStyle()V

    return-void
.end method

###### Class com.dcloud.android.widget.TabView.AnonymousClass1 (com.dcloud.android.widget.TabView$1)
.class Lcom/dcloud/android/widget/TabView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lpl/droidsonroids/gif/AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/dcloud/android/widget/TabView;->setSelectedStyle()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/widget/TabView;

.field final synthetic val$iconIV:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Lcom/dcloud/android/widget/TabView;Landroid/widget/ImageView;)V
    .registers 3

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/TabView$1;->this$0:Lcom/dcloud/android/widget/TabView;

    iput-object p2, p0, Lcom/dcloud/android/widget/TabView$1;->val$iconIV:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCompleted(I)V
    .registers 3

    .line 1
    iget-object p1, p0, Lcom/dcloud/android/widget/TabView$1;->val$iconIV:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lpl/droidsonroids/gif/GifDrawable;

    if-eqz v0, :cond_16

    .line 3
    check-cast p1, Lpl/droidsonroids/gif/GifDrawable;

    invoke-virtual {p1}, Lpl/droidsonroids/gif/GifDrawable;->getNumberOfFrames()I

    move-result v0

    invoke-virtual {p1, v0}, Lpl/droidsonroids/gif/GifDrawable;->seekToFrame(I)V

    .line 4
    invoke-virtual {p1, p0}, Lpl/droidsonroids/gif/GifDrawable;->removeAnimationListener(Lpl/droidsonroids/gif/AnimationListener;)Z

    :cond_16
    return-void
.end method

###### Class com.dcloud.android.widget.TabView.AnonymousClass2 (com.dcloud.android.widget.TabView$2)
.class Lcom/dcloud/android/widget/TabView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/widget/TabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field X:F

.field Y:F

.field downInMid:Z

.field downTime:J

.field final synthetic this$0:Lcom/dcloud/android/widget/TabView;


# direct methods
.method constructor <init>(Lcom/dcloud/android/widget/TabView;)V
    .registers 4

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/TabView$2;->this$0:Lcom/dcloud/android/widget/TabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/dcloud/android/widget/TabView$2;->downTime:J

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/dcloud/android/widget/TabView$2;->X:F

    iput p1, p0, Lcom/dcloud/android/widget/TabView$2;->Y:F

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/dcloud/android/widget/TabView$2;->downInMid:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    .line 1
    iget-object p1, p0, Lcom/dcloud/android/widget/TabView$2;->this$0:Lcom/dcloud/android/widget/TabView;

    invoke-static {p1}, Lcom/dcloud/android/widget/TabView;->access$000(Lcom/dcloud/android/widget/TabView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_c3

    iget-object p1, p0, Lcom/dcloud/android/widget/TabView$2;->this$0:Lcom/dcloud/android/widget/TabView;

    invoke-static {p1}, Lcom/dcloud/android/widget/TabView;->access$000(Lcom/dcloud/android/widget/TabView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/RelativeLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_c3

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-eqz p1, :cond_64

    const/4 v1, 0x1

    if-eq p1, v1, :cond_20

    goto/16 :goto_c5

    .line 17
    :cond_20
    iget-boolean p1, p0, Lcom/dcloud/android/widget/TabView$2;->downInMid:Z

    if-eqz p1, :cond_c5

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/dcloud/android/widget/TabView$2;->downTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x1f4

    cmp-long p1, v1, v3

    if-gez p1, :cond_c5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v1, p0, Lcom/dcloud/android/widget/TabView$2;->Y:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v1, 0x428c0000    # 70.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_c5

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget p2, p0, Lcom/dcloud/android/widget/TabView$2;->X:F

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_c5

    .line 19
    iget-object p1, p0, Lcom/dcloud/android/widget/TabView$2;->this$0:Lcom/dcloud/android/widget/TabView;

    invoke-static {p1}, Lcom/dcloud/android/widget/TabView;->access$200(Lcom/dcloud/android/widget/TabView;)Lio/dcloud/common/DHInterface/ICallBack;

    move-result-object p1

    if-eqz p1, :cond_c5

    .line 20
    iget-object p1, p0, Lcom/dcloud/android/widget/TabView$2;->this$0:Lcom/dcloud/android/widget/TabView;

    invoke-static {p1}, Lcom/dcloud/android/widget/TabView;->access$200(Lcom/dcloud/android/widget/TabView;)Lio/dcloud/common/DHInterface/ICallBack;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, v0, p2}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_c5

    .line 21
    :cond_64
    iget-object p1, p0, Lcom/dcloud/android/widget/TabView$2;->this$0:Lcom/dcloud/android/widget/TabView;

    invoke-static {p1}, Lcom/dcloud/android/widget/TabView;->access$000(Lcom/dcloud/android/widget/TabView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    if-eqz p1, :cond_ae

    .line 22
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_ae

    .line 23
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getTop()I

    move-result v2

    iget-object v3, p0, Lcom/dcloud/android/widget/TabView$2;->this$0:Lcom/dcloud/android/widget/TabView;

    invoke-static {v3}, Lcom/dcloud/android/widget/TabView;->access$100(Lcom/dcloud/android/widget/TabView;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTop()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getRight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getBottom()I

    move-result p1

    iget-object v4, p0, Lcom/dcloud/android/widget/TabView$2;->this$0:Lcom/dcloud/android/widget/TabView;

    invoke-static {v4}, Lcom/dcloud/android/widget/TabView;->access$100(Lcom/dcloud/android/widget/TabView;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getTop()I

    move-result v4

    add-int/2addr p1, v4

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 24
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    iput-boolean p1, p0, Lcom/dcloud/android/widget/TabView$2;->downInMid:Z

    goto :goto_b0

    .line 26
    :cond_ae
    iput-boolean v0, p0, Lcom/dcloud/android/widget/TabView$2;->downInMid:Z

    .line 28
    :goto_b0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/dcloud/android/widget/TabView$2;->downTime:J

    .line 29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/dcloud/android/widget/TabView$2;->X:F

    .line 30
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/dcloud/android/widget/TabView$2;->Y:F

    goto :goto_c5

    .line 43
    :cond_c3
    iput-boolean v0, p0, Lcom/dcloud/android/widget/TabView$2;->downInMid:Z

    .line 45
    :cond_c5
    :goto_c5
    iget-boolean p1, p0, Lcom/dcloud/android/widget/TabView$2;->downInMid:Z

    return p1
.end method

###### Class com.dcloud.android.widget.TabView.AnonymousClass3 (com.dcloud.android.widget.TabView$3)
.class Lcom/dcloud/android/widget/TabView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/widget/TabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/widget/TabView;


# direct methods
.method constructor <init>(Lcom/dcloud/android/widget/TabView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/TabView$3;->this$0:Lcom/dcloud/android/widget/TabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$3;->this$0:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0, p1}, Lcom/dcloud/android/widget/TabView;->switchTab(I)V

    .line 3
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$3;->this$0:Lcom/dcloud/android/widget/TabView;

    invoke-static {v0}, Lcom/dcloud/android/widget/TabView;->access$300(Lcom/dcloud/android/widget/TabView;)Lio/dcloud/common/DHInterface/ICallBack;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 4
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$3;->this$0:Lcom/dcloud/android/widget/TabView;

    invoke-static {v0}, Lcom/dcloud/android/widget/TabView;->access$300(Lcom/dcloud/android/widget/TabView;)Lio/dcloud/common/DHInterface/ICallBack;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-void
.end method

###### Class com.dcloud.android.widget.TabView.AnonymousClass4 (com.dcloud.android.widget.TabView$4)
.class Lcom/dcloud/android/widget/TabView$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/widget/TabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/dcloud/android/widget/TabView;


# direct methods
.method constructor <init>(Lcom/dcloud/android/widget/TabView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/TabView$4;->this$0:Lcom/dcloud/android/widget/TabView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 1
    iget-object p1, p0, Lcom/dcloud/android/widget/TabView$4;->this$0:Lcom/dcloud/android/widget/TabView;

    invoke-static {p1}, Lcom/dcloud/android/widget/TabView;->access$400(Lcom/dcloud/android/widget/TabView;)Lio/dcloud/common/DHInterface/ICallBack;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 2
    iget-object p1, p0, Lcom/dcloud/android/widget/TabView$4;->this$0:Lcom/dcloud/android/widget/TabView;

    invoke-static {p1}, Lcom/dcloud/android/widget/TabView;->access$400(Lcom/dcloud/android/widget/TabView;)Lio/dcloud/common/DHInterface/ICallBack;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lio/dcloud/common/DHInterface/ICallBack;->onCallBack(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_13
    return-void
.end method

###### Class com.dcloud.android.widget.TabView.BackGroundDrawable (com.dcloud.android.widget.TabView$BackGroundDrawable)
.class Lcom/dcloud/android/widget/TabView$BackGroundDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dcloud/android/widget/TabView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BackGroundDrawable"
.end annotation


# instance fields
.field private bitmapPath:Ljava/lang/String;

.field private bound:Landroid/graphics/Rect;

.field private colorPaint:Landroid/graphics/Paint;

.field private mBackgroundBitmap:Landroid/graphics/Shader;

.field private mBackgroundColor:I

.field private mPaint:Landroid/graphics/Paint;

.field private repeat:Ljava/lang/String;

.field final synthetic this$0:Lcom/dcloud/android/widget/TabView;


# direct methods
.method constructor <init>(Lcom/dcloud/android/widget/TabView;)V
    .registers 2

    .line 1
    iput-object p1, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->this$0:Lcom/dcloud/android/widget/TabView;

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    .line 4
    iput-object p1, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->bitmapPath:Ljava/lang/String;

    const-string p1, "no-repeat"

    .line 5
    iput-object p1, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->repeat:Ljava/lang/String;

    const/4 p1, 0x0

    .line 187
    iput p1, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->mBackgroundColor:I

    return-void
.end method

.method private getShader(Ljava/util/List;FF)Landroid/graphics/Shader;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;FF)",
            "Landroid/graphics/Shader;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, p2, p3}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->parseGradientDirection(Ljava/lang/String;FF)[F

    move-result-object p2

    if-nez p2, :cond_13

    const/4 p1, 0x0

    return-object p1

    .line 4
    :cond_13
    new-instance p3, Landroid/graphics/LinearGradient;

    aget v1, p2, v0

    const/4 v0, 0x1

    aget v2, p2, v0

    const/4 v3, 0x2

    aget v4, p2, v3

    const/4 v5, 0x3

    aget p2, p2, v5

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v5

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->stringToColor(Ljava/lang/String;)I

    move-result v6

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v0, p3

    move v3, v4

    move v4, p2

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    return-object p3
.end method

.method private parseGradientDirection(Ljava/lang/String;FF)[F
    .registers 12

    const/4 v0, 0x4

    new-array v1, v0, [F

    .line 1
    fill-array-data v1, :array_b0

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_18

    const-string v2, "\\s*"

    const-string v3, ""

    .line 4
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_18
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v3, :sswitch_data_86

    :goto_2a
    const/4 v0, -0x1

    goto :goto_6b

    :sswitch_2c
    const-string v0, "tobottomright"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_35

    goto :goto_2a

    :cond_35
    const/4 v0, 0x5

    goto :goto_6b

    :sswitch_37
    const-string v3, "totop"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6b

    goto :goto_2a

    :sswitch_40
    const-string v0, "totopleft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_49

    goto :goto_2a

    :cond_49
    const/4 v0, 0x3

    goto :goto_6b

    :sswitch_4b
    const-string v0, "toleft"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_54

    goto :goto_2a

    :cond_54
    const/4 v0, 0x2

    goto :goto_6b

    :sswitch_56
    const-string v0, "toright"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5f

    goto :goto_2a

    :cond_5f
    const/4 v0, 0x1

    goto :goto_6b

    :sswitch_61
    const-string v0, "tobottom"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6a

    goto :goto_2a

    :cond_6a
    const/4 v0, 0x0

    :cond_6b
    :goto_6b
    packed-switch v0, :pswitch_data_a0

    const/4 p1, 0x0

    return-object p1

    :pswitch_70
    aput p2, v1, v5

    aput p3, v1, v4

    goto :goto_85

    :pswitch_75
    aput p3, v1, v6

    goto :goto_85

    :pswitch_78
    aput p2, v1, v7

    aput p3, v1, v6

    goto :goto_85

    :pswitch_7d
    aput p2, v1, v7

    goto :goto_85

    :pswitch_80
    aput p2, v1, v5

    goto :goto_85

    :pswitch_83
    aput p3, v1, v4

    :goto_85
    return-object v1

    :sswitch_data_86
    .sparse-switch
        -0x50965f9a -> :sswitch_61
        -0x43cb777f -> :sswitch_56
        -0x33bf06fe -> :sswitch_4b
        -0xa418fff -> :sswitch_40
        0x696dcfa -> :sswitch_37
        0x46207176 -> :sswitch_2c
    .end sparse-switch

    :pswitch_data_a0
    .packed-switch 0x0
        :pswitch_83
        :pswitch_80
        :pswitch_7d
        :pswitch_78
        :pswitch_75
        :pswitch_70
    .end packed-switch

    :array_b0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method private parseGradientValues(Ljava/lang/String;)Ljava/util/List;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ")"

    const-string v1, "("

    const-string v2, ","

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_e

    return-object v4

    .line 4
    :cond_e
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    :try_start_11
    const-string v3, "linear-gradient"

    .line 6
    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_85

    .line 7
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p1, v3, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 8
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_31
    move-object v5, v4

    .line 11
    :goto_32
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_84

    .line 12
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v6

    .line 13
    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_52

    .line 14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_32

    .line 17
    :cond_52
    invoke-virtual {v6, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_6b

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 19
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_31

    :cond_6b
    if-eqz v5, :cond_80

    .line 24
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_32

    .line 27
    :cond_80
    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_83} :catch_85

    goto :goto_32

    :cond_84
    return-object p1

    :catch_85
    :cond_85
    return-object v4
.end method

.method private scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .registers 12

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_4
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->repeat:Ljava/lang/String;

    const-string v1, "repeat"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    return-object p1

    .line 4
    :cond_f
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float p2, p2

    int-to-float v0, v4

    div-float/2addr p2, v0

    int-to-float p3, p3

    int-to-float v0, v5

    div-float/2addr p3, v0

    .line 8
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 9
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->repeat:Ljava/lang/String;

    const-string v1, "repeat-x"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_32

    .line 10
    invoke-virtual {v6, v1, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_43

    .line 11
    :cond_32
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->repeat:Ljava/lang/String;

    const-string v2, "repeat-y"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 12
    invoke-virtual {v6, p2, v1}, Landroid/graphics/Matrix;->preScale(FF)Z

    goto :goto_43

    .line 14
    :cond_40
    invoke-virtual {v6, p2, p3}, Landroid/graphics/Matrix;->preScale(FF)Z

    :goto_43
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    .line 16
    invoke-static/range {v1 .. v7}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    if-nez v0, :cond_a

    .line 2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    .line 3
    :cond_a
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    const/4 v1, 0x0

    const/16 v2, 0xff

    if-eqz v0, :cond_37

    .line 4
    invoke-virtual {p0}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v3, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 5
    invoke-virtual {p0}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->getBackgroundColorPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->getBackgroundColorPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->getBackgroundColorPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_6f

    .line 8
    :cond_37
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->bitmapPath:Ljava/lang/String;

    if-eqz v0, :cond_66

    .line 9
    invoke-virtual {p0, v0}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->setBackgroundImage(Ljava/lang/String;)V

    .line 10
    iput-object v1, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->bitmapPath:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->getBackgroundColorPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->getBackgroundColorPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Paint;->getAlpha()I

    move-result v3

    invoke-static {v3, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->getBackgroundColorPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 13
    invoke-virtual {p0}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v2, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_6f

    .line 15
    :cond_66
    invoke-virtual {p0}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v2, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->mBackgroundColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    :goto_6f
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 20
    iget-object p1, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    if-eqz p1, :cond_83

    .line 21
    invoke-virtual {p0}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_83
    return-void
.end method

.method public getBackgroundColorPaint()Landroid/graphics/Paint;
    .registers 2

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->colorPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_b

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->colorPaint:Landroid/graphics/Paint;

    .line 3
    :cond_b
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->colorPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getOpacity()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->mPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_c

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->mPaint:Landroid/graphics/Paint;

    .line 3
    :cond_c
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->mPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public setAlpha(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->bitmapPath:Ljava/lang/String;

    if-eqz v0, :cond_16

    .line 2
    :cond_8
    invoke-virtual {p0}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 3
    invoke-virtual {p0}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->getBackgroundColorPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_16
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    if-eqz v0, :cond_c

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->setAlpha(I)V

    goto :goto_e

    .line 4
    :cond_c
    iput p1, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->mBackgroundColor:I

    .line 6
    :goto_e
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public setBackgroundImage(Ljava/lang/String;)V
    .registers 8

    .line 1
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    if-eqz v0, :cond_da

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_da

    :cond_c
    if-nez p1, :cond_f

    return-void

    .line 8
    :cond_f
    invoke-direct {p0, p1}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->parseGradientValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_32

    .line 10
    iget-object p1, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    iget-object v1, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p0, v0, p1, v1}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->getShader(Ljava/util/List;FF)Landroid/graphics/Shader;

    move-result-object p1

    iput-object p1, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    goto/16 :goto_d6

    .line 12
    :cond_32
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->this$0:Lcom/dcloud/android/widget/TabView;

    invoke-static {v0, p1}, Lcom/dcloud/android/widget/TabView;->access$500(Lcom/dcloud/android/widget/TabView;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "file:///android_asset/"

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_5f

    .line 15
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 17
    :try_start_47
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->this$0:Lcom/dcloud/android/widget/TabView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_59} :catch_5a

    goto :goto_71

    :catch_5a
    move-exception p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_70

    :cond_5f
    const-string v0, "file://"

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_70

    .line 22
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_71

    :cond_70
    :goto_70
    move-object p1, v3

    :goto_71
    if-nez p1, :cond_7b

    .line 26
    iput-object v3, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    .line 27
    iput-object v3, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->bitmapPath:Ljava/lang/String;

    .line 28
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 31
    :cond_7b
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v0

    if-eqz v0, :cond_b8

    .line 32
    invoke-static {v0}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 33
    new-instance v1, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v1, p1, v0, v2, v3}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    .line 34
    iget-object p1, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 35
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 36
    invoke-virtual {v0}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v5, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 37
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_c8

    .line 39
    :cond_b8
    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->bound:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_c8
    if-nez p1, :cond_cd

    .line 42
    iput-object v3, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    goto :goto_d6

    .line 44
    :cond_cd
    new-instance v0, Landroid/graphics/BitmapShader;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    .line 47
    :goto_d6
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    .line 48
    :cond_da
    :goto_da
    iput-object p1, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->bitmapPath:Ljava/lang/String;

    return-void
.end method

.method public setBackgroundRepeat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1
    invoke-static {p1}, Lio/dcloud/common/util/PdrUtil;->isEmpty(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->repeat:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 2
    iput-object p1, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->repeat:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->mBackgroundBitmap:Landroid/graphics/Shader;

    .line 4
    invoke-virtual {p0, p2}, Lcom/dcloud/android/widget/TabView$BackGroundDrawable;->setBackgroundImage(Ljava/lang/String;)V

    :cond_1c
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .registers 2

    return-void
.end method
