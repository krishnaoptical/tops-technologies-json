<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.master" AutoEventWireup="true" CodeFile="showResult.aspx.cs" Inherits="Default3" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <b>Select File
    </b>
    <br />
    <asp:DropDownList ID="ddl_data" runat="server" AutoPostBack="True" Height="24px" OnSelectedIndexChanged="ddl_data_SelectedIndexChanged" Width="504px"></asp:DropDownList>
    <br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="90%">
        <Columns>
            <asp:BoundField DataField="Section" HeaderText="Section No." />
            <asp:BoundField DataField="Question" HeaderText="Question No." />
            <asp:TemplateField HeaderText="Marks">
                <ItemTemplate>
                    <asp:TextBox ID="txt_m" CssClass="txt_1" runat="server" Width="40px" Text="<%# bind('Marks') %>"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Obtains">
                <ItemTemplate>
                    <asp:TextBox ID="txt_om" runat="server" Width="40px" Text="<%# bind('Obtains') %>"></asp:TextBox>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:TemplateField HeaderText="Notes">
                <ItemTemplate>
                    <asp:TextBox ID="txt_n" runat="server" Text="<%# bind('Notes') %>" Width="400px" TextMode="MultiLine"></asp:TextBox>

                </ItemTemplate>
            </asp:TemplateField>
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>

    <br />

    <asp:GridView ID="GridView2" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
            <asp:BoundField DataField="date_" HeaderText="date_" SortExpression="date_" />
            <asp:BoundField DataField="marks_" HeaderText="marks_" SortExpression="marks_" />
            <asp:BoundField DataField="obtains_" HeaderText="obtains_" SortExpression="obtains_" />
            <asp:BoundField DataField="file_path" HeaderText="file_path" SortExpression="file_path" />
        </Columns>
    </asp:GridView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DatabaseConnectionString %>" DeleteCommand="DELETE FROM [tbl_marks] WHERE [id] = @id" InsertCommand="INSERT INTO [tbl_marks] ([name], [date_], [marks_], [obtains_], [file_path]) VALUES (@name, @date_, @marks_, @obtains_, @file_path)" SelectCommand="SELECT * FROM [tbl_marks]" UpdateCommand="UPDATE [tbl_marks] SET [name] = @name, [date_] = @date_, [marks_] = @marks_, [obtains_] = @obtains_, [file_path] = @file_path WHERE [id] = @id">
        <DeleteParameters>
            <asp:Parameter Name="id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter DbType="Date" Name="date_" />
            <asp:Parameter Name="marks_" Type="Int32" />
            <asp:Parameter Name="obtains_" Type="Int32" />
            <asp:Parameter Name="file_path" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="name" Type="String" />
            <asp:Parameter DbType="Date" Name="date_" />
            <asp:Parameter Name="marks_" Type="Int32" />
            <asp:Parameter Name="obtains_" Type="Int32" />
            <asp:Parameter Name="file_path" Type="String" />
            <asp:Parameter Name="id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>

