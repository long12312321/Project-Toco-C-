<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ProjectTocotoco.About" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
    <link href="Styles/about.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
     <div id="newsLetter">
            <div class="container" >
                <h1> Subscribe To Our Newsletter</h1>
                <div class="formSub">
                    <asp:TextBox ID="TextBox1" CssClass="formSub" runat="server"></asp:TextBox>
                    <button type="submit"  class="button_1"> Subscribe </button>
                </div>
            </div>    
        </div>
        <div id="main">
            <div class="container">
                <div id="main-col"> 
                    <h1> Giới Thiệu Tổng Quan Về ToCoToCo </h1>
                    <p>Luôn tâm huyết với việc khai thác nguồn nông sản Việt Nam để tạo ra những ly 
                                thức uống tươi ngon, an toàn và giàu giá trị dinh dưỡng, ToCoToCo mở cửa hàng 
                                đầu tiên vào năm 2013, mang trong mình lòng đam mê và khát vọng xây dựng một 
                                thương hiệu trà sữa thuần Việt, mang đậm hương vị quê hương.</p>
                    <p>ToCoToCo tin rằng 
                    thưởng thức một ly trà sữa được pha chế từ trà Mộc Châu, trân châu từ sắn dây 
                    Nghệ An hay mứt dâu tằm từ Đà Lạt sẽ là những trải nghiệm hoàn toàn khác biệt 
                    và tuyệt vời nhất cho những khách hàng của mình.</p>
                </div>
                <div id="sidebar">
                    <div class="dark">
                        <h3> What We Do </h3>
                        <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry,here are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even</p>
                    </div>
                </div>    
            </div>   
        </div>
        <div class="footer">
            <p class="aaa"> Advertising information please contact phone number: 0988606178 <a href="https://www.facebook.com/odndo"> link facebook  </a> &copy; 2021 </p>
        </div>
</asp:Content>
