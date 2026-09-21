###### Class com.taobao.weex.common.Constants (com.taobao.weex.common.Constants)
.class public Lcom/taobao/weex/common/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/common/Constants$TimeFunction;,
        Lcom/taobao/weex/common/Constants$CodeCache;,
        Lcom/taobao/weex/common/Constants$Scheme;,
        Lcom/taobao/weex/common/Constants$PSEUDO;,
        Lcom/taobao/weex/common/Constants$Event;,
        Lcom/taobao/weex/common/Constants$Value;,
        Lcom/taobao/weex/common/Constants$Name;,
        Lcom/taobao/weex/common/Constants$Weex;,
        Lcom/taobao/weex/common/Constants$Orientation;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

###### Class com.taobao.weex.common.Constants.CodeCache (com.taobao.weex.common.Constants$CodeCache)
.class public interface abstract Lcom/taobao/weex/common/Constants$CodeCache;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CodeCache"
.end annotation


# static fields
.field public static final BANNER_DIGEST:Ljava/lang/String; = "digest"

.field public static final DIGEST:Ljava/lang/String; = "bundleDigest"

.field public static final PATH:Ljava/lang/String; = "codeCachePath"

.field public static final SAVE_PATH:Ljava/lang/String; = "v8"

.field public static final URL:Ljava/lang/String; = "bundleUrl"

###### Class com.taobao.weex.common.Constants.Event (com.taobao.weex.common.Constants$Event)
.class public interface abstract Lcom/taobao/weex/common/Constants$Event;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Event"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/common/Constants$Event$SLOT_LIFECYCLE;
    }
.end annotation


# static fields
.field public static final APPEAR:Ljava/lang/String; = "appear"

.field public static final BLUR:Ljava/lang/String; = "blur"

.field public static final CHANGE:Ljava/lang/String; = "change"

.field public static final CLICK:Ljava/lang/String; = "click"

.field public static final CLICKBACKITEM:Ljava/lang/String; = "clickbackitem"

.field public static final DISAPPEAR:Ljava/lang/String; = "disappear"

.field public static final ERROR:Ljava/lang/String; = "error"

.field public static final FAIL:Ljava/lang/String; = "fail"

.field public static final FINISH:Ljava/lang/String; = "finish"

.field public static final FOCUS:Ljava/lang/String; = "focus"

.field public static final INPUT:Ljava/lang/String; = "input"

.field public static final KEYBOARD:Ljava/lang/String; = "keyboard"

.field public static final LAYEROVERFLOW:Ljava/lang/String; = "layeroverflow"

.field public static final LOADMORE:Ljava/lang/String; = "loadmore"

.field public static final NATIVE_BACK:Ljava/lang/String; = "nativeback"

.field public static final ONLOAD:Ljava/lang/String; = "load"

.field public static final ONLOADING:Ljava/lang/String; = "loading"

.field public static final ONMESSAGE:Ljava/lang/String; = "message"

.field public static final ONPULLING_DOWN:Ljava/lang/String; = "pullingdown"

.field public static final ONPULLING_UP:Ljava/lang/String; = "pullingup"

.field public static final ONREFRESH:Ljava/lang/String; = "refresh"

.field public static final ON_TRANSITION_END:Ljava/lang/String; = "transitionEnd"

.field public static final PAGEFINISH:Ljava/lang/String; = "pagefinish"

.field public static final PAGESTART:Ljava/lang/String; = "pagestart"

.field public static final PAUSE:Ljava/lang/String; = "pause"

.field public static final PAUSE_EVENT:Ljava/lang/String; = "WXApplicationWillResignActiveEvent"

.field public static final RECEIVEDTITLE:Ljava/lang/String; = "receivedtitle"

.field public static final RESUME_EVENT:Ljava/lang/String; = "WXApplicationDidBecomeActiveEvent"

.field public static final RETURN:Ljava/lang/String; = "return"

.field public static final SCROLL:Ljava/lang/String; = "scroll"

.field public static final SCROLL_END:Ljava/lang/String; = "scrollend"

