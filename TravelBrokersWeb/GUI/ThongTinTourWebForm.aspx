<<<<<<< HEAD
﻿ <%@ Page Title="" Language="C#" MasterPageFile="~/GUI/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="ThongTinTourWebForm.aspx.cs" Inherits="TravelBrokersWeb.GUI.ThongTinTourWebForm" %>
=======
﻿<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="ThongTinTourWebForm.aspx.cs" Inherits="TravelBrokersWeb.GUI.ThongTinTourWebForm" %>

<%@ Register Src="~/GUI/DanhSachSPWebUserControl.ascx" TagPrefix="uc1" TagName="DanhSachSPWebUserControl" %>

>>>>>>> 7c537dad35b320ec9a29c07d3ad304c3f14be025
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container w-75 m-auto">
     <h1 class="h4 text-danger mt-1"><asp:Label runat="server" ID="lblName"></asp:Label></h1>
     <div class="font-weight-bold mb-2"><i class="fas fa-qrcode"></i> <asp:Label runat="server" ID="lblCode"></asp:Label></div>
     <div class="row">
        <div id="carouselExampleIndicators" class="carousel slide col-lg-7" data-ride="carousel" data-interval="fase">
            <ol class="carousel-indicators">
              <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
              <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
            </ol>
            <div class="carousel-inner">
              <div class="carousel-item active">
                <img class="d-block w-100" src="images/slide-1.jpg" alt="First slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="images/slide-2.jpg" alt="Second slide">
              </div>
              <div class="carousel-item">
                <img class="d-block w-100" src="images/slide-3.jpg" alt="Third slide">
              </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
            </a>
          </div>
        <div class="col-lg-5">
           <div class="star-rate">
              <i class="fas fa-star h2 text-danger"></i>
              <i class="fas fa-star h2 text-danger"></i>
              <i class="fas fa-star h2 text-danger"></i>
              <i class="fas fa-star-half-alt h2 text-danger"></i>
              <i class="far fa-star h2 text-warning"></i>
           </div>
           <div><span><asp:Label runat="server" ID="lblVoteRate"></asp:Label></span><span> trong</span><span> <asp:Label runat="server" ID="lblNumVote"></asp:Label></span><span> đánh giá</span></div>
           <div><i class="fas fa-eye mt-1"></i><span> <asp:Label runat="server" ID="lblView"></asp:Label></span> lượt xem</div>
            <hr class="dashed mt-1">
              <div class="ml-2 mt-2 row"> 
                <div class="col-lg-5">Khởi hành:</div>
                    <div class="col-lg-5"><asp:Label runat="server" ID="lblDepartureDate"></asp:Label></div>
              </div>
              <div class="ml-2 mt-2 row">
                  <div class="col-lg-5">Thời gian:</div>
                      <div class="col-lg-5"><asp:Label runat="server" ID="lblNumDay"></asp:Label> ngày</div>
                </div>
                <div class="ml-2 mt-2 row">
                    <div class="col-lg-5">Nơi khởi hành:</div>
                        <div class="col-lg-5"><asp:Label runat="server" ID="lblDeparturePlace"></asp:Label></div>
                  </div>
                  <hr class="dashed mt-1">
                  <h1 class="h4 text-danger mt-1 ml-3"><asp:Label runat="server" ID="lblPromotionPrice"></asp:Label> đ</h1>
                  <div class="ml-2 mt-2 row">
                      <div class="col-lg-5 mt-3">Số chỗ còn nhận:<span class="text-danger"> <asp:Label runat="server" ID="lblSlot"></asp:Label></span></div>
                          <div class="col-lg-5"><a href="#" class="btn btn-info">Đặt tour</a></div>
                    </div>
        </div>
     </div>
     <div >
        <h1 class="h4 text-danger mt-3">Chương trình tour</h1>
        <p class="mb-3"><asp:Label runat="server" ID="lblDescription"></asp:Label></p>
         <asp:Repeater runat="server" ID="rpTourProg">
             <HeaderTemplate></HeaderTemplate>
             <ItemTemplate>
                 <div class="row">
          <div class="col-lg-3">
            <div class="h1 text-danger ml-3 mt-5"><%#:Eval("orderNumber") %>.</div>
            <div><%#:Eval("date","{0:d}") %></div>
          </div>
              <div class="border">
                  <div class="circle-tour"><i class="fas fa-circle"></i></div>
              </div>
        <div class="col-lg pl-5">
          <h1 class="h5 text-danger mt-3"><i class="fas fa-map-marker-alt"></i> <%#:Eval("tile") %></h1>
            <div><%#:Eval("description") %>
              </div>
              <hr class="dashed mt-3">
          </div>
      </div>
             </ItemTemplate>
             <FooterTemplate></FooterTemplate>
         </asp:Repeater>
        
      <h1 class="h4 text-danger mt-3">Các tour tương tự</h1>
        <uc1:DanhSachSPWebUserControl runat="server" ID="DanhSachSPWebUserControl3" />
            </div>
      </div>
</asp:Content>
