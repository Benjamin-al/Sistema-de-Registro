<%@ Page Title="" Language="C#" MasterPageFile="~/navbar.Master" AutoEventWireup="true" CodeBehind="registro.aspx.cs" Inherits="crud.registro" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Hello, world!</title>
  </head>
  <body>
    <div class="container">
        <form class="form" id="form" runat="server">
            <div class="form-group col-12 col-m-6 col-lg-8">
                <!--Titulo-->
                <div class="row w-100 align-items-center">
                    <div class="col text-center">
                        <label>Registro</label>
                    </div>
                </div>
                <!--div para rut-->
                <div>
                   <asp:Label runat="server" class="lblform" >
                    Rut:
                   <asp:TextBox id="txtrut" runat="server" class="form-control"  aria-describedby="emailHelp" placeholder="Ingrese Su Rut" ></asp:TextBox>
                   <asp:Label ID="Label1" Class="lblrut" runat="server" Text="Ejemplo: 11111111-1"></asp:Label>
                    </asp:Label>
                <div>

                <!--div para nombre y apelliso-->
                <div class="row">
                    <div class="col">
                        <asp:Label runat="server" class="lblform">Nombre:
                           <asp:TextBox id="txtnombre" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Ingrese Su Nombre"></asp:TextBox>
                        </asp:Label>
                    </div>
                     <div class="col">
                        <asp:Label runat="server" class="lblform">Apellido:
                           <asp:TextBox id="txtapellido" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Ingrese Su Apellido"></asp:TextBox>
                        </asp:Label>
                    </div>
                </div>

                <!--div para edad-->
                <div >
                    <asp:Label runat="server" class="lblform">Edad:
                   <asp:TextBox id="txtedad" type="number" runat="server" class="form-control" aria-describedby="emailHelp" placeholder="Ingrese Su Edad"></asp:TextBox>
                    </asp:Label>
                </div>
        
                <div class="btn col text-center">

                       <!--label error-->
                      <div class="row w-100 align-items-center">
                            <div class="col text-center">
                                <asp:Label ID="lblerror" Class="lblerror" runat="server" ></asp:Label>
                            </div>
                        </div>

                    <div class="row w-100 align-items-center">
                         <div class="col text-center">
                             <asp:Button ID="btnregistrar" runat="server" Text="Registrar" class="btn btn-outline-primary" OnClick="btnregistrar_Click" />
                            </div>
                        </div>
                        <!--mensaje -->
                        <div class="row w-100 align-items-center">
                             <div class="col text-center">
                                <asp:Label ID="mensaje" Class="lblmensaje" runat="server" ></asp:Label>
                            </div>
                        </div>
                   </div>
              </div>
        </form>
    </div>
  </body>
</html>
</asp:Content>
