(global["webpackJsonp"]=global["webpackJsonp"]||[]).push([["pages/jifenshangcheng/detail"],{"0e59":function(t,e,n){"use strict";(function(t){n("6cdc"),n("921b");i(n("66fd"));var e=i(n("8cdc"));function i(t){return t&&t.__esModule?t:{default:t}}t(e.default)}).call(this,n("543d")["createPage"])},"14c4":function(t,e,n){"use strict";(function(t){Object.defineProperty(e,"__esModule",{value:!0}),e.default=void 0;var i=r(n("a34a"));function r(t){return t&&t.__esModule?t:{default:t}}function a(t,e,n,i,r,a,s){try{var u=t[a](s),c=u.value}catch(o){return void n(o)}u.done?e(c):Promise.resolve(c).then(i,r)}function s(t){return function(){var e=this,n=arguments;return new Promise((function(i,r){var s=t.apply(e,n);function u(t){a(s,i,r,u,c,"next",t)}function c(t){a(s,i,r,u,c,"throw",t)}u(void 0)}))}}var u={data:function(){return{btnColor:["#409eff","#67c23a","#909399","#e6a23c","#f56c6c","#356c6c","#351c6c","#f093a9","#a7c23a","#104eff","#10441f","#a21233","#503319"],id:"",userid:"",detail:{},swiperList:[],commentList:[],mescroll:null,downOption:{auto:!1},upOption:{noMoreSize:3,textNoMore:"~ 没有更多了 ~"},hasNext:!0,user:{},storeupFlag:0,count:0,timer:null}},computed:{baseUrl:function(){return this.$base.url}},onLoad:function(){var t=s(i.default.mark((function t(e){return i.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:this.id=e.id,e.userid&&(this.userid=e.userid);case 2:case"end":return t.stop()}}),t,this)})));function e(e){return t.apply(this,arguments)}return e}(),onShow:function(){var e=s(i.default.mark((function e(n){var r,a;return i.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return this.init(),r=t.getStorageSync("nowTable"),e.next=4,this.$api.session(r);case 4:a=e.sent,this.user=a.data,this.btnColor=this.btnColor.sort((function(){return.5-Math.random()})),this.getStoreup();case 8:case"end":return e.stop()}}),e,this)})));function n(t){return e.apply(this,arguments)}return n}(),destroyed:function(){},methods:{onPayTap:function(){t.setStorageSync("paytable","jifenshangcheng"),t.setStorageSync("payObject",this.detail),this.$utils.jump("../pay-confirm/pay-confirm?type=1")},onDetailTap:function(e){t.setStorageSync("useridTag",this.userid),this.$utils.jump("./detail?id=".concat(e.id,"&userid=")+this.userid)},getStoreup:function(){var t=s(i.default.mark((function t(){var e,n;return i.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return e={page:1,limit:1,refid:this.id,tablename:"jifenshangcheng",userid:this.user.id,type:1},t.next=3,this.$api.list("storeup",e);case 3:n=t.sent,this.storeupFlag=n.data.list.length;case 5:case"end":return t.stop()}}),t,this)})));function e(){return t.apply(this,arguments)}return e}(),shoucang:function(){var e=s(i.default.mark((function e(){var n,r,a,u;return i.default.wrap((function(e){while(1)switch(e.prev=e.next){case 0:return n=this,r={page:1,limit:1,refid:n.detail.id,tablename:"jifenshangcheng",userid:n.user.id,type:1},e.next=4,n.$api.list("storeup",r);case 4:if(a=e.sent,1!=a.data.list.length){e.next=9;break}return u=a.data.list[0].id,t.showModal({title:"提示",content:"是否取消",success:function(){var t=s(i.default.mark((function t(e){return i.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(!e.confirm){t.next=5;break}return t.next=3,n.$api.del("storeup",JSON.stringify([u]));case 3:n.$utils.msg("取消成功"),n.getStoreup();case 5:case"end":return t.stop()}}),t)})));function e(e){return t.apply(this,arguments)}return e}()}),e.abrupt("return");case 9:t.showModal({title:"提示",content:"是否收藏",success:function(){var t=s(i.default.mark((function t(e){return i.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:if(!e.confirm){t.next=5;break}return t.next=3,n.$api.add("storeup",{userid:n.user.id,name:n.detail.shangpinmingcheng,picture:n.swiperList[0],refid:n.detail.id,tablename:"jifenshangcheng",type:1});case 3:n.$utils.msg("收藏成功"),n.getStoreup();case 5:case"end":return t.stop()}}),t)})));function e(e){return t.apply(this,arguments)}return e}()});case 10:case"end":return e.stop()}}),e,this)})));function n(){return e.apply(this,arguments)}return n}(),onAcrossTap:function(e,n,i,r,a){if(t.setStorageSync("crossTable","jifenshangcheng"),t.setStorageSync("crossObj",this.detail),t.setStorageSync("statusColumnName",i),t.setStorageSync("statusColumnValue",a),t.setStorageSync("tips",r),""!=i&&!i.startsWith("[")){var s=t.getStorageSync("crossObj");for(var u in s)if(u==i&&s[u]==a)return void this.$utils.msg(r)}this.$utils.jump("../".concat(e,"/add-or-update?cross=true"))},init:function(){var t=s(i.default.mark((function t(){var e;return i.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:return t.next=2,this.$api.info("jifenshangcheng",this.id);case 2:e=t.sent,this.detail=e.data,this.swiperList=this.detail.shangpintupian?this.detail.shangpintupian.split(","):[],this.detail.xiangqing=this.detail.xiangqing.replace(/img src/gi,'img style="width:100%;" src');case 6:case"end":return t.stop()}}),t,this)})));function e(){return t.apply(this,arguments)}return e}(),mescrollInit:function(t){this.mescroll=t},downCallback:function(t){this.hasNext=!0,t.resetUpScroll()},upCallback:function(){var t=s(i.default.mark((function t(e){return i.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:e.endSuccess(e.size,this.hasNext);case 1:case"end":return t.stop()}}),t,this)})));function e(e){return t.apply(this,arguments)}return e}(),onChatTap:function(){this.$utils.jump("../chat/chat")},download:function(e){var n=this;e=n.$base.url+e,t.downloadFile({url:e,success:function(t){200===t.statusCode&&(n.$utils.msg("下载成功"),window.open(e))}})},onCartTabTap:function(){this.$utils.tab("../shop-cart/shop-cart")},onCommentTap:function(){var t=s(i.default.mark((function t(){return i.default.wrap((function(t){while(1)switch(t.prev=t.next){case 0:this.$utils.jump("../discussjifenshangcheng/add-or-update?refid=".concat(this.id));case 1:case"end":return t.stop()}}),t,this)})));function e(){return t.apply(this,arguments)}return e}(),onSHTap:function(){this.$refs.popup.open()}}};e.default=u}).call(this,n("543d")["default"])},1925:function(t,e,n){"use strict";var i=n("1c33"),r=n.n(i);r.a},"1c33":function(t,e,n){},"76de":function(t,e,n){"use strict";n.r(e);var i=n("14c4"),r=n.n(i);for(var a in i)"default"!==a&&function(t){n.d(e,t,(function(){return i[t]}))}(a);e["default"]=r.a},"8cdc":function(t,e,n){"use strict";n.r(e);var i=n("e781"),r=n("76de");for(var a in r)"default"!==a&&function(t){n.d(e,t,(function(){return r[t]}))}(a);n("1925");var s,u=n("f0c5"),c=Object(u["a"])(r["default"],i["b"],i["c"],!1,null,"2011136d",null,!1,i["a"],s);e["default"]=c.exports},e781:function(t,e,n){"use strict";var i={"mescroll-uni":()=>Promise.all([n.e("common/vendor"),n.e("components/mescroll-uni/mescroll-uni")]).then(n.bind(null,"f05e"))},r=function(){var t=this,e=t.$createElement,n=(t._self._c,t.__map(t.swiperList,(function(e,n){var i=e.substring(0,4);return{$orig:t.__get_orig(e),g0:i}}))),i=t.isAuth("jifenshangcheng","积分兑换"),r=t.isAuthFront("jifenshangcheng","积分兑换");t.$mp.data=Object.assign({},{$root:{l0:n,m0:i,m1:r}})},a=[];n.d(e,"b",(function(){return r})),n.d(e,"c",(function(){return a})),n.d(e,"a",(function(){return i}))}},[["0e59","common/runtime","common/vendor"]]]);