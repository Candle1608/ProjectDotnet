<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"> //done by ss
    <title></title>
    <style type="text/css">
        #form1 {
            height: 102px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <fieldset style ="width=3000px">

            <legend><b>Gender</b></legend>

        <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged" ViewStateMode="Enabled"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Click me" />
        <p style="height: 38px; margin-top: 11px;">
            <asp:RadioButton ID="RadioButton1" runat="server" GroupName="Gender" OnCheckedChanged="RadioButton1_CheckedChanged" Text="Male" />
            <asp:RadioButton ID="RadioButton2" runat="server" GroupName="Gender" OnCheckedChanged="RadioButton2_CheckedChanged" Text="Female" />
        </p>
            </fieldset>
    </form>
</body>
</html>