.field public static final SCROLL_START:Ljava/lang/String; = "scrollstart"

.field public static final START:Ljava/lang/String; = "start"

.field public static final STICKY:Ljava/lang/String; = "sticky"

.field public static final STOP_PROPAGATION:Ljava/lang/String; = "stopPropagation"

.field public static final STOP_PROPAGATION_RAX:Ljava/lang/String; = "stoppropagation"

.field public static final UNSTICKY:Ljava/lang/String; = "unsticky"

.field public static final VIEWAPPEAR:Ljava/lang/String; = "viewappear"

.field public static final VIEWDISAPPEAR:Ljava/lang/String; = "viewdisappear"

###### Class com.taobao.weex.common.Constants.Event.SLOT_LIFECYCLE (com.taobao.weex.common.Constants$Event$SLOT_LIFECYCLE)
.class public interface abstract Lcom/taobao/weex/common/Constants$Event$SLOT_LIFECYCLE;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/Constants$Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SLOT_LIFECYCLE"
.end annotation


# static fields
.field public static final ATTACH:Ljava/lang/String; = "attach"

.field public static final CREATE:Ljava/lang/String; = "create"

.field public static final DESTORY:Ljava/lang/String; = "destroy"

.field public static final DETACH:Ljava/lang/String; = "detach"

###### Class com.taobao.weex.common.Constants.Name (com.taobao.weex.common.Constants$Name)
.class public interface abstract Lcom/taobao/weex/common/Constants$Name;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Name"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/taobao/weex/common/Constants$Name$Recycler;
    }
.end annotation


# static fields
.field public static final ALIGN_ITEMS:Ljava/lang/String; = "alignItems"

.field public static final ALIGN_SELF:Ljava/lang/String; = "alignSelf"

.field public static final ALLOW_COPY_PASTE:Ljava/lang/String; = "allowCopyPaste"

.field public static final ANIMATED:Ljava/lang/String; = "animated"

.field public static final ANIMATING:Ljava/lang/String; = "animating"

.field public static final ARIA_HIDDEN:Ljava/lang/String; = "ariaHidden"

.field public static final ARIA_LABEL:Ljava/lang/String; = "ariaLabel"

.field public static final AUTO:Ljava/lang/String; = "auto"

.field public static final AUTOFOCUS:Ljava/lang/String; = "autofocus"

.field public static final AUTOPLAY:Ljava/lang/String; = "autoplay"

.field public static final AUTO_PLAY:Ljava/lang/String; = "autoPlay"

.field public static final AUTO_RECYCLE:Ljava/lang/String; = "autoBitmapRecycle"

.field public static final BACKGROUND_COLOR:Ljava/lang/String; = "backgroundColor"

.field public static final BACKGROUND_IMAGE:Ljava/lang/String; = "backgroundImage"

.field public static final BORDER_BOTTOM_COLOR:Ljava/lang/String; = "borderBottomColor"

.field public static final BORDER_BOTTOM_LEFT_RADIUS:Ljava/lang/String; = "borderBottomLeftRadius"

.field public static final BORDER_BOTTOM_RIGHT_RADIUS:Ljava/lang/String; = "borderBottomRightRadius"

.field public static final BORDER_BOTTOM_STYLE:Ljava/lang/String; = "borderBottomStyle"

.field public static final BORDER_BOTTOM_WIDTH:Ljava/lang/String; = "borderBottomWidth"

.field public static final BORDER_COLOR:Ljava/lang/String; = "borderColor"

.field public static final BORDER_LEFT_COLOR:Ljava/lang/String; = "borderLeftColor"

.field public static final BORDER_LEFT_STYLE:Ljava/lang/String; = "borderLeftStyle"

.field public static final BORDER_LEFT_WIDTH:Ljava/lang/String; = "borderLeftWidth"

.field public static final BORDER_RADIUS:Ljava/lang/String; = "borderRadius"

.field public static final BORDER_RIGHT_COLOR:Ljava/lang/String; = "borderRightColor"

