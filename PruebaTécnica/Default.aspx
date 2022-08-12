<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="PruebaTécnica._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <div>
    <h1>Crear Cliente</h1>
    <asp:Label ID="Label1" runat="server" Text="Insertar ID"></asp:Label>
    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label2" runat="server" Text="Insertar Fecha"></asp:Label>
    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label3" runat="server" Text="Insertar Nombre"></asp:Label>
    <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label4" runat="server" Text="Insertar Apellidos"></asp:Label>
    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label5" runat="server" Text="Insertar Documento"></asp:Label>
    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label6" runat="server" Text="Insertar Direccion"></asp:Label>
    <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
    <br><br />
        <asp:Button ID="Button1" runat="server" Text="Crear" OnClick="Button1_Click"  />

    </div>
    <br />
    <br />
        <div>
    <h1>Actualizar Cliente</h1>
    <asp:Label ID="Label7" runat="server" Text="Insertar ID"></asp:Label>
    <asp:TextBox ID="TextBox7" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label8" runat="server" Text="Insertar Fecha"></asp:Label>
    <asp:TextBox ID="TextBox8" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label9" runat="server" Text="Insertar Nombre"></asp:Label>
    <asp:TextBox ID="TextBox9" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label10" runat="server" Text="Insertar Apellidos"></asp:Label>
    <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label11" runat="server" Text="Insertar Documento"></asp:Label>
    <asp:TextBox ID="TextBox11" runat="server"></asp:TextBox>
    <br><br />
    <asp:Label ID="Label12" runat="server" Text="Insertar Direccion"></asp:Label>
    <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
    <br><br />
        <asp:Button ID="Button2" runat="server" Text="Actualizar" OnClick="actualizarClient" />

    </div>
</asp:Content>
