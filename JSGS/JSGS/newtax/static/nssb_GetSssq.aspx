<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="nssb_GetSssq.aspx.cs" Inherits="JSGS.newtax.static.nssb_GetSssq" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<script type="text/javascript">
    if (top != self)
    {
        window.open(location.href, "_blank");
        window.open("about:blank", "_self");
    }
</script>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
    <link href="../../Content/ReSet.css" rel="stylesheet" />


    <link rel="stylesheet" href="/newtax/static/styles/newtax_1/css/index.css" />
        <link rel="stylesheet" href="/newtax/static/styles/bsdh/thickbox.css" />
    <script src="../../Scripts/jquery-1.8.2.min.js" type="text/javascript"></script>

    <script type="text/javascript">
        $(function() {
            refreshCaptcha();
        });

        function refreshCaptcha() {
            $('#captchaImg').html('<img src="/images/jcaptcha.jpg?' + Math.round(Math.random() * 100000) + '"/>');
        }
    </script>
    <style type="text/css">
        a.link1 {
            color: #ffffff;
            text-decoration: none;
        }

            a.link1:visited {
                background-position: left top;
                color: #FFFFFF;
            }

            a.link1:active {
                color: #666666;
                text-decoration: none;
            }

            a.link1:hover {
                background-position: right top;
                color: #DC6B00;
            }
    </style>
    <title>江苏省国家税务局网上办税系统</title>

</head>