.field public static final BORDER_RIGHT_STYLE:Ljava/lang/String; = "borderRightStyle"

.field public static final BORDER_RIGHT_WIDTH:Ljava/lang/String; = "borderRightWidth"

.field public static final BORDER_STYLE:Ljava/lang/String; = "borderStyle"

.field public static final BORDER_TOP_COLOR:Ljava/lang/String; = "borderTopColor"

.field public static final BORDER_TOP_LEFT_RADIUS:Ljava/lang/String; = "borderTopLeftRadius"

.field public static final BORDER_TOP_RIGHT_RADIUS:Ljava/lang/String; = "borderTopRightRadius"

.field public static final BORDER_TOP_STYLE:Ljava/lang/String; = "borderTopStyle"

.field public static final BORDER_TOP_WIDTH:Ljava/lang/String; = "borderTopWidth"

.field public static final BORDER_WIDTH:Ljava/lang/String; = "borderWidth"

.field public static final BOTTOM:Ljava/lang/String; = "bottom"

.field public static final BOUNCE:Ljava/lang/String; = "bounce"

.field public static final BOX_SHADOW:Ljava/lang/String; = "boxShadow"

.field public static final CHECKED:Ljava/lang/String; = "checked"

.field public static final COLOR:Ljava/lang/String; = "color"

.field public static final COLUMN_COUNT:Ljava/lang/String; = "columnCount"

.field public static final COLUMN_GAP:Ljava/lang/String; = "columnGap"

.field public static final COLUMN_WIDTH:Ljava/lang/String; = "columnWidth"

.field public static final CONTENT_OFFSET:Ljava/lang/String; = "contentOffset"

.field public static final CONTENT_SIZE:Ljava/lang/String; = "contentSize"

.field public static final CONTROLS:Ljava/lang/String; = "controls"

.field public static final DEFAULT_HEIGHT:Ljava/lang/String; = "defaultHeight"

.field public static final DEFAULT_WIDTH:Ljava/lang/String; = "defaultWidth"

.field public static final DELETE_CELL_ANIMATION:Ljava/lang/String; = "deleteAnimation"

.field public static final DIRECTION:Ljava/lang/String; = "direction"

.field public static final DISABLED:Ljava/lang/String; = "disabled"

.field public static final DISPLAY:Ljava/lang/String; = "display"

.field public static final DISTANCE_Y:Ljava/lang/String; = "dy"

.field public static final DRAGGABLE:Ljava/lang/String; = "draggable"

.field public static final ELEVATION:Ljava/lang/String; = "elevation"

.field public static final ELLIPSIS:Ljava/lang/String; = "ellipsis"

.field public static final ENABLE_COPY:Ljava/lang/String; = "enableCopy"

.field public static final FILTER:Ljava/lang/String; = "filter"

.field public static final FLAT:Ljava/lang/String; = "flat"

.field public static final FLEX:Ljava/lang/String; = "flex"

.field public static final FLEX_DIRECTION:Ljava/lang/String; = "flexDirection"

.field public static final FLEX_WRAP:Ljava/lang/String; = "flexWrap"

.field public static final FONT_FACE:Ljava/lang/String; = "fontFace"

.field public static final FONT_FAMILY:Ljava/lang/String; = "fontFamily"

.field public static final FONT_SIZE:Ljava/lang/String; = "fontSize"

.field public static final FONT_STYLE:Ljava/lang/String; = "fontStyle"

.field public static final FONT_WEIGHT:Ljava/lang/String; = "fontWeight"

.field public static final HAS_FIXED_SIZE:Ljava/lang/String; = "hasFixedSize"

.field public static final HEIGHT:Ljava/lang/String; = "height"

.field public static final HREF:Ljava/lang/String; = "href"

.field public static final IMAGE_QUALITY:Ljava/lang/String; = "imageQuality"

.field public static final IMAGE_SHARPEN:Ljava/lang/String; = "imageSharpen"

.field public static final INCLUDE_FONT_PADDING:Ljava/lang/String; = "includeFontPadding"

