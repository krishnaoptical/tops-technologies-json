<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.master" AutoEventWireup="true" CodeFile="questionPage.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="margin: 0px auto; width: 300px; padding: 10px;">
        <caption>
            Enter Details
        </caption>
        <tr>
            <td>Student Name                
            </td>
            <td>
                <asp:TextBox ID="txt_name" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>Enter Section

            </td>
            <td>
                <asp:TextBox ID="txt_section" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="364px">
                    <Columns>
                        <asp:BoundField DataField="Section" HeaderText="Section Number" />
                        <asp:TemplateField HeaderText="Question in Section">
                            <ItemTemplate>
                                <asp:TextBox ID="txt_q" runat="server"></asp:TextBox>
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
            </td>
        </tr>
        <tr>
            <td>
                <asp:Button ID="btn_previous" runat="server" Text="Prev" OnClick="btn_previous_Click" />
            </td>
            <td>
                <asp:Button ID="btn_next" runat="server" Text="Next" OnClick="btn_next_Click" />
            </td>
        </tr>
    </table>
</asp:Content>

