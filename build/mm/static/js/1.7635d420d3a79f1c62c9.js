webpackJsonp([1],{"1Bnj":function(e,t,n){e.exports=n.p+"static/img/user.83d9cc8.jpg"},hWmY:function(e,t){},lO7g:function(e,t,n){"use strict";Object.defineProperty(t,"__esModule",{value:!0});var l=new(n("7+uW").default),s={data:function(){return{collapse:!1,fullscreen:!1}},computed:{userName:function(){return localStorage.getItem("userName")}},methods:{collapseChange:function(){this.collapse=!this.collapse,l.$emit("collapse",this.collapse)},handleFullScreen:function(){if(this.fullscreen)document.exitFullscreen?document.exitFullscreen():document.webkitCancelFullScreen?document.webkitCancelFullScreen():document.mozCancelFullScreen?document.mozCancelFullScreen:document.msExitFullScreen&&document.msExitFullScreen();else{var e=document.documentElement;e.requestFullscreen?e.requestFullscreen():e.webkitRequestFullScreen?e.webkitRequestFullScreen():e.mozRequestFullScreen?e.mozRequestFullScreen():e.msRequestFullScreen&&e.msRequestFullScreen()}this.fullscreen=!this.fullscreen},handleCommand:function(e){"logout"==e&&(localStorage.removeItem("userName"),this.$router.push("/"))}}},c={render:function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",{staticClass:"header"},[n("div",{staticClass:"collapse-btn",on:{click:e.collapseChange}},[n("i",{staticClass:"el-icon-menu"})]),e._v(" "),n("div",{staticClass:"logo"},[e._v("musci后台管理")]),e._v(" "),n("div",{staticClass:"header-right"},[n("div",{staticClass:"btn-fullscreen",on:{click:e.handleFullScreen}},[n("el-tooltip",{attrs:{content:e.fullscreen?"取消全屏":"全屏",placement:"bottom"}},[n("i",{staticClass:"el-icon-rank"})])],1),e._v(" "),e._m(0),e._v(" "),n("el-dropdown",{staticClass:"user-name",attrs:{trigger:"click"},on:{command:e.handleCommand}},[n("span",{staticClass:"el-dropdown-link"},[e._v("\n                "+e._s(e.userName)+"\n                "),n("i",{staticClass:"el-icon-caret-bottom"})]),e._v(" "),n("el-dropdown-menu",{attrs:{slot:"dropdown"},slot:"dropdown"},[n("el-dropdown-item",{attrs:{command:"logout"}},[e._v("退出登录")])],1)],1)],1)])},staticRenderFns:[function(){var e=this.$createElement,t=this._self._c||e;return t("div",{staticClass:"user-avator"},[t("img",{attrs:{src:n("1Bnj")}})])}]};var o={data:function(){return{collapse:!1,items:[{icon:"el-icon-document",index:"Info",title:"系统首页"},{icon:"el-icon-document",index:"Consumer",title:"用户管理"},{icon:"el-icon-document",index:"Singer",title:"歌手管理"},{icon:"el-icon-document",index:"SongList",title:"歌单管理"}]}},computed:{onRoutes:function(){return this.$route.path.replace("/","")}},created:function(){var e=this;l.$on("collapse",function(t){e.collapse=t})}},a={render:function(){var e=this,t=e.$createElement,n=e._self._c||t;return n("div",{staticClass:"sidebar"},[n("el-menu",{staticClass:"sidebar-el-menu",attrs:{"default-active":e.onRoutes,collapse:e.collapse,"background-color":"#334256","text-color":"#ffffff","active-text-color":"#20afff",router:""}},[e._l(e.items,function(t){return[[n("el-menu-item",{key:t.index,attrs:{index:t.index}},[n("i",{class:t.icon}),e._v("\n                    "+e._s(t.title)+"\n                ")])]]})],2)],1)},staticRenderFns:[]};var i={components:{TheHeader:n("VU/8")(s,c,!1,function(e){n("sug3")},"data-v-33aa314e",null).exports,TheAside:n("VU/8")(o,a,!1,function(e){n("hWmY")},"data-v-4eb14379",null).exports},data:function(){return{collapse:!1}},created:function(){var e=this;l.$on("collapse",function(t){e.collapse=t})}},r={render:function(){var e=this.$createElement,t=this._self._c||e;return t("div",[t("the-header"),this._v(" "),t("the-aside"),this._v(" "),t("div",{staticClass:"content-box",class:{"content-collapse":this.collapse}},[t("router-view")],1)],1)},staticRenderFns:[]},u=n("VU/8")(i,r,!1,null,null,null);t.default=u.exports},sug3:function(e,t){}});
//# sourceMappingURL=1.7635d420d3a79f1c62c9.js.map