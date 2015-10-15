<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<div id="footer" style="background:none;" > 
 <div style="height:1px; width:1px; overflow:hidden;"> <a href="http://www.ecshop.com" target="_blank" style=" font-family:Verdana; font-size:11px;">Powered&nbsp;by&nbsp;<strong><span style="color: #3366FF">ECShop</span>&nbsp;<span style="color: #FF9966">v2.7.3</span></strong></a>&nbsp;<a href="http://www.ecshop.com/license.php?product=ecshop_b2c&url=http%3A%2F%2Fwww.itying.com%2F" target="_blank"
>&nbsp;&nbsp;Licensed</a><br /></div>
</div>
<div id="banquan_nav">
<div id="bottomNav" class="box">
 <div class="box_1">
              <a href="http://www.itying.com/article.php?id=8"  target="_blank" >联系我们</a>
                   |
                      <a href="http://www.itying.com/article.php?id=7"  target="_blank" >免责说明</a>
                   
   <!--<div class="f_r">
   <a href="#top"><img src="static/public/images/frontImages/bnt_top.gif" /></a> <a href="index.php"><img src="static/public/images/frontImages/bnt_home.gif" /></a>
   </div>-->
    <div class="f_r" id="returnTop" style="display: block; background-position: 0px -81px; ">
       <a href="#top"></a>
   </div>
   <script language="javascript" type="text/javascript">
$(window).scroll(function(){
    var tt = document.documentElement.scrollTop||document.body.scrollTop;;
    if(tt>500){
      $('#returnTop').show();
    }
    else{
       $('#returnTop').hide();
    }
 });
$('#returnTop').click(function(){
    $("html, body").animate({'scrollTop':0},320);
})
</script>
  </div>
 </div>
<p class="fooCorpy">
        
 
 凡本网站转载的文章、图片等资料的版权归版权所有人所有，因无法和版权所有者一一联系，如果本网站选取的文/图威胁到您的权益，请您及时和本网站联系。<br />我们会在第一时间内采取措施，避免给双方造
 成不必要的损失。    <br />  <br />  
     ICP备案证书号:<a href="http://www.miibeian.gov.cn/" target="_blank">京ICP备13027796号-5</a><br />
  &copy; 2005-2015 IT营 版权所有，并保留所有权利。     <br>
    	
	
<div style="margin:3px auto; height:20px; text-align:center">技术支持: <a href="http://www.phonegap100.com/" target="_blank">phonegap中文网</a> </div>
<script>
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?a51a87c5bc680577b93de468ed61ce50";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
</div>
<div id="div_leftfloat"> 
    <a href="javascript:closeLeftFloat();" class="float_1"></a>
    <a href="javascript:void(0);" class="float_2"></a>
    
  </div>
<script type="text/javascript">
     function closeLeftFloat()
     {
        $("#div_leftfloat").css("display","none");
     }
  </script>
  
<script type="text/javascript">
//<![CDATA[
var tips; var theTop = 120/*这是默认高度,越大越往下*/; var old = theTop;
function initFloatTips() {
tips = document.getElementById('divQQbox');
moveTips();
};
function moveTips() {
var tt=50;
if (window.innerHeight) {
pos = window.pageYOffset
}
else if (document.documentElement && document.documentElement.scrollTop) {
pos = document.documentElement.scrollTop
}
else if (document.body) {
pos = document.body.scrollTop;
}
pos=pos-tips.offsetTop+theTop;
pos=tips.offsetTop+pos/10;
if (pos < theTop) pos = theTop;
if (pos != old) {
tips.style.top = pos+"px";
tt=10;
//alert(tips.style.top);
}
old = pos;
setTimeout(moveTips,tt);
}
//!]]>
initFloatTips();
function OnlineOver(){
document.getElementById("divMenu").style.display = "none";
document.getElementById("divOnline").style.display = "block";
document.getElementById("divQQbox").style.width = "170px";
}
function OnlineOut(){
document.getElementById("divMenu").style.display = "block";
document.getElementById("divOnline").style.display = "none";
}
if(typeof(HTMLElement)!="undefined")    //给firefox定义contains()方法，ie下不起作用
{   
      HTMLElement.prototype.contains=function(obj)   
      {   
          while(obj!=null&&typeof(obj.tagName)!="undefind"){ //通过循环对比来判断是不是obj的父元素
   　　　　if(obj==this) return true;   
   　　　　obj=obj.parentNode;
   　　}   
          return false;   
      };   
}  
function hideMsgBox(theEvent){ //theEvent用来传入事件，Firefox的方式
　 if (theEvent){
　 var browser=navigator.userAgent; //取得浏览器属性
　 if (browser.indexOf("Firefox")>0){ //如果是Firefox
　　 if (document.getElementById('divOnline').contains(theEvent.relatedTarget)) { //如果是子元素
　　 return; //结束函式
} 
} 
if (browser.indexOf("MSIE")>0){ //如果是IE
if (document.getElementById('divOnline').contains(event.toElement)) { //如果是子元素
return; //结束函式
}
}
}
/*要执行的操作*/
document.getElementById("divMenu").style.display = "block";
document.getElementById("divOnline").style.display = "none";
}
</script>