<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="main.aspx.cs" Inherits="JSGS.newtax.static.main" %>

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
        <script src="../../Scripts/jquerycookies.js"  type="text/javascript"></script>
        <script src="/newtax/static/js/jquery/thickbox.js" type="text/javascript"></script>
        <script type="text/javascript">
            $(document).ready(function () {
                $(":input").focus(function () {
                    $(this).addClass("focus");
                }).blur(function () {
                    $(this).removeClass("focus");

                });
                ChangeImg();
            });
            function ChangeImg() {
                var img = 0;
                var validimg = 0;
                if (Jcookie("validimg") == null) {
                    Jcookie("validimg", "1");
                    img = 1;
                } else {
                    validimg =parseInt(Jcookie("validimg"));
                    if (validimg > 19) {
                        img = 1;
                        Jcookie("validimg", "1");
                    } else {
                        img = 1 + validimg;
                    }
                }
                $("#validimg").attr("src", "../../images/jcaptcha (" + img + ").jpg");
                Jcookie("validimg", img);
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
                <img src="/newtax/static/images/butterfly/loading.gif" width="50" height="50" alt="">
                <br/>
                <font color="green"><strong>读取数据，请稍等...</strong></font>
            </div>

            <div style="display: none" id="temp"></div>

        </div>
        <div id="main">

            <form name="f" runat="server">

                <div>
                    <div id="left">
                        <div style="padding: 0px 0px 0px 0px; float: left; margin: 1px 0 0 0;">
                            <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
                                codebase="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
                                width="632" height="200">
                                <param name="movie" value="/newtax/static/images/fl2.swf" />
                                <param name="quality" value="high" />
                                <param name="wmode" value="transparent"/>
                                <embed src="/newtax/static/images/fl2.swf" quality="high"
                                    pluginspage="http://www.macromedia.com/go/getflashplayer" type="application/x-shockwave-flash"
                                    width="632" height="200"></embed>
                            </object>
                        </div>
                    </div>

                    <div id="right" style="text-align: left; background-image: url('/Images/UserInfo.png'); width: 277px; height: 202px">
                        <div style="height: 42px">&nbsp;</div>
                        <div style="padding-left: 17px">
                            <div class="title_bg">
                                <table style="margin-left:30px">
                                    <tr>
                                        <th style="text-align:justify">用户名：</th>
                                        <td><input type="text" maxlength="30" size="18" class="input" style="width: 120px;" name="j_username"/></td>
                                    </tr>
                                    <tr>
                                        <th style="text-align:justify">密码：</th>
                                        <td><input type="password" class="input" style="width: 120px;" maxlength="15" size="18" name="j_password" id="j_password"/></td>
                                    </tr>
                                    <tr>
                                        <th style="text-align:justify">验证码：</th>
                                        <td><input type="text" class="input" style="width: 120px;" size="12" name="j_captcha" id="j_captcha"/></td>
                                    </tr>
                                    <tr>
                                        <td colspan="2"><span id="captchaImg">
                                        <img id="validimg" alt="" /></span>
                                    <a href="#" onclick="ChangeImg();"><span class="center">换一张</span> </a></td>
                                    </tr>
                                </table>
                                <div>


                                    <a href="/newtax/login/getpass">·忘记密码</a>
                                </div>


                                <div style="padding: 1px;">

                                    <input type="button" value="CA证书登录" class="buttonca" onclick="location.href='https://221.226.83.19/newtax/getprotocol'"/>
                                    &nbsp;<asp:Button runat="server" ID="btnLogn" Text="登录" CssClass="button" OnClick="btnLogn_Click" />
                                    &nbsp;<input type="reset" value="重置" class="button" id="proceed1"/>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="leftbott">
                    <div class="bstxx">
                        <div id="bstqt2">&nbsp;</div>
                        <div style="padding-top: 6px; padding-left: 10px;">
                            <img src="/newtax/static/images/dot2_2.gif" align="absmiddle"/>&nbsp;&nbsp;<a href="#">涉税提醒</a><br/>
                        </div>
                        <div style="padding-top: 6px; padding-left: 10px;">
                            <img src="/newtax/static/images/dot2_2.gif" align="absmiddle"/>&nbsp;&nbsp;<a href="#">税务登记信息
                            </a>
                            <br/>
                        </div>
                        <div style="padding-top: 6px; padding-left: 10px;">
                            <img src="/newtax/static/images/dot2_2.gif" align="absmiddle" />&nbsp;&nbsp;<a href="#">发票购领资格信息
                            </a>
                            <br/>
                        </div>
                        <div style="padding-top: 6px; padding-left: 10px;">
                            <img src="/newtax/static/images/dot2_2.gif" align="absmiddle" />&nbsp;&nbsp;<a href="#">税款缴纳信息
                            </a>
                            <br/>
                        </div>
                        <div style="padding-top: 6px; padding-left: 10px;">
                            <img src="/newtax/static/images/dot2_2.gif" align="absmiddle" />&nbsp;&nbsp;<a href="#">办税进度查询
                            </a>
                            <br/>
                        </div>
                    </div>
                    <div class="bstznhd">
                        <div id="Div1">&nbsp;</div>
                        <div style="padding-top: 6px; padding-left: 10px;">
                            <img src="/newtax/static/images/dot2_2.gif" align="absmiddle" />&nbsp;&nbsp;<a href="#">我要评价</a><br/>
                        </div>
                        <div style="padding-top: 6px; padding-left: 10px;">
                            <img src="/newtax/static/images/dot2_2.gif" align="absmiddle" />&nbsp;&nbsp;<a href="#">我要投诉</a><br/>
                        </div>
                        <div style="padding-top: 6px; padding-left: 10px;">
                            <img src="/newtax/static/images/dot2_2.gif" align="absmiddle" />&nbsp;&nbsp;<a href="#">我要建议</a><br/>
                        </div>
                        <div style="padding-top: 6px; padding-left: 10px;">
                            <img src="/newtax/static/images/dot2_2.gif" align="absmiddle" />&nbsp;&nbsp;<a href="#">网上调查</a><br/>
                        </div>
                    </div>
                    <div class="bstzxfd">
                        <div id="Div2">&nbsp;</div>
                        <div style="padding-top: 6px; padding-left: 10px;">
                            <img src="/newtax/static/images/dot2_2.gif" align="absmiddle" />&nbsp;&nbsp;<a href="#">网上咨询
                            </a>
                            <br/>
                        </div>
                        <div style="padding-top: 6px; padding-left: 10px;">
                            <img src="/newtax/static/images/dot2_2.gif" align="absmiddle" />&nbsp;&nbsp;<a href="#">税法知识库</a><br/>
                        </div>
                        <div style="padding-top: 6px; padding-left: 10px;">
                            <img src="/newtax/static/images/dot2_2.gif" align="absmiddle" />&nbsp;&nbsp;<a href="#">热点问题
                            </a>
                            <br/>
                        </div>
                        <div style="padding-top: 6px; padding-left: 10px;">
                            <img src="/newtax/static/images/dot2_2.gif" align="absmiddle" />&nbsp;&nbsp;<a href="#">税收政策智能问答</a><br/>
                        </div>
                    </div>
                    <div class="bsthelp">
                        <div id="Div3">&nbsp;</div>
                        <div style="padding-top: 6px; padding-left: 10px;">
                            <img src="/newtax/static/images/dot2.gif" align="absmiddle" />&nbsp;&nbsp;<a href="/newtax/menu/menu_id=hsqjyzt">汇算清缴一站通</a><br/>
                        </div>
                        <div style="padding-top: 6px; padding-left: 10px;">
                            <img src="/newtax/static/images/dot2_2.gif" align="absmiddle" />&nbsp;&nbsp;<a href="#">税务机构设置导航
                            </a>
                            <br/>
                        </div>
                        <div style="padding-top: 6px; padding-left: 10px;">
                            <img src="/newtax/static/images/dot2_2.gif" align="absmiddle" />&nbsp;&nbsp;<a href="#">网上操作导航</a><br/>
                        </div>
                        <div style="padding-top: 6px; padding-left: 10px;">
                            <img src="/newtax/static/images/dot2.gif" align="absmiddle" />&nbsp;&nbsp;<a href="/newtax/menu/menu_id=wydy">我要打印</a><br/>
                        </div>
                        <div style="padding-top: 6px; padding-left: 10px;">
                            <img src="/newtax/static/images/dot2_2.gif" align="absmiddle" />&nbsp;&nbsp;<a href="#">接收回执</a><br/>
                        </div>
                    </div>
                    <div class="bstfw" style="width: 280px">
                        <div style="height: 12px"></div>
                        <div style="margin-left: 8px">
                            <div id="Div4">&nbsp;</div>
                            <img src="/newtax/static/images/bstwybs_bjhb.gif" alt="" />
                            <div>
                            <a href="#" style="margin-left:20px">登记</a>
                            <a href="#" style="margin-left:33px">发票</a>
                            <a href="#" style="margin-left:30px">认定</a>
                            <a href="#" style="margin-left:25px">申报征收</a>
                            </div>
                            <div style="background: url(/newtax/static/images/bstwybs_bj3_1.gif) no-repeat; width: 265px; height: 55px; line-height: 55px; vertical-align: middle;">
                                <a href="/newtax/bsdh/bsdh_id=bsdh_home/showpage?keepThis=true&TB_iframe=true&height=400&width=700"
                                    title="网上办税服务厅办税流程导航" class="thickbox" style="margin-left:50px">办税导航</a>
                                <a href="#" style="margin-left:96px">下载中心</a>
                            </div>
                        </div>
                    </div>
                </div>
            </form>


        </div>

        <script type="text/javascript">
            function returnUrl() {
                document.location.href = "/newtax/login/nsrsbh/" + document.getElementById("j_nsrsbh").value;
            }
        </script>



        <div id="copyright">
            | 2001-2010 | 版权所有 江苏省国家税务局 主办 |<br />
            | 地址：江苏省南京市中山北路55号 | 邮编：210008 | 备案序号：苏ICP备05002258 |
        </div>
    </div>

</body>


</html>

