<%@ Page Title="" Language="C#" MasterPageFile="~/Plantilla.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="NicolasRiffoPrueba.index" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

    <div class="col-md-3">
        <asp:Panel ID="Panel2" runat="server" Visible="true" CssClass="alert alert-success">
            <strong>
                <asp:Label ID="Label5" runat="server">
                        Menu  <span class=" text-right" aria-hidden="true"></span>
                </asp:Label>
            </strong>
        </asp:Panel>
        <asp:LinkButton ID="btn1" OnClick="btn1_Click" CssClass="btn btn-success btn-block" runat="server">administrador<span class="glyphicon right" aria-hidden="true"></span></asp:LinkButton>
        <asp:LinkButton ID="btn2" OnClick="btn2_Click" CssClass="btn btn-success btn-block" runat="server">imprimir<span class="glyphicon  " aria-hidden="true"></span></asp:LinkButton>
        <asp:LinkButton ID="btn3" OnClick="btn3_Click" CssClass="btn btn-success btn-block" runat="server"><span class="glyphicon right" aria-hidden="true"></span></asp:LinkButton>
        <asp:LinkButton ID="btn4" OnClick="btn4_Click" CssClass="btn btn-success btn-block" runat="server"><span class="glyphicon  right" aria-hidden="true"></span></asp:LinkButton>
        <asp:LinkButton ID="LinkButton1" CssClass="btn btn-success btn-block" runat="server"><span class="glyphicon right" aria-hidden="true"></span></asp:LinkButton>
        <asp:LinkButton ID="LinkButton2" CssClass="btn btn-success btn-block" runat="server"><span class="glyphicon right" aria-hidden="true"></span></asp:LinkButton>
        <asp:LinkButton ID="LinkButton3" CssClass="btn btn-success btn-block" runat="server"><span class="glyphicon right" aria-hidden="true"></span></asp:LinkButton>
        <asp:LinkButton ID="LinkButton4" CssClass="btn btn-success btn-block" runat="server"><span class="glyphicon right" aria-hidden="true"></span></asp:LinkButton>
        <asp:LinkButton ID="LinkButton5" CssClass="btn btn-success btn-block" runat="server"><span aria-hidden="true"></span></asp:LinkButton>
        <asp:LinkButton ID="LinkButton6" CssClass="btn btn-success btn-block" runat="server"><span aria-hidden="true"></span></asp:LinkButton>
    </div>
    <div class="col-md-9">
        <asp:Panel ID="Panel1" runat="server" Visible="true" CssClass="alert alert-success">
            <strong>
                <asp:Label ID="lbMensaje" runat="server">
                        Bienvenido a Easy Printing  <span class="glyphicon right" aria-hidden="true"></span>
                </asp:Label>
            </strong>
        </asp:Panel>
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:MultiView ID="MultiView1" ActiveViewIndex="0" runat="server">
                    <asp:View ID="View1" runat="server">
                        <h3 class="text-center">Registrar Usuario</h3>
                        <div class="text-left">
                            <asp:TextBox ID="txtRut" CssClass="form-control" placeholder="Ingresar Rut" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtNombre" CssClass="form-control" placeholder="Ingresar Nombre" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtContraseña" CssClass="form-control" placeholder="Ingresar Contraseña" runat="server"></asp:TextBox>
                            <asp:TextBox ID="txtEmail" CssClass="form-control" placeholder="Ingresar e-mail" runat="server"></asp:TextBox>
                            <br />
                            <strong>Tipo de usuario</strong>
                            <asp:RadioButtonList ID="RadioButtonList3" CssClass="" runat="server">
                                <asp:ListItem Value="Administrador">Administrador</asp:ListItem>
                                <asp:ListItem Value="Docente">Docente</asp:ListItem>
                                <asp:ListItem Value="Alumno">Alumno</asp:ListItem>
                            </asp:RadioButtonList>
                            <asp:LinkButton ID="LinkButton7" OnClick="enviar_Click" CssClass="btn btn-primary" runat="server">Registrar</asp:LinkButton>

                        </div>
                    </asp:View>
                    <asp:View ID="View2" runat="server">
                        <h3 class="text-center">Imprimir</h3>
                        <asp:Panel ID="Panel3" runat="server" Visible="false" CssClass="alert alert-success">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <strong>
                                <asp:Label ID="Label1" runat="server" Text="Encuesta enviada Correctamente."></asp:Label>
                            </strong>
                        </asp:Panel>
                        <div class="text-left">
                            <strong>Imprimir en</strong>
                            <asp:RadioButtonList ID="rb1" runat="server">
                                <asp:ListItem Value="Blanco y negro"></asp:ListItem>
                                <asp:ListItem Value="Color"></asp:ListItem>
                            </asp:RadioButtonList>
                            <br />
                            <asp:CheckBox ID="CheckBox1" Text="Usar cupo" runat="server" />
                            <br />
                             <strong>subir archivo</strong>
                                <asp:FileUpload ID="FileUploadControl" CssClass="btn" runat="server" />
                            <br />
                                <asp:Button runat="server" ID="UploadButton" CssClass="btn btn-success" Text="Subir" OnClick="UploadButton_Click" />
                                <br />                                
                                <asp:Label runat="server" ID="StatusLabel" Text="estado subido: " />
                            <br /> <br />
                          


                            <asp:LinkButton ID="enviar" OnClick="enviar_Click" CssClass="btn btn-primary" runat="server">Imprimir</asp:LinkButton>
                        </div>
                    </asp:View>
                    <asp:View ID="View3" runat="server">
                        <h3 class="text-center">Listado Respuestas</h3>
                        <asp:Panel ID="Panel5" runat="server" Visible="false" CssClass="alert alert-success">
                            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                            <strong>
                                <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
                            </strong>
                        </asp:Panel>
                        <asp:GridView ID="GV1" OnRowCommand="GV1_RowCommand" runat="server" CssClass="table table-condensed" AutoGenerateColumns="false">
                            <HeaderStyle CssClass="btn-success" />
                            <RowStyle CssClass="btn-default" />
                            <Columns>
                                <asp:BoundField DataField="Pregunta" HeaderText="Pregunta" />
                                <asp:BoundField DataField="Respuesta" ControlStyle-CssClass="-center" HeaderText="Respuesta" />
                                <asp:ButtonField CommandName="Seleccionar" ControlStyle-CssClass="btn btn-info" Text="Seleccionar" ButtonType="Button" HeaderText="Seleccionar" />
                            </Columns>

                        </asp:GridView>

                    </asp:View>
                    <asp:View ID="View4" runat="server">
                        <h3 class="text-center">Cantidad de encuestas realizadas</h3>

                        <div class="text-left">
                            <asp:Panel ID="Panel4" runat="server" Visible="false" CssClass="alert alert-success">
                                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                                <strong>
                                    <asp:Label ID="Label3" runat="server" Text="la Cantidad es: 1"></asp:Label>

                                </strong>
                            </asp:Panel>
                            <asp:LinkButton ID="btnRespuestas" OnClick="btnRespuestas_Click" CssClass="btn btn-primary" runat="server">Ver Respuestas</asp:LinkButton>
                        </div>
                    </asp:View>
                </asp:MultiView>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btn1" EventName="Click" />
                <asp:AsyncPostBackTrigger ControlID="btn2" EventName="Click" />
                <asp:AsyncPostBackTrigger ControlID="btn3" EventName="Click" />
                <asp:AsyncPostBackTrigger ControlID="btn4" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>
    </div>

</asp:Content>