.field public static final INDEX:Ljava/lang/String; = "index"

.field public static final INSERT_CELL_ANIMATION:Ljava/lang/String; = "insertAnimation"

.field public static final INTERVAL:Ljava/lang/String; = "interval"

.field public static final ISDRAGGING:Ljava/lang/String; = "isDragging"

.field public static final ITEM_COLOR:Ljava/lang/String; = "itemColor"

.field public static final ITEM_SELECTED_COLOR:Ljava/lang/String; = "itemSelectedColor"

.field public static final ITEM_SIZE:Ljava/lang/String; = "itemSize"

.field public static final JUSTIFY_CONTENT:Ljava/lang/String; = "justifyContent"

.field public static final KEEP_INDEX:Ljava/lang/String; = "keepIndex"

.field public static final KEEP_POSITION_LAYOUT_DELAY:Ljava/lang/String; = "keepPositionLayoutDelay"

.field public static final KEEP_SCROLL_POSITION:Ljava/lang/String; = "keepScrollPosition"

.field public static final KEEP_SELECTION_INDEX:Ljava/lang/String; = "keepSelectionIndex"

.field public static final LAYERLIMIT:Ljava/lang/String; = "layerLimit"

.field public static final LAYER_LIMIT:Ljava/lang/String; = "layer-limit"

.field public static final LAYOUT:Ljava/lang/String; = "layout"

.field public static final LEFT:Ljava/lang/String; = "left"

.field public static final LEFT_GAP:Ljava/lang/String; = "leftGap"

.field public static final LINES:Ljava/lang/String; = "lines"

.field public static final LINE_HEIGHT:Ljava/lang/String; = "lineHeight"

.field public static final LOADMOREOFFSET:Ljava/lang/String; = "loadmoreoffset"

.field public static final LOADMORERETRY:Ljava/lang/String; = "loadmoreretry"

.field public static final MARGIN:Ljava/lang/String; = "margin"

.field public static final MARGIN_BOTTOM:Ljava/lang/String; = "marginBottom"

.field public static final MARGIN_LEFT:Ljava/lang/String; = "marginLeft"

.field public static final MARGIN_RIGHT:Ljava/lang/String; = "marginRight"

.field public static final MARGIN_TOP:Ljava/lang/String; = "marginTop"

.field public static final MAX:Ljava/lang/String; = "max"

.field public static final MAXLENGTH:Ljava/lang/String; = "maxlength"

.field public static final MAX_HEIGHT:Ljava/lang/String; = "maxHeight"

.field public static final MAX_LENGTH:Ljava/lang/String; = "maxLength"

.field public static final MAX_WIDTH:Ljava/lang/String; = "maxWidth"

.field public static final MIN:Ljava/lang/String; = "min"

.field public static final MIN_HEIGHT:Ljava/lang/String; = "minHeight"

.field public static final MIN_WIDTH:Ljava/lang/String; = "minWidth"

.field public static final MODE:Ljava/lang/String; = "mode"

.field public static final NAV_BAR_VISIBILITY:Ljava/lang/String; = "hidden"

.field public static final NEST_SCROLLING_ENABLED:Ljava/lang/String; = "nestedScrollingEnabled"

.field public static final NORMAL:Ljava/lang/String; = "normal"

.field public static final OFFSET:Ljava/lang/String; = "offset"

.field public static final OFFSET_ACCURACY:Ljava/lang/String; = "offsetAccuracy"

.field public static final OFFSET_X_ACCURACY:Ljava/lang/String; = "offsetXAccuracy"

.field public static final OFFSET_X_RATIO:Ljava/lang/String; = "offsetXRatio"

.field public static final OPACITY:Ljava/lang/String; = "opacity"

.field public static final ORIENTATION:Ljava/lang/String; = "orientation"

.field public static final OVERFLOW:Ljava/lang/String; = "overflow"

.field public static final OVERFLOW_HIDDEN_HEIGHT:Ljava/lang/String; = "overflowHiddenHeight"

