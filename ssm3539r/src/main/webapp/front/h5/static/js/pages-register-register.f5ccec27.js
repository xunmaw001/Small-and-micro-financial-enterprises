(window["webpackJsonp"]=window["webpackJsonp"]||[]).push([["pages-register-register"],{"0ac2":function(e,r,t){"use strict";var i=t("13a0"),n=t.n(i);n.a},"13a0":function(e,r,t){var i=t("3918");"string"===typeof i&&(i=[[e.i,i,""]]),i.locals&&(e.exports=i.locals);var n=t("4f06").default;n("7f58435d",i,!0,{sourceMap:!1,shadowMode:!1})},3735:function(e,r,t){"use strict";t.r(r);var i=t("fe98"),n=t("48c7");for(var a in n)"default"!==a&&function(e){t.d(r,e,(function(){return n[e]}))}(a);t("0ac2");var o,u=t("f0c5"),s=Object(u["a"])(n["default"],i["b"],i["c"],!1,null,"c9a626ca",null,!1,i["a"],o);r["default"]=s.exports},3918:function(e,r,t){var i=t("24fb");r=i(!1),r.push([e.i,'@charset "UTF-8";\n/**\r\n * 这里是uni-app内置的常用样式变量\r\n *\r\n * uni-app 官方扩展插件及插件市场（https://ext.dcloud.net.cn）上很多三方插件均使用了这些样式变量\r\n * 如果你是插件开发者，建议你使用scss预处理，并在插件代码中直接使用这些变量（无需 import 这个文件），方便用户通过搭积木的方式开发整体风格一致的App\r\n *\r\n */\n/**\r\n * 如果你是App开发者（插件使用者），你可以通过修改这些变量来定制自己的插件主题，实现自定义主题功能\r\n *\r\n * 如果你的项目同样使用了scss预处理，你也可以直接在你的 scss 代码中使用如下变量，同时无需 import 这个文件\r\n */\n/* 颜色变量 */\n/* 行为相关颜色 */\n/* 文字基本颜色 */\n/* 背景颜色 */\n/* 边框颜色 */\n/* 尺寸变量 */\n/* 文字尺寸 */\n/* 图片尺寸 */\n/* Border Radius */\n/* 水平间距 */\n/* 垂直间距 */\n/* 透明度 */\n/* 文章场景相关 */.content[data-v-c9a626ca]{min-height:calc(100vh - 44px);box-sizing:border-box}',""]),e.exports=r},"48c7":function(e,r,t){"use strict";t.r(r);var i=t("4e2d"),n=t.n(i);for(var a in i)"default"!==a&&function(e){t.d(r,e,(function(){return i[e]}))}(a);r["default"]=n.a},"4e2d":function(e,r,t){"use strict";var i=t("4ea4");Object.defineProperty(r,"__esModule",{value:!0}),r.default=void 0,t("28a5"),t("96cf");var n=i(t("3b8d")),a={data:function(){return{yonghuxingbieOptions:[],yonghuxingbieIndex:0,ruleForm:{yonghuzhanghao:"",mima:"",yonghuxingming:"",xingbie:"",nianling:"",touxiang:"",yonghushouji:"",jifen:"100"},tableName:""}},computed:{baseUrl:function(){return this.$base.url}},onLoad:function(){var e=(0,n.default)(regeneratorRuntime.mark((function e(){var r;return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:[],r=uni.getStorageSync("loginTable"),this.tableName=r,"yonghu"==this.tableName&&(this.yonghuxingbieOptions="男,女".split(","),this.ruleForm.xingbie=this.yonghuxingbieOptions[0]),"yonghu"==this.tableName&&(this.ruleForm.jifen="100"),this.styleChange();case 6:case"end":return e.stop()}}),e,this)})));function r(){return e.apply(this,arguments)}return r}(),methods:{yonghuxingbieChange:function(e){this.yonghuxingbieIndex=e.target.value,this.ruleForm.xingbie=this.yonghuxingbieOptions[this.yonghuxingbieIndex]},yonghutouxiangTap:function(){var e=this;this.$api.upload((function(r){e.ruleForm.touxiang="upload/"+r.file,e.$forceUpdate()}))},toggleTab:function(e){this.$refs[e].show()},styleChange:function(){this.$nextTick((function(){}))},getUUID:function(){return(new Date).getTime()},register:function(){var e=(0,n.default)(regeneratorRuntime.mark((function e(){return regeneratorRuntime.wrap((function(e){while(1)switch(e.prev=e.next){case 0:if(this.ruleForm.yonghuzhanghao||"yonghu"!=this.tableName){e.next=3;break}return this.$utils.msg("用户账号不能为空"),e.abrupt("return");case 3:if(this.ruleForm.mima||"yonghu"!=this.tableName){e.next=6;break}return this.$utils.msg("密码不能为空"),e.abrupt("return");case 6:if("yonghu"!=this.tableName||this.ruleForm.mima==this.ruleForm.mima2){e.next=9;break}return this.$utils.msg("两次密码输入不一致"),e.abrupt("return");case 9:if("yonghu"!=this.tableName||!this.ruleForm.yonghushouji||this.$validate.isMobile(this.ruleForm.yonghushouji)){e.next=12;break}return this.$utils.msg("用户手机应输入手机格式"),e.abrupt("return");case 12:if("yonghu"!=this.tableName||!this.ruleForm.jifen||this.$validate.isIntNumer(this.ruleForm.jifen)){e.next=15;break}return this.$utils.msg("积分应输入整数"),e.abrupt("return");case 15:return e.next=17,this.$api.register("".concat(this.tableName),this.ruleForm);case 17:this.$utils.msgBack("注册成功");case 19:case"end":return e.stop()}}),e,this)})));function r(){return e.apply(this,arguments)}return r}()}};r.default=a},fe98:function(e,r,t){"use strict";var i,n=function(){var e=this,r=e.$createElement,t=e._self._c||r;return t("v-uni-view",{staticClass:"content"},[t("v-uni-view",{staticClass:"box",style:{minHeight:"100vh",width:"100%",padding:"360rpx 80rpx 80rpx",background:"url(http://codegen.caihongy.cn/20221220/6f0701a5cb3048b0b4ba43fdc1eaae65.jpg) no-repeat center top / 100% auto,#fff",height:"100%"}},[t("v-uni-view",{style:{padding:"60rpx 40rpx",boxShadow:"2rpx 4rpx 16rpx #ddd",borderRadius:"12rpx",background:"#fff",display:"block",width:"100%",height:"auto"}},[t("v-uni-image",{style:{width:"160rpx",margin:"0 auto 24rpx auto",borderRadius:"8rpx",display:"none",height:"160rpx"},attrs:{src:"http://codegen.caihongy.cn/20201114/7856ba26477849ea828f481fa2773a95.jpg",mode:"aspectFill"}}),"yonghu"==e.tableName?t("v-uni-view",{staticClass:"uni-form-item uni-column",style:{width:"100%",margin:"0 0 20rpx 0",height:"auto"}},[t("v-uni-input",{staticClass:"uni-input",style:{padding:"0px 24rpx",margin:"0px",borderColor:"#e9be70",color:"rgb(0, 0, 0)",borderRadius:"12rpx",background:"rgb(255, 255, 255)",borderWidth:"2rpx",width:"100%",fontSize:"28rpx",borderStyle:"solid",height:"80rpx"},attrs:{type:"text",name:"",placeholder:"用户账号"},model:{value:e.ruleForm.yonghuzhanghao,callback:function(r){e.$set(e.ruleForm,"yonghuzhanghao",r)},expression:"ruleForm.yonghuzhanghao"}})],1):e._e(),"yonghu"==e.tableName?t("v-uni-view",{staticClass:"uni-form-item uni-column",style:{width:"100%",margin:"0 0 20rpx 0",height:"auto"}},[t("v-uni-input",{staticClass:"uni-input",style:{padding:"0px 24rpx",margin:"0px",borderColor:"#e9be70",color:"rgb(0, 0, 0)",borderRadius:"12rpx",background:"rgb(255, 255, 255)",borderWidth:"2rpx",width:"100%",fontSize:"28rpx",borderStyle:"solid",height:"80rpx"},attrs:{type:"password",name:"",placeholder:"密码"},model:{value:e.ruleForm.mima,callback:function(r){e.$set(e.ruleForm,"mima",r)},expression:"ruleForm.mima"}})],1):e._e(),"yonghu"==e.tableName?t("v-uni-view",{staticClass:"uni-form-item uni-column",style:{width:"100%",margin:"0 0 20rpx 0",height:"auto"}},[t("v-uni-input",{staticClass:"uni-input",style:{padding:"0px 24rpx",margin:"0px",borderColor:"#e9be70",color:"rgb(0, 0, 0)",borderRadius:"12rpx",background:"rgb(255, 255, 255)",borderWidth:"2rpx",width:"100%",fontSize:"28rpx",borderStyle:"solid",height:"80rpx"},attrs:{type:"password",name:"",placeholder:"确认密码"},model:{value:e.ruleForm.mima2,callback:function(r){e.$set(e.ruleForm,"mima2",r)},expression:"ruleForm.mima2"}})],1):e._e(),"yonghu"==e.tableName?t("v-uni-view",{staticClass:"uni-form-item uni-column",style:{width:"100%",margin:"0 0 20rpx 0",height:"auto"}},[t("v-uni-input",{staticClass:"uni-input",style:{padding:"0px 24rpx",margin:"0px",borderColor:"#e9be70",color:"rgb(0, 0, 0)",borderRadius:"12rpx",background:"rgb(255, 255, 255)",borderWidth:"2rpx",width:"100%",fontSize:"28rpx",borderStyle:"solid",height:"80rpx"},attrs:{type:"text",name:"",placeholder:"用户姓名"},model:{value:e.ruleForm.yonghuxingming,callback:function(r){e.$set(e.ruleForm,"yonghuxingming",r)},expression:"ruleForm.yonghuxingming"}})],1):e._e(),"yonghu"==e.tableName?t("v-uni-picker",{style:{margin:"24rpx 0 24rpx 0",borderColor:"#e9be70",borderRadius:"12rpx",background:"#fff",borderWidth:"2rpx",width:"100%",borderStyle:"solid",height:"auto"},attrs:{value:e.yonghuxingbieIndex,range:e.yonghuxingbieOptions},on:{change:function(r){arguments[0]=r=e.$handleEvent(r),e.yonghuxingbieChange.apply(void 0,arguments)}}},[t("v-uni-view",{staticClass:"uni-input",style:{width:"100%",padding:"0 24rpx",lineHeight:"80rpx",fontSize:"28rpx",color:"#767676"}},[e._v(e._s(e.ruleForm.xingbie?e.ruleForm.xingbie:"请选择性别"))])],1):e._e(),"yonghu"==e.tableName?t("v-uni-view",{staticClass:"uni-form-item uni-column",style:{width:"100%",margin:"0 0 20rpx 0",height:"auto"}},[t("v-uni-input",{staticClass:"uni-input",style:{padding:"0px 24rpx",margin:"0px",borderColor:"#e9be70",color:"rgb(0, 0, 0)",borderRadius:"12rpx",background:"rgb(255, 255, 255)",borderWidth:"2rpx",width:"100%",fontSize:"28rpx",borderStyle:"solid",height:"80rpx"},attrs:{type:"text",name:"",placeholder:"年龄"},model:{value:e.ruleForm.nianling,callback:function(r){e.$set(e.ruleForm,"nianling",r)},expression:"ruleForm.nianling"}})],1):e._e(),"yonghu"==e.tableName?t("v-uni-view",{style:{width:"100%",margin:"0 0 20rpx 0",height:"auto"},on:{click:function(r){arguments[0]=r=e.$handleEvent(r),e.yonghutouxiangTap.apply(void 0,arguments)}}},[t("v-uni-view",[e._v("请上传头像")]),e.ruleForm.touxiang?t("v-uni-image",{staticClass:"avator",style:{border:"2rpx solid #e9be70",padding:"8rpx",borderRadius:"16rpx",objectFit:"cover",display:"block",width:"200rpx",height:"160rpx"},attrs:{src:e.baseUrl+e.ruleForm.touxiang,mode:""}}):t("v-uni-image",{staticClass:"avator",style:{border:"2rpx solid #e9be70",padding:"8rpx",borderRadius:"16rpx",objectFit:"cover",display:"block",width:"200rpx",height:"160rpx"},attrs:{src:"../../static/gen/upload.png",mode:""}})],1):e._e(),"yonghu"==e.tableName?t("v-uni-view",{staticClass:"uni-form-item uni-column",style:{width:"100%",margin:"0 0 20rpx 0",height:"auto"}},[t("v-uni-input",{staticClass:"uni-input",style:{padding:"0px 24rpx",margin:"0px",borderColor:"#e9be70",color:"rgb(0, 0, 0)",borderRadius:"12rpx",background:"rgb(255, 255, 255)",borderWidth:"2rpx",width:"100%",fontSize:"28rpx",borderStyle:"solid",height:"80rpx"},attrs:{type:"text",name:"",placeholder:"用户手机"},model:{value:e.ruleForm.yonghushouji,callback:function(r){e.$set(e.ruleForm,"yonghushouji",r)},expression:"ruleForm.yonghushouji"}})],1):e._e(),t("v-uni-button",{staticClass:"btn-submit",style:{border:"0",padding:"0px",margin:"24rpx 0 24rpx 0",color:"#fff",borderRadius:"12rpx",background:"#e9be70",width:"100%",lineHeight:"88rpx",fontSize:"32rpx",height:"88rpx"},attrs:{type:"primary"},on:{click:function(r){arguments[0]=r=e.$handleEvent(r),e.register.apply(void 0,arguments)}}},[e._v("注册")])],1)],1)],1)},a=[];t.d(r,"b",(function(){return n})),t.d(r,"c",(function(){return a})),t.d(r,"a",(function(){return i}))}}]);