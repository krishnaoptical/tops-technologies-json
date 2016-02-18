<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.master" AutoEventWireup="true" CodeFile="marks.aspx.cs" Inherits="Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <script src="jquery-1.11.3.min.js"></script>
    <script>
        $(".txt_1").change(function () {

            alert($(".txt_1").val());

        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="margin: 0px auto; width: 80%; padding: 10px;">
        <caption>
            Enter Details
        </caption>
        <tr>
            <td colspan="2">
                <table>
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
                        <td>Total Marks

                        </td>
                        <td>
                            <asp:TextBox ID="txt_marls" runat="server"></asp:TextBox>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" Width="90%">
                    <Columns>
                        <asp:BoundField DataField="Section" HeaderText="Section No." />
                        <asp:BoundField DataField="qus" HeaderText="Question No." />
                        <asp:TemplateField HeaderText="Marks">
                            <ItemTemplate>
                                <asp:TextBox ID="txt_m" CssClass="txt_1" runat="server" Width="40px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Obtains">
                            <ItemTemplate>
                                <asp:TextBox ID="txt_om" runat="server" Width="40px"></asp:TextBox>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Notes">
                            <ItemTemplate>
                                <asp:TextBox ID="txt_n" runat="server" Width="400px" TextMode="MultiLine"></asp:TextBox>

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

