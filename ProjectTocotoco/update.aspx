﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="update.aspx.cs" Inherits="ProjectTocotoco.update" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Styles/update.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="lblTitle" CssClass="label" runat="server" Text="Edit Product"></asp:Label>
    <table style="width:100%;">
        <tr>
            <td class="auto-style3">Ten San Pham</td>
            <td class="auto-style4">
                <asp:TextBox ID="txtTenSanPham" runat="server" OnTextChanged="txtTenSanPham_TextChanged" Width="191px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtTenSanPham" ErrorMessage="San Pham Required"></asp:RequiredFieldValidator>
            </td>
            <td class="auto-style4"></td>
        </tr>
        <tr>
            <td class="auto-style1">Danh Muc</td>
            <td>
                <asp:DropDownList ID="ddlDanhMuc" runat="server" Width="171px">
                </asp:DropDownList>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Size</td>
            <td class="auto-style1">
                <asp:TextBox ID="txtSize" runat="server"></asp:TextBox>
            </td>
            <td class="auto-style1"></td>
        </tr>
        <tr>
            <td class="auto-style1">Gia</td>
            <td>
                <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPrice" ErrorMessage="Price Required"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtPrice" ErrorMessage="From 0 to 999999" MaximumValue="9999999" MinimumValue="0"></asp:RangeValidator>
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Image Url</td>
            <td>
                <asp:TextBox ID="txtUrl" runat="server"></asp:TextBox>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="btnUpLoad" runat="server" Text="Upload" OnClick="btnUpLoad_Click" />
            </td>
            <td>&nbsp;</td>
        </tr>
        <tr>
            <td class="auto-style1">Image</td>
            <td>
                <asp:Image CssClass="image" ID="txtImage"  runat="server" />
            </td>
            <td>
               &nbsp
            </td>
        </tr>
        <tr>
            <td class="auto-style2">
                <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
            </td>
            <td>
                <asp:Button ID="btnCancel" runat="server" Text="Cancel" OnClick="btnCancel_Click" CausesValidation="False" />
            </td>
            <td>&nbsp;</td>
        </tr>
    </table>
</asp:Content>