.field public static final OVERFLOW_HIDDEN_WIDTH:Ljava/lang/String; = "overflowHiddenWidth"

.field public static final PADDING:Ljava/lang/String; = "padding"

.field public static final PADDING_BOTTOM:Ljava/lang/String; = "paddingBottom"

.field public static final PADDING_LEFT:Ljava/lang/String; = "paddingLeft"

.field public static final PADDING_RIGHT:Ljava/lang/String; = "paddingRight"

.field public static final PADDING_TOP:Ljava/lang/String; = "paddingTop"

.field public static final PAGE_ENABLED:Ljava/lang/String; = "pagingEnabled"

.field public static final PAGE_SIZE:Ljava/lang/String; = "pageSize"

.field public static final PERSPECTIVE:Ljava/lang/String; = "perspective"

.field public static final PLACEHOLDER:Ljava/lang/String; = "placeholder"

.field public static final PLACEHOLDER_COLOR:Ljava/lang/String; = "placeholderColor"

.field public static final PLACE_HOLDER:Ljava/lang/String; = "placeHolder"

.field public static final PLAY_STATUS:Ljava/lang/String; = "playStatus"

.field public static final POSITION:Ljava/lang/String; = "position"

.field public static final PREFIX:Ljava/lang/String; = "prefix"

.field public static final PREVENT_MOVE_EVENT:Ljava/lang/String; = "preventMoveEvent"

.field public static final PRIORITY:Ljava/lang/String; = "priority"

.field public static final PULLING_DISTANCE:Ljava/lang/String; = "pullingDistance"

.field public static final QUALITY:Ljava/lang/String; = "quality"

.field public static final RECYCLE:Ljava/lang/String; = "recycle"

.field public static final RECYCLE_IMAGE:Ljava/lang/String; = "recycleImage"

.field public static final RESIZE:Ljava/lang/String; = "resize"

.field public static final RESIZE_MODE:Ljava/lang/String; = "resizeMode"

.field public static final RETURN_KEY_TYPE:Ljava/lang/String; = "returnKeyType"

.field public static final RIGHT:Ljava/lang/String; = "right"

.field public static final RIGHT_GAP:Ljava/lang/String; = "rightGap"

.field public static final RIPPLE_ENABLED:Ljava/lang/String; = "rippleEnabled"

.field public static final ROLE:Ljava/lang/String; = "role"

.field public static final ROTATE_FIX:Ljava/lang/String; = "rotateFix"

.field public static final ROWS:Ljava/lang/String; = "rows"

.field public static final RTL:Ljava/lang/String; = "rtl"

.field public static final SCOPE:Ljava/lang/String; = "scope"

.field public static final SCROLLABLE:Ljava/lang/String; = "scrollable"

.field public static final SCROLL_DIRECTION:Ljava/lang/String; = "scrollDirection"

.field public static final SCROLL_LEFT:Ljava/lang/String; = "scrollLeft"

.field public static final SCROLL_TOP:Ljava/lang/String; = "scrollTop"

.field public static final SELECTION_END:Ljava/lang/String; = "selectionEnd"

.field public static final SELECTION_START:Ljava/lang/String; = "selectionStart"

.field public static final SHADOW_QUALITY:Ljava/lang/String; = "shadowQuality"

.field public static final SHARPEN:Ljava/lang/String; = "sharpen"

.field public static final SHOULD_STOP_PROPAGATION_INIT_RESULT:Ljava/lang/String; = "shouldStopPropagationInitResult"

.field public static final SHOULD_STOP_PROPAGATION_INTERVAL:Ljava/lang/String; = "shouldStopPropagationInterval"

.field public static final SHOW_INDICATORS:Ljava/lang/String; = "showIndicators"

.field public static final SHOW_LOADING:Ljava/lang/String; = "show-loading"

.field public static final SHOW_SCROLLBAR:Ljava/lang/String; = "showScrollbar"

.field public static final SINGLELINE:Ljava/lang/String; = "singleline"

