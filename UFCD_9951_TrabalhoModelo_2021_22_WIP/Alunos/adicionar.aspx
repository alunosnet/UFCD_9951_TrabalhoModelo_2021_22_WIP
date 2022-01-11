<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="adicionar.aspx.cs" Inherits="UFCD_9951_TrabalhoModelo_2021_22_WIP.Alunos.adicionar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Adicionar Aluno</h1>
            <asp:FormView DefaultMode="Insert" ID="FormView1" runat="server" DataKeyNames="nprocesso" DataSourceID="SqlAlunos">
                <EditItemTemplate>
                    nprocesso:
                    <asp:Label Text='<%# Eval("nprocesso") %>' runat="server" ID="nprocessoLabel1" /><br />
                    nome:
                    <asp:TextBox Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                    data_nascimento:
                    <asp:TextBox Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" /><br />
                    genero:
                    <asp:TextBox Text='<%# Bind("genero") %>' runat="server" ID="generoTextBox" /><br />
                    morada:
                    <asp:TextBox Text='<%# Bind("morada") %>' runat="server" ID="moradaTextBox" /><br />
                    cp:
                    <asp:TextBox Text='<%# Bind("cp") %>' runat="server" ID="cpTextBox" /><br />
                    localidade:
                    <asp:TextBox Text='<%# Bind("localidade") %>' runat="server" ID="localidadeTextBox" /><br />
                    email:
                    <asp:TextBox Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" /><br />
                    fotografia:
                    <asp:TextBox Text='<%# Bind("fotografia") %>' runat="server" ID="fotografiaTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Update" CommandName="Update" ID="UpdateButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="UpdateCancelButton" CausesValidation="False" />
                </EditItemTemplate>
                <InsertItemTemplate>
                    Nome:
                    <asp:TextBox placeholder="Insere o teu nome" Text='<%# Bind("nome") %>' runat="server" ID="nomeTextBox" /><br />
                    Data Nascimento:
                    <asp:TextBox TextMode="Date" Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoTextBox" /><br />
                    Género:
                    <asp:DropDownList ID="DropDownList1" runat="server" SelectedValue='<%# Bind("genero") %>'>
                        <asp:ListItem Text="Masculino" Value="M" />
                        <asp:ListItem Text="Feminino" Value="F" />
                        <asp:ListItem Text="Outro" Value="O" />
                    </asp:DropDownList>
                    <br />Morada:
                    <asp:TextBox placeholder="A sua morada" Text='<%# Bind("morada") %>' runat="server" ID="moradaTextBox" /><br />
                    Código postal:
                    <asp:TextBox placeholder="O código postal" Text='<%# Bind("cp") %>' runat="server" ID="cpTextBox" /><br />
                    Localidade:
                    <asp:TextBox Text='<%# Bind("localidade") %>' runat="server" ID="localidadeTextBox" /><br />
                    Email:
                    <asp:TextBox TextMode="Email" Text='<%# Bind("email") %>' runat="server" ID="emailTextBox" /><br />
                    <asp:LinkButton runat="server" Text="Insert" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancel" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
                </InsertItemTemplate>
                <ItemTemplate>
                    nprocesso:
                    <asp:Label Text='<%# Eval("nprocesso") %>' runat="server" ID="nprocessoLabel" /><br />
                    nome:
                    <asp:Label Text='<%# Bind("nome") %>' runat="server" ID="nomeLabel" /><br />
                    data_nascimento:
                    <asp:Label Text='<%# Bind("data_nascimento") %>' runat="server" ID="data_nascimentoLabel" /><br />
                    genero:
                    <asp:Label Text='<%# Bind("genero") %>' runat="server" ID="generoLabel" /><br />
                    morada:
                    <asp:Label Text='<%# Bind("morada") %>' runat="server" ID="moradaLabel" /><br />
                    cp:
                    <asp:Label Text='<%# Bind("cp") %>' runat="server" ID="cpLabel" /><br />
                    localidade:
                    <asp:Label Text='<%# Bind("localidade") %>' runat="server" ID="localidadeLabel" /><br />
                    email:
                    <asp:Label Text='<%# Bind("email") %>' runat="server" ID="emailLabel" /><br />
                    fotografia:
                    <asp:Label Text='<%# Bind("fotografia") %>' runat="server" ID="fotografiaLabel" /><br />
                    <asp:LinkButton runat="server" Text="New" CommandName="New" ID="NewButton" CausesValidation="False" />
                </ItemTemplate>
            </asp:FormView>
            <asp:SqlDataSource runat="server" ID="SqlAlunos" ConnectionString='<%$ ConnectionStrings:ConnectionString %>' InsertCommand="INSERT INTO Alunos(nome,data_nascimento,genero,morada,cp,localidade,email,fotografia)
values (@nome,@data_nascimento,@genero,@morada,@cp,@localidade,@email,@fotografia)"
                SelectCommand="SELECT * FROM [alunos]">
                <InsertParameters>
                    <asp:Parameter Name="nome"></asp:Parameter>
                    <asp:Parameter Name="data_nascimento" DbType="Date"></asp:Parameter>
                    <asp:Parameter Name="genero"></asp:Parameter>
                    <asp:Parameter Name="morada"></asp:Parameter>
                    <asp:Parameter Name="cp"></asp:Parameter>
                    <asp:Parameter Name="localidade"></asp:Parameter>
                    <asp:Parameter Name="email"></asp:Parameter>
                    <asp:Parameter Name="fotografia"></asp:Parameter>
                </InsertParameters>
            </asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
