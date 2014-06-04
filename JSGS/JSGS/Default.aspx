<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JSGS.Default" %>

<html><head><meta http-equiv="Content-Type" content="text/html; charset=GBK">
<title>江苏省国家税务局网上办税厅</title>

<style type="text/css">
html {
	overflow-x:hidden;
	overflow-y:hidden;
}
body {
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 0px;
	margin-bottom: 0px;
	overflow-x:auto;
	overflow-y:auto;
	background: url(/images/bodybg.jpg) repeat-x;
}
</style>
</head>
<body bgcolor="#FFFFFF"><div class="boxLayer" style="width: 639px; height: 366px; display: none; left: 351.5px; top: 126.5px;"><div class="alldenglu"><div align="right"><img src="images/close.png" onclick="loadBox.hide()" style="cursor:hand;">  </div><div class="wenji"><br>尊敬的纳税人：<br>	&nbsp;&nbsp;&nbsp;本系统目前仅提供2013年4月所属期以后的申报表打印。<br>&nbsp;&nbsp;&nbsp;给您带来不便敬请谅解！<br><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p><p></p></div></div></div><div class="bgLayer" style="width: 1366px; height: 679px; display: none;"></div>
<table width="1005" height="650" border="0" align="center" cellpadding="0" cellspacing="0">
	<tbody><tr>
		<td colspan="6">
			<img src="images/s1_01.jpg" width="1005" height="105" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/s1_02.jpg" width="365" height="157" alt=""></td>
		<td>
			<img src="images/s1_03.jpg" width="106" height="157" alt=""></td>
		<td>
			<img src="images/s1_04.jpg" width="97" height="157" alt=""></td>
		<td>
			<img src="images/s1_05.jpg" width="126" height="157" alt=""></td>
		<td>
			<img src="images/s1_06.jpg" width="119" height="157" alt=""></td>
		<td>
			<img src="images/s1_07.jpg" width="192" height="157" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/s1_08.jpg" width="365" height="130" alt=""></td>
		<td colspan="3">
			<img src="images/s1_09.jpg" width="329" height="130" alt=""></td>
		<td colspan="2">
			<img src="images/s1_10.jpg" width="311" height="130" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/s1_11.jpg" width="365" height="98" alt=""></td>
		<td colspan="3">
			<img src="images/s1_12.jpg" width="329" height="98" alt=""></td>
		<td colspan="2">
			<img src="images/s1_13.jpg" width="311" height="98" alt=""></td>
	</tr>
	<tr>
		<td>
			<img src="images/s1_14.jpg" width="365" height="42" alt=""></td>
		<td colspan="3">
			<img src="images/s1_15.jpg" width="329" height="42" alt=""></td>
		<td colspan="2">
			<img src="images/s1_16.jpg" width="311" height="42" alt=""></td>
	</tr>
	<tr>
		<td colspan="6">
			<img src="images/s1_17.jpg" alt="" width="1005" height="61" border="0" usemap="#Map"></td>
	</tr>
	<tr>
		<td colspan="6">
			<img src="images/s1_18.jpg" width="1005" height="57" alt=""></td>
	</tr>
</tbody></table>
<map name="Map">
  <area shape="rect" coords="206,1,466,50" href="https://221.226.83.19:7001/newtax/static/main.jsp" alt="进入网上办税系统">
</map>


<style type="text/css">
body,p,div,ul,ol{padding:0;margin:0;border:0;margin-left:10;margin-right:10;}
body{height:100%;font-size:18px;font-family: "华文楷体";	font-size: 22px;	font-weight: bold;}
.bgLayer{ background:#000; opacity:0.5; filter:alpha(opacity=50);z-index:10001;position:absolute;left:0;top:0;}
.boxLayer{ background:url(/images/kuang.jpg); border:4px solid #ccc; overflow:hidden; zoom:1; z-index:10002; position:absolute;padding:8px;}
.boxLayer p{padding:5px 0;text-align:center;}
.alldenglu{
    width:610px;}
.denglu {
font-size: 18px;
margin-bottom:10px;
color: #999999;
}
</style>
<script type="text/javascript">
    //<![CDATA[
    //弹出层 by ChenLiang v1.0
    function LightBox(boxWidth, boxHeight, boxContent) {
        this.boxWidth = boxWidth;
        this.boxHeight = boxHeight;
        this.boxContent = boxContent;
        var bgLayer, boxLayer;
        var documentHtml = document.documentElement;
        this.createBgLayer = function () {
            bgLayer = document.createElement("div");
            with (bgLayer) {
                className = "bgLayer";
                style.width = documentHtml.scrollWidth + "px";
                style.height = documentHtml.scrollHeight + "px";
                style.display = "none";
            }
            document.body.insertBefore(bgLayer, document.body.firstChild);
        };
        this.createBox = function () {
            boxLayer = document.createElement("div");
            with (boxLayer) {
                className = "boxLayer";
                style.width = this.boxWidth + "px";
                style.height = this.boxHeight + "px";
                style.display = "none";
            };
            document.body.insertBefore(boxLayer, document.body.firstChild);
        };
        this.init = function () {
            this.createBgLayer();
            this.createBox();
        }
        // if IE 6.0
        function hideShowSelect(obj) {
            if (window.navigator.userAgent.indexOf("MSIE 6.0") > 0) {
                var selectDom = document.getElementsByTagName("select");
                for (var i = 0; i < selectDom.length ; i++) {
                    if (obj)
                        selectDom[i].style.display = "none";
                    else
                        selectDom[i].style.display = "";
                }
            }
        };
        this.show = function () {
            hideShowSelect(true);
            boxLayer.innerHTML = this.boxContent;
            bgLayer.style.display = "block";
            boxLayer.style.display = "block";
            boxLayer.style.left = documentHtml.offsetWidth / 2 - boxLayer.offsetWidth / 2 + "px";
            boxLayer.style.top = documentHtml.scrollTop + documentHtml.offsetHeight / 2 - this.boxHeight / 2 - 30 + "px";
        }
        this.hide = function () {
            hideShowSelect(false);
            bgLayer.style.display = "none";
            boxLayer.style.display = "none";
        }
    }
    //]]>
</script>
<script type="text/javascript">
    //调用方法
    var loadBox = new LightBox(639, 366);
    window.onload = function () {
        loadBox.init();
        loadBox.boxContent = '<div class="alldenglu"><div align="right"><img src="/images/close.png" onClick="loadBox.hide()" style="cursor:hand;"/>  </div><div class="wenji"><br/>尊敬的纳税人：<br/>	&nbsp;&nbsp;&nbsp;本系统目前仅提供2013年4月所属期以后的申报表打印。</br>&nbsp;&nbsp;&nbsp;给您带来不便敬请谅解！<br/></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></p></div>';
    }

</script> 
<script language="javascript">
    setTimeout("loadBox.show()", 800);

</script></body></html>