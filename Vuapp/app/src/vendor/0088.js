// Verbatim from the ORich reference bundle (webpack module "0088").

// Library internals - regenerate with tools/orich instead of editing.
/* eslint-disable */
import { webpackModule, interop } from './runtime.js';
import m_fb05 from './fb05.js';

const deps = {
  "fb05": m_fb05,
};

const mod = webpackModule(function (t, e, s) {var i=s("fb05"),a=function(t){return t>="a"&&t<="z"||t>="A"&&t<="Z"};function n(t){var e=Object.assign(Object.create(null),i.userAgentStyles);for(var s in t)e[s]=(e[s]?e[s]+";":"")+t[s];this.styles=e}function r(t,e){this.data=t,this.floor=0,this.i=0,this.list=[],this.res=e,this.state=this.Space}n.prototype.getStyle=function(t){this.styles=new r(t,this.styles).parse()},n.prototype.match=function(t,e){var s,i=(s=this.styles[t])?s+";":"";if(e.class)for(var a,n=e.class.split(" "),r=0;a=n[r];r++)(s=this.styles["."+a])&&(i+=s+";");return(s=this.styles["#"+e.id])&&(i+=s+";"),i},t.exports=n,r.prototype.parse=function(){for(var t;t=this.data[this.i];this.i++)this.state(t);return this.res},r.prototype.section=function(){return this.data.substring(this.start,this.i)},r.prototype.Space=function(t){"."==t||"#"==t||a(t)?(this.start=this.i,this.state=this.Name):"/"==t&&"*"==this.data[this.i+1]?this.Comment():i.blankChar[t]||";"==t||(this.state=this.Ignore)},r.prototype.Comment=function(){this.i=this.data.indexOf("*/",this.i)+1,this.i||(this.i=this.data.length),this.state=this.Space},r.prototype.Ignore=function(t){"{"==t?this.floor++:"}"!=t||--this.floor||(this.list=[],this.state=this.Space)},r.prototype.Name=function(t){i.blankChar[t]?(this.list.push(this.section()),this.state=this.NameSpace):"{"==t?(this.list.push(this.section()),this.Content()):","==t?(this.list.push(this.section()),this.Comma()):!a(t)&&(t<"0"||t>"9")&&"-"!=t&&"_"!=t&&(this.state=this.Ignore)},r.prototype.NameSpace=function(t){"{"==t?this.Content():","==t?this.Comma():i.blankChar[t]||(this.state=this.Ignore)},r.prototype.Comma=function(){while(i.blankChar[this.data[++this.i]]);"{"==this.data[this.i]?this.Content():(this.start=this.i--,this.state=this.Name)},r.prototype.Content=function(){this.start=++this.i,-1==(this.i=this.data.indexOf("}",this.i))&&(this.i=this.data.length);for(var t,e=this.section(),s=0;t=this.list[s++];)this.res[t]?this.res[t]+=";"+e:this.res[t]=e;this.list=[],this.state=this.Space}}, deps);

/** The module's exports object. */
export default mod;

/** What babel's interop helper resolved this require to. */
export const interopDefault = interop(mod);
