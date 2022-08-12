<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="PruebaTécnica.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
     <div>
    <h1>Crear Factura Header</h1>
    <asp:Label ID="Label1" runat="server" Text="Insertar ID"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label2" runat="server" Text="Insertar Fecha Factura"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label3" runat="server" Text="Cliente ID"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label4" runat="server" Text="Total Facturado"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label5" runat="server" Text="ITBIS Facturado"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <br><br />
        <asp:Button ID="Button1" runat="server" Text="Crear" OnClick="Button1_Click"  />

    </div>
    <br />
    <br />
        <div>
    <h1>Actualizar Factura Header</h1>
    <asp:Label ID="Label7" runat="server" Text="Insertar ID"></asp:Label>
    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label8" runat="server" Text="Insertar Fecha Factura"></asp:Label>
    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label9" runat="server" Text="Insertar Cliente ID"></asp:Label>
    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label10" runat="server" Text="Insertar Total Facturado"></asp:Label>
    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label11" runat="server" Text="Insertar ITBIS Facturado"></asp:Label>
    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
    <br><br />
        <asp:Button ID="Button2" runat="server" Text="Actualizar" OnClick="actualizarFact" />

    </div>
    <h1>Crear Factura Detail</h1>
    <asp:Label ID="Label6" runat="server" Text="Insertar ID"></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label12" runat="server" Text="Insertar ID Header"></asp:Label>
    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label13" runat="server" Text="Cantidad"></asp:Label>
    <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label14" runat="server" Text="Descripción Producto"></asp:Label>
    <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label15" runat="server" Text="ITBIS"></asp:Label>
    <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label21" runat="server" Text="Costo Unitario"></asp:Label>
    <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
    <br><br />
        <asp:Button ID="Button3" runat="server" Text="Crear" OnClick="insertFactd"  />

    </div>
    <br />
    <br />
        <div>
    <h1>Actualizar Factura Detail</h1>
    <asp:Label ID="Label16" runat="server" Text="Insertar ID"></asp:Label>
    <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label17" runat="server" Text="Insertar Id Header"></asp:Label>
    <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label18" runat="server" Text="Insertar Cantidad"></asp:Label>
    <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label19" runat="server" Text="Insertar Descripción Producto"></asp:Label>
    <asp:TextBox ID="TextBox19" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label20" runat="server" Text="Insertar ITBIS"></asp:Label>
    <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label23" runat="server" Text="Insertar Costo Unitario"></asp:Label>
    <asp:TextBox ID="TextBox23" runat="server"></asp:TextBox>
    <br><br />
        <asp:Button ID="Button4" runat="server" Text="Actualizar" OnClick="actualizarFactd" />

    </div>
</asp:Content>
