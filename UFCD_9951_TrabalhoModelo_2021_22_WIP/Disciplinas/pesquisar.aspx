<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pesquisar.aspx.cs" Inherits="UFCD_9951_TrabalhoModelo_2021_22_WIP.Disciplinas.pesquisar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="/public/bootstrap.min.css" rel="stylesheet" />
    <link href="/public/estilos.css" rel="stylesheet" />
    <script src="/public/jquery-3.5.1.slim.min.js"></script>
    <script src="/public/bootstrap.bundle.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
             <!--navbar-->
            <!--Menu-->
            <nav class="navbar navbar-expand-md navbar-dark bg-dark fixed-top">
                <a class="navbar-brand" href="/index.aspx">PS - UFCD 9951</a>
                <!--Botão hamburguer-->
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <!--Botão hamburguer-->
                <div class="collapse navbar-collapse" id="navbarsExampleDefault">
                    <ul class="navbar-nav mr-auto">
                        <!--Alunos-->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="dropdown01" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Alunos</a>
                            <div class="dropdown-menu" aria-labelledby="dropdown01">
                                <a class="dropdown-item" href="/Alunos/adicionar.aspx">Adicionar</a>
                                <a class="dropdown-item" href="/Alunos/gerir.aspx">Gerir</a>
                                <a class="dropdown-item" href="/Alunos/pesquisar.aspx">Pesquisar</a>
                            </div>
                        </li>
                        <!--Alunos-->
                        <!--Disciplinas-->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="dropdown02" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Disciplinas</a>
                            <div class="dropdown-menu" aria-labelledby="dropdown02">
                                <a class="dropdown-item" href="/Disciplinas/adicionar.aspx">Adicionar</a>
                                <a class="dropdown-item" href="/Disciplinas/gerir.aspx">Gerir</a>
                                <a class="dropdown-item" href="/Disciplinas/pesquisar.aspx">Pesquisar</a>
                            </div>
                        </li>
                        <!--Disciplinas-->
                        <!--Notas-->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="dropdown03" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Notas</a>
                            <div class="dropdown-menu" aria-labelledby="dropdown03">
                                <a class="dropdown-item" href="/Notas/adicionar.aspx">Adicionar</a>
                                <a class="dropdown-item" href="/Notas/gerir.aspx">Gerir</a>
                                <a class="dropdown-item" href="/Notas/pesquisar.aspx">Pesquisar</a>
                            </div>
                        </li>
                        <!--Notas-->
                        <!--Estatísticas-->
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="dropdown04" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Estatísticas</a>
                            <div class="dropdown-menu" aria-labelledby="dropdown04">
                                <a class="dropdown-item" href="/Consultas/media_aluno.aspx">Média por aluno</a>
                                <a class="dropdown-item" href="/Consultas/melhor_aluno.aspx">Melhor aluno</a>
                                <a class="dropdown-item" href="/Consultas/nr_notas_disciplina.aspx">Nr de Notas Por Disciplina</a>
                            </div>
                        </li>
                        <!--Estatísticas-->
                    </ul>
                </div>
            </nav>
            <!--Menu-->
            Disciplina:<asp:DropDownList CssClass="form-control" AutoPostBack="true" ID="DropDownList1" runat="server" DataSourceID="SqlListaDisciplinas" DataTextField="nome" DataValueField="nome"></asp:DropDownList>
            <asp:SqlDataSource runat="server" ID="SqlListaDisciplinas" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT DISTINCT [nome] FROM [disciplinas] ORDER BY [nome]"></asp:SqlDataSource>
            <asp:ListView ID="ListView1" runat="server" DataSourceID="SqlPesquisa" DataKeyNames="codigo">
                <AlternatingItemTemplate>
                    <li style="">codigo:
                        <asp:Label Text='<%# Eval("codigo") %>' runat="server" ID="codigoLabel" /><br />
                        nome:
                        <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /><br />
                        nr_modulos:
                        <asp:Label Text='<%# Eval("nr_modulos") %>' runat="server" ID="nr_modulosLabel" /><br />
                        ano_escolaridade:
                        <asp:Label Text='<%# Eval("ano_escolaridade") %>' runat="server" ID="ano_escolaridadeLabel" /><br />
                    </li>
                </AlternatingItemTemplate>
                <EditItemTemplate>
                    <li style="">codigo:
                        <asp:Label Text='<%# Eval("codigo") %>' runat="server" ID="codigoLabel1" /><br />
                        nome:
                        <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                        nr_modulos:
                        <asp:TextBox Text='<%# Bind("nr_modulos") %>' runat="server" ID="nr_modulosTextBox" /><br />
                        ano_escolaridade:
                        <asp:TextBox Text='<%# Bind("ano_escolaridade") %>' runat="server" ID="ano_escolaridadeTextBox" /><br />
                        <asp:Button runat="server" CommandName="Update" Text="Update" ID="UpdateButton" /><asp:Button runat="server" CommandName="Cancel" Text="Cancel" ID="CancelButton" /></li>
                </EditItemTemplate>
                <EmptyDataTemplate>
                    No data was returned.
                </EmptyDataTemplate>
                <InsertItemTemplate>
                    <li style="">nome:
                        <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                        nr_modulos:
                        <asp:TextBox Text='<%# Bind("nr_modulos") %>' runat="server" ID="nr_modulosTextBox" /><br />
                        ano_escolaridade:
                        <asp:TextBox Text='<%# Bind("ano_escolaridade") %>' runat="server" ID="ano_escolaridadeTextBox" /><br />
                        <asp:Button runat="server" CommandName="Insert" Text="Insert" ID="InsertButton" /><asp:Button runat="server" CommandName="Cancel" Text="Clear" ID="CancelButton" /></li>
                </InsertItemTemplate>
                <ItemSeparatorTemplate>
                    <br />
                </ItemSeparatorTemplate>
                <ItemTemplate>
                    <li style="">codigo:
                        <asp:Label Text='<%# Eval("codigo") %>' runat="server" ID="codigoLabel" /><br />
                        nome:
                        <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /><br />
                        nr_modulos:
                        <asp:Label Text='<%# Eval("nr_modulos") %>' runat="server" ID="nr_modulosLabel" /><br />
                        ano_escolaridade:
                        <asp:Label Text='<%# Eval("ano_escolaridade") %>' runat="server" ID="ano_escolaridadeLabel" /><br />
                    </li>
                </ItemTemplate>
                <LayoutTemplate>
                    <ul runat="server" id="itemPlaceholderContainer" style="">
                        <li runat="server" id="itemPlaceholder" />
                    </ul>
                    <div style="">
                    </div>
                </LayoutTemplate>
                <SelectedItemTemplate>
                    <li style="">codigo:
                        <asp:Label Text='<%# Eval("codigo") %>' runat="server" ID="codigoLabel" /><br />
                        nome:
                        <asp:Label Text='<%# Eval("nome") %>' runat="server" ID="nomeLabel" /><br />
                        nr_modulos:
                        <asp:Label Text='<%# Eval("nr_modulos") %>' runat="server" ID="nr_modulosLabel" /><br />
                        ano_escolaridade:
                        <asp:Label Text='<%# Eval("ano_escolaridade") %>' runat="server" ID="ano_escolaridadeLabel" /><br />
                    </li>
                </SelectedItemTemplate>
            </asp:ListView>
            <asp:SqlDataSource runat="server" ID="SqlPesquisa" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [disciplinas] WHERE ([nome] = @nome) ORDER BY [ano_escolaridade]">
                <SelectParameters>
                    <asp:ControlParameter ControlID="DropDownList1" PropertyName="SelectedValue" Name="nome" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
