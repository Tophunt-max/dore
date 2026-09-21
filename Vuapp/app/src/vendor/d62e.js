// Verbatim from the ORich reference bundle (webpack module "d62e").

// Library internals - regenerate with tools/orich instead of editing.
/* eslint-disable */
import { webpackModule, interop } from './runtime.js';
import x_1a27 from '@/locale/app-i18n';

const deps = {
  "1a27": x_1a27,
  "b508": "/static/image/nodata.png",
};

const mod = webpackModule(function (t, e, s) {"use strict";Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i=a(s("1a27"));function a(t){return t&&t.__esModule?t:{default:t}}var n={down:{textInOffset:i.default.$i18n.t("common.pullrefresh"),textOutOffset:i.default.$i18n.t("common.release"),textLoading:i.default.$i18n.t("common.loading"),textSuccess:i.default.$i18n.t("common.loadsuccess"),textErr:i.default.$i18n.t("common.loadfail"),beforeEndDelay:100,offset:80,native:!1},up:{textLoading:i.default.$i18n.t("common.loading"),textNoMore:i.default.$i18n.t("common.end"),offset:150,toTop:{src:"https://www.mescroll.com/img/mescroll-totop.png",offset:1e3,right:20,bottom:120,width:72},empty:{use:!0,icon:s("b508"),tip:i.default.$i18n.t("common.nodata")}}},r=n;e.default=r}, deps);

/** The module's exports object. */
export default mod;

/** What babel's interop helper resolved this require to. */
export const interopDefault = interop(mod);
