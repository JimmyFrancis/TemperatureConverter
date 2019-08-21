<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TemperatureConverter.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Ultimate Technology</title>
   <link rel="stylesheet" href = "https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" />
    <link href ="temperature.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="container-fluid">
  <div class="jumbotron">
          <h1>MAGNUM CONVERTER 5000 </h1> </div>
  
  <div class="row">
    <div class="col-sm-4"><img alt="thermometer"  src="images/gauge.jpg" /><br /></div>
    <div class="col-sm-8"><asp:Label ID="Label1" runat="server" Text="FROM"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" Text="TO"></asp:Label>
        <br />
        <asp:DropDownList ID="ddlFrom" runat="server">
            <asp:ListItem>Celsius</asp:ListItem>
            <asp:ListItem>Fahrenheit</asp:ListItem>
            <asp:ListItem>Kelvin</asp:ListItem>
        </asp:DropDownList>
        <asp:DropDownList ID="ddlTo" runat="server">
            <asp:ListItem>Fahrenheit</asp:ListItem>
            <asp:ListItem>Celsius</asp:ListItem>
            <asp:ListItem>Kelvin</asp:ListItem>
        </asp:DropDownList>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server" Text="Input Temperature"></asp:Label>
&nbsp;<asp:TextBox ID="txtTemp" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" Display="Dynamic" ErrorMessage="Must be between -1000 and 1000" ForeColor="#CC0000" MaximumValue="1000" MinimumValue="-1000" Type="Integer" ControlToValidate="txtTemp"></asp:RangeValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" Display="Dynamic" ErrorMessage="Please add a number!" ForeColor="#CC0000" ControlToValidate="txtTemp"></asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label4" runat="server" Text="Output Temperature"></asp:Label>
&nbsp;<asp:Label ID="lblResult" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button class="btn btn-primary btn-lg" ID="btnCalculate" runat="server" Height="44px" OnClick="btnCalculate_Click" Text="Calculate" Width="114px" />
        &nbsp;&nbsp;&nbsp;
        <asp:Button class="btn btn-primary btn-lg" ID="btnClear" runat="server" Height="44px" OnClick="btnClear_Click" Text="Clear" Width="114px" CausesValidation="False" /></div>
  </div>
</div>
               
    </form>
</body>
</html>
