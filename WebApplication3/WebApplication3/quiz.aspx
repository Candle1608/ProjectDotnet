<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="quiz.aspx.cs" Inherits="WebApplication3.quiz" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            height: 699px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div style="height: 38px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Treasure Bookstore Management System<br />
        </div>
        <asp:Label ID="Label1" runat="server" Text="      Personal Information"></asp:Label>
        <br />
        <br />
        &nbsp; <asp:Label ID="Label2" runat="server" Text="First Name"></asp:Label>
        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox1" runat="server" Width="212px"></asp:TextBox>
&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1">field up your first name</asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp; <asp:Label ID="Label3" runat="server" Text="Last Name"></asp:Label>
        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged" Width="212px"></asp:TextBox>
        &nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="RequiredFieldValidator">field up your last name</asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp; <asp:Label ID="Label4" runat="server" Text="Phone No."></asp:Label>
        &nbsp;&nbsp;&nbsp;<asp:TextBox ID="TextBox3" runat="server" Width="212px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="CompareValidator" Operator="DataTypeCheck" Type="Integer">should be integer only</asp:CompareValidator>
        <br />
        <br />
        &nbsp;Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="RequiredFieldValidator">field up your gender</asp:RequiredFieldValidator>
&nbsp;<asp:RadioButtonList ID="RadioButtonList1" runat="server" Width="85px" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
            <asp:ListItem>Female</asp:ListItem>
            <asp:ListItem>Male</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        &nbsp;
        <asp:Label ID="Label5" runat="server" Text="Address "></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox4" runat="server" Width="212px"></asp:TextBox>
&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="RequiredFieldValidator">field up your address</asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp; <asp:Label ID="Label6" runat="server" Text="Country"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList1" runat="server" style="margin-left: 0px; margin-right: 15px" Width="212px">
            <asp:ListItem>Malaysia</asp:ListItem>
            <asp:ListItem>Singapore</asp:ListItem>
            <asp:ListItem>Indonesia</asp:ListItem>
            <asp:ListItem>Brunei</asp:ListItem>
            <asp:ListItem></asp:ListItem>
        </asp:DropDownList>
        &nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="DropDownList1" ErrorMessage="RequiredFieldValidator">field up your country</asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp; <asp:Label ID="Label8" runat="server" Text="State"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:DropDownList ID="DropDownList2" runat="server" Height="18px" Width="212px">
            <asp:ListItem>Johor</asp:ListItem>
            <asp:ListItem>Melaka</asp:ListItem>
            <asp:ListItem>Wilayah Persekutuan</asp:ListItem>
            <asp:ListItem>Negeri Sembilan</asp:ListItem>
            <asp:ListItem>Pahang</asp:ListItem>
            <asp:ListItem>Selangor</asp:ListItem>
            <asp:ListItem>Kelantan</asp:ListItem>
            <asp:ListItem>Perak</asp:ListItem>
            <asp:ListItem>Kedah</asp:ListItem>
            <asp:ListItem>Sabah</asp:ListItem>
            <asp:ListItem>Sarawak</asp:ListItem>
            <asp:ListItem>Terengganu</asp:ListItem>
            <asp:ListItem>Perlis</asp:ListItem>
            <asp:ListItem>Pulau Pinang</asp:ListItem>
        </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="DropDownList2" ErrorMessage="RequiredFieldValidator">field up your state</asp:RequiredFieldValidator>
        <br />
        <br />
&nbsp; <asp:Label ID="Label9" runat="server" Text="City"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="TextBox6" runat="server" Width="212px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox6" ErrorMessage="RequiredFieldValidator">field up your city</asp:RequiredFieldValidator>
        <br />
&nbsp;<br />
&nbsp; <asp:Label ID="Label10" runat="server" Text="Post code"></asp:Label>
&nbsp;&nbsp;
        <asp:TextBox ID="TextBox5" runat="server" Width="212px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
        <asp:CompareValidator ID="CompareValidator2" runat="server" ControlToValidate="TextBox5" ErrorMessage="CompareValidator" Operator="DataTypeCheck" Type="Integer">should be integer only</asp:CompareValidator>
        <br />
        <br />

        <fieldset style="width:300px">
        <legend><b>Favourite Type of Books</b></legend>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="CheckBoxList1_SelectedIndexChanged">
            <asp:ListItem Text="Horror">Horror</asp:ListItem>
            <asp:ListItem Text="Education">Education</asp:ListItem>
            <asp:ListItem Text="Technology">Technology</asp:ListItem>
            <asp:ListItem Text="Comics">Comics</asp:ListItem>
        </asp:CheckBoxList>
            </fieldset>
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
        <br />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;
        <br />
    &nbsp;&nbsp;&nbsp;
    </form>
</body>
</html>