<body>
    <div id="center">


        <script src="/newtax/static/js/jquery/jquery-1.3.2.min.js" type="text/javascript"></script>
        <script src="/newtax/static/js/jquery/thickbox.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                $(":input").focus(function(){
                    $(this).addClass("focus");
                }).blur(function(){
                    $(this).removeClass("focus");

                });

            });

            //页面即将关闭事件
            //function window.onbeforeunload(){
            //    // window.event.returnValue = '关闭浏览器将退出系统.';
            //    //用户点击浏览器右上角关闭按钮或是按alt+F4关闭
            //    if(event.clientX > document.body.clientWidth && event.clientY<0 || event.altKey)
            //    {
            //        location.href="/newtax/static/j_spring_security_logout";
            //    }

            //        //用户点击任务栏，右键关闭。s或是按alt+F4关闭
            //    else if(event.clientY > document.body.clientHeight || event.altKey)
            //    {
            //        location.href="/newtax/static/j_spring_security_logout";
            //    }
            //        //其他情况为刷新
            //    else
            //    {

            //    }
            //}
        </script>
        <div id="logo" style="width: 100%; height: 69px;">
            <div style="float: right; font-weight: normal; padding: 10px;"><a href="/newtax/public/adduser" onclick="ShowNote()">注册用户</a>&nbsp;|&nbsp;<a href="http://wsbs.js-l-tax.gov.cn/" target="_new">地税网上办税</a>&nbsp;|&nbsp;</div>
        </div>
        <div>


            <script language="javascript" src="/newtax/static/js/butterfly/ajax.js"></script>
            <script language="javascript" src="/newtax/static/js/butterfly/common_listedit.js"></script>
            <script language="javascript" src="/newtax/static/js/butterfly/check.js"></script>
            <script language="javascript" src="/newtax/static/js/butterfly/rule_action.js"></script>
            <link rel="stylesheet" href="/newtax/static/styles/newtax_1/css/menu.css" />
            <script type="text/javascript" src="/newtax/static/js/jquery/jquery-1.3.2.min.js"></script>

            <script type="text/javascript">

            </script>

            <script type="text/javascript">

            </script>

            <script type="text/javascript">

            </script>
            <script>var Lmenu_describe_list=new Array('Lmenu_MAINMENU');
            </script>
            <span id="span_Lmenu_MAINMENU">
                <div class="menu" id="Lmenu_MAINMENU">
                    <ul id="ul_Lmenu_MAINMENU">
                        <li id="li_Lmenu_MAINMENU_0"><a href="/newtax/static/main.jsp"><span class="left"><span class="right">主页</span></span></a></li>
                        <li id="li_Lmenu_MAINMENU_1" rel="ul_Lmenu_MAINMENU_1" class="moresub"><a href="#"><span class="left"><span class="right">我的导航</span></span></a><ul id="ul_Lmenu_MAINMENU_1" class="sub">
                            <li id="li_Lmenu_MAINMENU_1_0"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">机构设置导航</font></span></span></a></li>
                            <li id="li_Lmenu_MAINMENU_1_1"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">网上办税导航</font></span></span></a></li>
                            <li id="li_Lmenu_MAINMENU_1_2"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">网上操作导航</font></span></span></a></li>
                        </ul>
                        </li>
                        <li id="li_Lmenu_MAINMENU_2"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">我要申报</font></span></span></a></li>
                        <li id="li_Lmenu_MAINMENU_3"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">我要申请</font></span></span></a></li>
                        <li id="li_Lmenu_MAINMENU_4" rel="ul_Lmenu_MAINMENU_4" class="moresub"><a href="#"><span class="left"><span class="right">我的发票</span></span></a><ul id="ul_Lmenu_MAINMENU_4" class="sub">
                            <li id="li_Lmenu_MAINMENU_4_0"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">普通发票网络开具</font></span></span></a></li>
                            <li id="li_Lmenu_MAINMENU_4_1"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">我要认证</font></span></span></a></li>
                            <li id="li_Lmenu_MAINMENU_4_2"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">我要报税</font></span></span></a></li>
                            <li id="li_Lmenu_MAINMENU_4_3"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">发票查询</font></span></span></a></li>
                        </ul>
                        </li>
                        <li id="li_Lmenu_MAINMENU_5" rel="ul_Lmenu_MAINMENU_5" class="moresub"><a href="#"><span class="left"><span class="right">我的信息</span></span></a><ul id="ul_Lmenu_MAINMENU_5" class="sub">
                            <li id="li_Lmenu_MAINMENU_5_0" rel="ul_Lmenu_MAINMENU_5_0" class="moresub"><a href="#"><span class="left"><span class="right">我的办税事项</span></span></a><ul id="ul_Lmenu_MAINMENU_5_0" class="sub">
                                <li id="li_Lmenu_MAINMENU_5_0_0"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">接收回执</font></span></span></a></li>
                                <li id="li_Lmenu_MAINMENU_5_0_1"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">办税进度查询</font></span></span></a></li>
                                <li id="li_Lmenu_MAINMENU_5_0_2"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">其他申报事项</font></span></span></a></li>
                                <li id="li_Lmenu_MAINMENU_5_0_3"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">办税员信息维护</font></span></span></a></li>
                                <li id="li_Lmenu_MAINMENU_5_0_4"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">办税员管理网上申辩调整</font></span></span></a></li>
                            </ul>
                            </li>
                            <li id="li_Lmenu_MAINMENU_5_1" rel="ul_Lmenu_MAINMENU_5_1" class="moresub"><a href="#"><span class="left"><span class="right">我的提醒</span></span></a><ul id="ul_Lmenu_MAINMENU_5_1" class="sub">
                                <li id="li_Lmenu_MAINMENU_5_1_0"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">涉税提醒</font></span></span></a></li>
                            </ul>
                            </li>
                            <li id="li_Lmenu_MAINMENU_5_2" rel="ul_Lmenu_MAINMENU_5_2" class="moresub"><a href="#"><span class="left"><span class="right">我的国税档案</span></span></a><ul id="ul_Lmenu_MAINMENU_5_2" class="sub">
                                <li id="li_Lmenu_MAINMENU_5_2_0" rel="ul_Lmenu_MAINMENU_5_2_0" class="moresub"><a href="#"><span class="left"><span class="right">登记类</span></span></a><ul id="ul_Lmenu_MAINMENU_5_2_0" class="sub">
                                    <li id="li_Lmenu_MAINMENU_5_2_0_0"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">开业登记表</font></span></span></a></li>
                                    <li id="li_Lmenu_MAINMENU_5_2_0_1"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">出口退税认定情况</font></span></span></a></li>
                                    <li id="li_Lmenu_MAINMENU_5_2_0_2"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">税种登记表</font></span></span></a></li>
                                </ul>
                                </li>
                                <li id="li_Lmenu_MAINMENU_5_2_1" rel="ul_Lmenu_MAINMENU_5_2_1" class="moresub"><a href="#"><span class="left"><span class="right">发票类</span></span></a><ul id="ul_Lmenu_MAINMENU_5_2_1" class="sub">
                                    <li id="li_Lmenu_MAINMENU_5_2_1_0"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">发票购领记录</font></span></span></a></li>
                                    <li id="li_Lmenu_MAINMENU_5_2_1_1"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">发票购领资格</font></span></span></a></li>
                                    <li id="li_Lmenu_MAINMENU_5_2_1_2"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">发票结存信息</font></span></span></a></li>
                                    <li id="li_Lmenu_MAINMENU_5_2_1_3"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">发票验销记录</font></span></span></a></li>
                                    <li id="li_Lmenu_MAINMENU_5_2_1_4"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">发票缴销记录</font></span></span></a></li>
                                </ul>
                                </li>
                                <li id="li_Lmenu_MAINMENU_5_2_2" rel="ul_Lmenu_MAINMENU_5_2_2" class="moresub"><a href="#"><span class="left"><span class="right">申报征收类</span></span></a><ul id="ul_Lmenu_MAINMENU_5_2_2" class="sub">
                                    <li id="li_Lmenu_MAINMENU_5_2_2_0"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">税款缴纳信息</font></span></span></a></li>
                                </ul>
                                </li>
                            </ul>
                            </li>
                            <li id="li_Lmenu_MAINMENU_5_3" rel="ul_Lmenu_MAINMENU_5_3" class="moresub"><a href="#"><span class="left"><span class="right">电子签名</span></span></a><ul id="ul_Lmenu_MAINMENU_5_3" class="sub">
                                <li id="li_Lmenu_MAINMENU_5_3_0"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">电子签名测试</font></span></span></a></li>
                                <li id="li_Lmenu_MAINMENU_5_3_1"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">电子签名验证 </font></span></span></a></li>
                            </ul>
                            </li>
                            <li id="li_Lmenu_MAINMENU_5_4" rel="ul_Lmenu_MAINMENU_5_4" class="moresub"><a href="/newtax/menu/menu_id=604"><span class="left"><span class="right">我的通知公告</span></span></a><ul id="ul_Lmenu_MAINMENU_5_4" class="sub">
                                <li id="li_Lmenu_MAINMENU_5_4_0"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">电子签名测试</font></span></span></a></li>
                                <li id="li_Lmenu_MAINMENU_5_4_1"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">电子签名验证 </font></span></span></a></li>
                            </ul>
                            </li>
                        </ul>
                        </li>
                        <li id="li_Lmenu_MAINMENU_6"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">我的收藏夹</font></span></span></a></li>
                        <li id="li_Lmenu_MAINMENU_7"><a href="/newtax/static/main.jsp"><span class="left"><span class="right"><font color="gray">税法知识库</font></span></span></a></li>
                    </ul>
                </div>
                <script type="text/javascript"> $(function(){
     $("li[id^='li_Lmenu_MAINMENU']").hover(
     function(){
         var aNode = $(this).children("ul[id^="+"ul"+this.id.substring(2,this.id.length)+"]");
         aNode.show('fast');
     },function(){
         var aNode = $(this).children("ul[id^="+"ul"+this.id.substring(2,this.id.length)+"]");
         aNode.hide('normal');
     })
 });
                </script>
            </span>
            <table class="line" cellpadding="0" cellspacing="0">
            </table>
            <div id="loading" align="center" style="position: absolute; display: none; top: 30%; left: 40%; z-index: 99">
                <img src="/newtax/static/images/butterfly/loading.gif" width="50" height="50" alt=""/>
                <br/>
                <font color="green"><strong>读取数据，请稍等...</strong></font>
            </div>

            <div style="display: none" id="temp"></div>

        </div>
        <div id="main">

            <form runat="server" id="form1">
                <div style="background-color:white;width:913px;height:424px;">
