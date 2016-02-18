<%@ Page Title="" Language="C#" MasterPageFile="~/mainPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <table style="margin: 0px auto; width: 500px; padding: 10px;">
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
                <asp:Button ID="btn_next" runat="server" Text="Next" OnClick="btn_next_Click"/>
            </td>
        </tr>
    </table>
</asp:Content>

