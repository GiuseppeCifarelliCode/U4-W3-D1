<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="Concessionaria.Concessionaria" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <title></title>
</head>
<body class="container-fluid">
    <form id="form1" runat="server">
        <div class="d-flex justify-content-around align-items-center">
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="true">
                <asp:ListItem Text=""></asp:ListItem>
                <asp:ListItem Value="bmw.png" Text="BMW"></asp:ListItem>
                <asp:ListItem Value="mercedes.png" Text="Mercedes"></asp:ListItem>
                <asp:ListItem Value="porsche.png" Text="Porsche"></asp:ListItem>
                <asp:ListItem Value="lamborghini.png" Text="Lamborghini"></asp:ListItem>
            </asp:DropDownList>
                <div>
                    <asp:Image ID="Image1" runat="server" Width="200px" />
                    <h3>Prezzo Auto:</h3>
                    <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
                </div>
        </div>
        <div>
            <h3>OPTIONAL</h3>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" CssClass="border border-primary" RepeatColumns="3" CellSpacing="5">
                <asp:ListItem Value="330" Text="Vernice metallizzata (costo euro 330,00)"></asp:ListItem>
                <asp:ListItem Value="180" Text="Fari Xeno (costo euro 180,00)"></asp:ListItem>
                <asp:ListItem Value="1800" Text="Sistema Navigazione Satellitare (costo euro 1800,00)"></asp:ListItem>
                <asp:ListItem Value="2000" Text="Line Assistant (costo euro 2000,00)"></asp:ListItem>
                <asp:ListItem Value="155" Text="Ruota di scorte (costo euro 155,00)"></asp:ListItem>
                <asp:ListItem Value="700" Text="Sedili/Volante in pelle (costo euro 700,00)"></asp:ListItem>
            </asp:CheckBoxList>
            <h3>Anni di Garanzia</h3>
            <asp:DropDownList ID="DropDownList2" runat="server" Width="200px">
                <asp:ListItem Value="0" Text=""></asp:ListItem>
                <asp:ListItem Value="1" Text="1"></asp:ListItem>
                <asp:ListItem Value="2" Text="2"></asp:ListItem>
                <asp:ListItem Value="3" Text="3"></asp:ListItem>
                <asp:ListItem Value="4" Text="4"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="row d-flex align-items-center">
            <div class="col-6">
            <asp:Button ID="Button1" runat="server" Text="Calcola il preventivo" OnClick="Button1_Click" />
            </div>
            <div class="col-6 border border-3 border-dark text-bg-info">
                <div class="d-flex align-items-center">
                <h5>Costo auto:</h5>
                <asp:Label ID="costoAuto" runat="server" Text=""></asp:Label>
                </div>
                <div class="d-flex align-items-center">
                <h5>Costo optional:</h5>
                <asp:Label ID="costoOptional" runat="server" Text=""></asp:Label>
                    </div>
                <div class="d-flex align-items-center">
                <h5>Costo Garanzia:</h5>
                <asp:Label ID="costoGaranzia" runat="server" Text=""></asp:Label>
                    </div>
                <div class="d-flex align-items-center">
                    <h3>Preventivo:</h3>
                    <asp:Label ID="preventivo" runat="server" Text=""></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