<%--                    <div style="text-align:center;color:red;height:14px">欢迎南京汉风堂能源物资有限公司!</div>--%>
                       <table width="765" border="0" cellspacing="0" cellpadding="0" bgcolor="#FFFFFF" align="center">
    <tbody><tr>
        <td width="273" height="19">当前位置：<a class="class" href="../../../">首页</a> &gt;&gt;网上办税平台</td>
        <td width="373">
            <div align="left">
                
                    <font color="red">欢迎南京海亿自动化技术有限公司！
                    </font>
                </div>
        </td>
    </tr>
</tbody></table>
                    <div style="background-color:white">
                        <div style="float:left;width:225px;background-image:url('/Images/menubarnoword.png');background-repeat:no-repeat">
                            <div style="margin-left:15px;margin-top:9px;color:white;font-size:11px">欢迎你进入网上报税系统</div>
                            <div>
                                <div style="color: #FFFFFF;float: left;font-size: 9px;height: 38px;margin-top: 6px;text-align: center;width: 30px;"><div>申</div><div>报</div></div>
                                <div style="margin-top:18px;margin-left:-10px;color:red;float:left">
                                    ·功·能·目·录
                                </div>
                                <div style="clear:both"></div>

                            </div>
                            <div style="margin-left:38px;font-size:14px">
                                <div style="height:32px;color:gray;font-size: 12px;font-family:'Arial,宋体';">更换所属时期</div>
                                <div style="height:32px;color:gray;font-size: 12px;font-family:'Arial,宋体';">网上申报说明</div>
                                <div style="height:32px;color:gray;font-size: 12px;font-family:'Arial,宋体';">常见问题解答</div>
                                <div style="height:32px;color:gray;font-size: 12px;font-family:'Arial,宋体';">封面汇总打印</div>
                                <div style="height:32px;color:gray;font-size: 12px;font-family:'Arial,宋体';">退出网上申报</div>
                            </div>
                        </div>
                        <div style="float:left;width:635px">
                         
                            <table width="90%" border="0" cellspacing="0" cellpadding="10">
        <tbody><tr>
            <td><img src="/newtax/static/assets/images/sanjiao.gif" width="14" height="7"> <font color="999999" class="p1">
                你现在的位置：[企业]...申报报表...选择所属时期页面<br>
                ...................................................................................
            </font></td>
        </tr>
    </tbody></table>
                            <table width="90%" border="0" cellspacing="0" cellpadding="0" background="/newtax/static/assets/images/back3.gif" height="330">
        <tbody><tr>
            

            <td width="11">&nbsp;</td>
            <td valign="top" colspan="3" rowspan="2">
                <table width="90%" border="0" cellspacing="0" cellpadding="0" align="center" height="300">
                    <tbody><tr>
                        <td valign="top">
                            <table align="center" border="0" bordercolordark="#ffffff" bordercolorlight="#000000" cellpadding="0" cellspacing="0" width="95%" background="/newtax/static/assets/images/back3.gif">
                                <tbody><tr align="center">
                                    <td colspan="2" class="p4">
                                        <table width="100%" border="0" cellspacing="0" cellpadding="0">
                                            <tbody><tr>
                                                <td width="61" bgcolor="104D9C"><img src="/newtax/static/assets/images/sanjiao3.gif" width="23" height="19"></td>
                                                <td bgcolor="104D9C" align="center"><font color="ffffff">
                                                    &gt;&gt;&gt;--------填写报表：选择所属时期--------&lt;&lt;&lt;</font></td>
                                                <td align="right" width="68" bgcolor="104D9C"><img src="/newtax/static/assets/images/sanjiao4.gif" width="68" height="19"></td>
                                            </tr>
                                        </tbody></table>
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="p1" valign="middle"></td>
                                    <td height="50" valign="middle">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" class="p1" valign="middle"><img src="/newtax/static/assets/images/sanjiao2.gif" width="12" height="12">所属时期：</td>
                                    <td height="50" valign="middle">
                                        <input type="text" name="year" maxlength="4" size="4" value="2014" id="year">
                                        年
                                        <input type="text" name="mon" maxlength="2" size="2" value="5" id="month"> 月
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" width="40%">&nbsp;</td>
                                    <td width="60%" height="50" valign="bottom">
                                        <input type="submit" value="确定">
                                        <input type="reset" value="重填">
                                    </td>
                                </tr>
                                <tr>
                                    <td align="right" width="40%">&nbsp;</td>
                                    <td width="60%" height="20" valign="bottom" nowrap="">&nbsp;</td>
                                </tr>
                            </tbody></table>

                            <br></td>
                    </tr>
                </tbody></table>
            </td>
        </tr>
    </tbody></table>
                        </div>
                        <div style="clear:both"></div>
                    </div>
                 </div>
            </form>


        </div>

        <script type="text/javascript">
            function returnUrl() {
                document.location.href = "/newtax/login/nsrsbh/" + document.getElementById("j_nsrsbh").value;
            }
        </script>



        <div id="copyright" style="margin-left:auto;margin-right:auto">
            | 2001-2010 | 版权所有 江苏省国家税务局 主办 |<br />
            | 地址：江苏省南京市中山北路55号 | 邮编：210008 | 备案序号：苏ICP备05002258 |
        </div>
    </div>

</body>


</html>