.field public static final SOURCE:Ljava/lang/String; = "source"

.field public static final SPAN_OFFSETS:Ljava/lang/String; = "spanOffsets"

.field public static final SRC:Ljava/lang/String; = "src"

.field public static final STABLE:Ljava/lang/String; = "stable"

.field public static final STICKY_OFFSET:Ljava/lang/String; = "stickyOffset"

.field public static final STRATEGY:Ljava/lang/String; = "strategy"

.field public static final SUFFIX:Ljava/lang/String; = "suffix"

.field public static final TEXT_ALIGN:Ljava/lang/String; = "textAlign"

.field public static final TEXT_DECORATION:Ljava/lang/String; = "textDecoration"

.field public static final TEXT_OVERFLOW:Ljava/lang/String; = "textOverflow"

.field public static final TOP:Ljava/lang/String; = "top"

.field public static final TRANSFORM:Ljava/lang/String; = "transform"

.field public static final TRANSFORM_ORIGIN:Ljava/lang/String; = "transformOrigin"

.field public static final TYPE:Ljava/lang/String; = "type"

.field public static final UNDEFINED:Ljava/lang/String; = "undefined"

.field public static final VALUE:Ljava/lang/String; = "value"

.field public static final VIEW_HEIGHT:Ljava/lang/String; = "viewHeight"

.field public static final VIF_FALSE:Ljava/lang/String; = "ifFalse"

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final WIDTH:Ljava/lang/String; = "width"

.field public static final X:Ljava/lang/String; = "x"

.field public static final Y:Ljava/lang/String; = "y"

.field public static final ZORDERTOP:Ljava/lang/String; = "zOrderTop"

###### Class com.taobao.weex.common.Constants.Name.Recycler (com.taobao.weex.common.Constants$Name$Recycler)
.class public interface abstract Lcom/taobao/weex/common/Constants$Name$Recycler;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/Constants$Name;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Recycler"
.end annotation


# static fields
.field public static final CELL_INDEX:Ljava/lang/String; = "cellIndex"

.field public static final LIST_DATA:Ljava/lang/String; = "listData"

.field public static final LIST_DATA_ITEM:Ljava/lang/String; = "alias"

.field public static final LIST_DATA_ITEM_INDEX:Ljava/lang/String; = "index"

.field public static final LIST_DATA_TEMPLATE_SWITCH_KEY:Ljava/lang/String; = "switch"

.field public static final SLOT_TEMPLATE_CASE:Ljava/lang/String; = "case"

.field public static final SLOT_TEMPLATE_DEFAULT:Ljava/lang/String; = "default"

.field public static final TYPE_INDEX:Ljava/lang/String; = "typeIndex"

###### Class com.taobao.weex.common.Constants.Orientation (com.taobao.weex.common.Constants$Orientation)
.class public interface abstract Lcom/taobao/weex/common/Constants$Orientation;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Orientation"
.end annotation


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1

###### Class com.taobao.weex.common.Constants.PSEUDO (com.taobao.weex.common.Constants$PSEUDO)
.class public interface abstract Lcom/taobao/weex/common/Constants$PSEUDO;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PSEUDO"
.end annotation


# static fields
.field public static final ACTIVE:Ljava/lang/String; = ":active"

.field public static final DISABLED:Ljava/lang/String; = ":disabled"

.field public static final ENABLED:Ljava/lang/String; = ":enabled"

.field public static final FOCUS:Ljava/lang/String; = ":focus"

###### Class com.taobao.weex.common.Constants.Scheme (com.taobao.weex.common.Constants$Scheme)
.class public interface abstract Lcom/taobao/weex/common/Constants$Scheme;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Scheme"
.end annotation


# static fields
.field public static final DATA:Ljava/lang/String; = "data"

.field public static final FILE:Ljava/lang/String; = "file"

.field public static final HTTP:Ljava/lang/String; = "http"

.field public static final HTTPS:Ljava/lang/String; = "https"

.field public static final LOCAL:Ljava/lang/String; = "local"

