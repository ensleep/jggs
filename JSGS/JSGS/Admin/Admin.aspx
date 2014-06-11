<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="JSGS.Admin.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tbody>
                <tr><td colspan="2">用户配置</td></tr>
                <tr><td>用户</td><td>用户名</td><td>密码</td></tr>
                <tr><td>用户1：</td><td><asp:TextBox runat="server" ID="tbUserName0"></asp:TextBox></td><td><asp:TextBox runat="server" ID="tbPassword0"></asp:TextBox></td></tr>
                <tr><td>用户2：</td><td><asp:TextBox runat="server" ID="tbUserName1"></asp:TextBox></td><td><asp:TextBox runat="server" ID="tbPassword1"></asp:TextBox></td></tr>
                <tr><td>用户3：</td><td><asp:TextBox runat="server" ID="tbUserName2"></asp:TextBox></td><td><asp:TextBox runat="server" ID="tbPassword2"></asp:TextBox></td></tr>
                <tr><td>用户4：</td><td><asp:TextBox runat="server" ID="tbUserName3"></asp:TextBox></td><td><asp:TextBox runat="server" ID="tbPassword3"></asp:TextBox></td></tr>
                <tr><td>用户5：</td><td><asp:TextBox runat="server" ID="tbUserName4"></asp:TextBox></td><td><asp:TextBox runat="server" ID="tbPassword4"></asp:TextBox></td></tr>
                <tr><td colspan="3"><asp:Button runat="server" Text="提交" ID="btnSaveUser" OnClick="btnSaveUser_Click" /></td></tr>
            </tbody>
        </table>
    </div>
    </form>
</body>
</html>
