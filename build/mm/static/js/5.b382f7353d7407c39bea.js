webpackJsonp([5],{P7ryO:function(e,r,s){"use strict";Object.defineProperty(r,"__esModule",{value:!0});var t=s("msXN"),a=s("gyMJ"),o={mixins:[t.a],data:function(){return{ruleForm:{username:"admin",password:"123"},rules:{username:[{required:!0,message:"请输入用户名",trigger:"blur"}],password:[{required:!0,message:"请输入密码",trigger:"blur"}]}}},methods:{submitForm:function(){var e=this,r=new URLSearchParams;r.append("name",this.ruleForm.username),r.append("password",this.ruleForm.password),Object(a.l)(r).then(function(r){1==r.code?(localStorage.setItem("userName",e.ruleForm.username),e.$router.push("/Info"),e.notify("登录成功","success")):e.notify("登录失败","error")})}}},l={render:function(){var e=this,r=e.$createElement,s=e._self._c||r;return s("div",{staticClass:"login-wrap"},[s("div",{staticClass:"ms-title"},[e._v("music 后台管理登录")]),e._v(" "),s("div",{staticClass:"ms-login"},[s("el-form",{ref:"ruleForm",attrs:{model:e.ruleForm,rules:e.rules}},[s("el-form-item",{attrs:{prop:"username"}},[s("el-input",{attrs:{placeholder:"用户名"},model:{value:e.ruleForm.username,callback:function(r){e.$set(e.ruleForm,"username",r)},expression:"ruleForm.username"}})],1),e._v(" "),s("el-form-item",{attrs:{prop:"password"}},[s("el-input",{attrs:{type:"password",placeholder:"密码"},model:{value:e.ruleForm.password,callback:function(r){e.$set(e.ruleForm,"password",r)},expression:"ruleForm.password"}})],1),e._v(" "),s("div",{staticClass:"login-btn"},[s("el-button",{attrs:{type:"primary"},on:{click:e.submitForm}},[e._v("登录")])],1)],1)],1)])},staticRenderFns:[]};var n=s("VU/8")(o,l,!1,function(e){s("w5S1")},"data-v-7dbfebc9",null);r.default=n.exports},w5S1:function(e,r){}});
//# sourceMappingURL=5.b382f7353d7407c39bea.js.map