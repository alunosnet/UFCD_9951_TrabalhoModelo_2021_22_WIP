<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="pesquisar.aspx.cs" Inherits="UFCD_9951_TrabalhoModelo_2021_22_WIP.Alunos.pesquisar" %>

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
            Nome do aluno a pesquisar:<asp:TextBox CssClass="form-control" ID="TextBox1" runat="server"></asp:TextBox>
            <asp:Button ID="Button1" CssClass="btn btn-lg btn-info" runat="server" Text="Pesquisar" />
            <asp:GridView CssClass="table" EmptyDataText="Não foram encontrados registos" ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="nprocesso" DataSourceID="SqlAlunos">
                <Columns>
                    <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                    <asp:BoundField DataField="nprocesso" HeaderText="nprocesso" ReadOnly="True" InsertVisible="False" SortExpression="nprocesso"></asp:BoundField>
                    <asp:BoundField DataField="nome" HeaderText="nome" SortExpression="nome"></asp:BoundField>
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlAlunos" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT [nprocesso], [nome], [email] FROM [alunos] WHERE ([nome] LIKE '%' + @nome + '%')">
                <SelectParameters>
                    <asp:ControlParameter ControlID="TextBox1" PropertyName="Text" Name="nome" Type="String"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
            <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="nr_nota" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="nr_nota" HeaderText="nr_nota" ReadOnly="True" InsertVisible="False" SortExpression="nr_nota"></asp:BoundField>
                    <asp:BoundField DataField="nprocesso" HeaderText="nprocesso" SortExpression="nprocesso"></asp:BoundField>
                    <asp:BoundField DataField="codigo_disciplina" HeaderText="codigo_disciplina" SortExpression="codigo_disciplina"></asp:BoundField>
                    <asp:BoundField DataField="data_nota" HeaderText="data_nota" SortExpression="data_nota"></asp:BoundField>
                    <asp:BoundField DataField="nr_modulo" HeaderText="nr_modulo" SortExpression="nr_modulo"></asp:BoundField>
                    <asp:BoundField DataField="nota" HeaderText="nota" SortExpression="nota"></asp:BoundField>
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' SelectCommand="SELECT * FROM [notas] WHERE ([nprocesso] = @nprocesso)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" PropertyName="SelectedValue" Name="nprocesso" Type="Int32"></asp:ControlParameter>
                </SelectParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