###### Class com.taobao.weex.common.Constants.TimeFunction (com.taobao.weex.common.Constants$TimeFunction)
.class public interface abstract Lcom/taobao/weex/common/Constants$TimeFunction;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TimeFunction"
.end annotation


# static fields
.field public static final CUBIC_BEZIER:Ljava/lang/String; = "cubic-bezier"

.field public static final EASE:Ljava/lang/String; = "ease"

.field public static final EASE_IN:Ljava/lang/String; = "ease-in"

.field public static final EASE_IN_OUT:Ljava/lang/String; = "ease-in-out"

.field public static final EASE_OUT:Ljava/lang/String; = "ease-out"

.field public static final LINEAR:Ljava/lang/String; = "linear"

###### Class com.taobao.weex.common.Constants.Value (com.taobao.weex.common.Constants$Value)
.class public interface abstract Lcom/taobao/weex/common/Constants$Value;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Value"
.end annotation


# static fields
.field public static final AUTO:I = -0x1

.field public static final BOLD:Ljava/lang/String; = "bold"

.field public static final CENTER:Ljava/lang/String; = "center"

.field public static final COLUMN_COUNT_NORMAL:I = 0x1

.field public static final COLUMN_GAP_NORMAL:I = 0x20

.field public static final DATE:Ljava/lang/String; = "date"

.field public static final DATETIME:Ljava/lang/String; = "datetime"

.field public static final DEFAULT:Ljava/lang/String; = "default"

.field public static final DENSITY:I = 0x3

.field public static final DIRECTION_DOWN:Ljava/lang/String; = "down"

.field public static final DIRECTION_LEFT:Ljava/lang/String; = "left"

.field public static final DIRECTION_RIGHT:Ljava/lang/String; = "right"

.field public static final DIRECTION_UP:Ljava/lang/String; = "up"

.field public static final EMAIL:Ljava/lang/String; = "email"

.field public static final FIXED:Ljava/lang/String; = "fixed"

.field public static final GRID:Ljava/lang/String; = "grid"

.field public static final HIDDEN:Ljava/lang/String; = "hidden"

.field public static final HIGH:Ljava/lang/String; = "high"

.field public static final HORIZONTAL:Ljava/lang/String; = "horizontal"

.field public static final ITALIC:Ljava/lang/String; = "italic"

.field public static final LEFT:Ljava/lang/String; = "left"

.field public static final LOW:Ljava/lang/String; = "low"

.field public static final MULTI_COLUMN:Ljava/lang/String; = "multi-column"

.field public static final NAV_BAR_HIDDEN:I = 0x1

.field public static final NAV_BAR_SHOWN:I = 0x0

.field public static final NONE:Ljava/lang/String; = "none"

.field public static final NORMAL:Ljava/lang/String; = "normal"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final ORIGINAL:Ljava/lang/String; = "original"

.field public static final PASSWORD:Ljava/lang/String; = "password"

.field public static final PAUSE:Ljava/lang/String; = "pause"

.field public static final PLAY:Ljava/lang/String; = "play"

.field public static final RIGHT:Ljava/lang/String; = "right"

.field public static final STICKY:Ljava/lang/String; = "sticky"

.field public static final STOP:Ljava/lang/String; = "stop"

.field public static final TEL:Ljava/lang/String; = "tel"

.field public static final TEXT:Ljava/lang/String; = "text"

.field public static final TIME:Ljava/lang/String; = "time"

.field public static final URL:Ljava/lang/String; = "url"

.field public static final VISIBLE:Ljava/lang/String; = "visible"

###### Class com.taobao.weex.common.Constants.Weex (com.taobao.weex.common.Constants$Weex)
.class public interface abstract Lcom/taobao/weex/common/Constants$Weex;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/taobao/weex/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Weex"
.end annotation


# static fields
.field public static final INSTANCEID:Ljava/lang/String; = "instanceid"

.field public static final REF:Ljava/lang/String; = "ref"

.field public static final TYPE:Ljava/lang/String; = "type"
