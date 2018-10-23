<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="session.aspx.cs" Inherits="WebApplication1._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <p>
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        </p>

        <fieldset style="width:300px">

        <legend><b>Hobbies</b></legend>

        <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">

            <asp:ListItem Text="Bowling">Bowling</asp:ListItem>
            <asp:ListItem Text="Swimming">Swimming</asp:ListItem>
            <asp:ListItem Text="Driving While Texting">Driving While Texting</asp:ListItem>
        </asp:CheckBoxList>
            </fieldset>
    </form>
</body>
</html>
