<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/HomeMasterPage.Master" AutoEventWireup="true" CodeBehind="HomeUser.aspx.cs" Inherits="TravelBrokersWeb.GUI.HomeUser" %>

<%@ Register Src="~/GUI/DanhSachSPWebUserControl.ascx" TagPrefix="uc1" TagName="DanhSachSPWebUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row">
          <div class="col-lg-10 content m-auto">
            <div class="container-fluid">
              <div class="h3 mt-3 text-dark  text-center">TOUR HOT NHẤT</div>
              <div class="mt-1 pb-1 text-dark border-bottom text-center">Tour được đặt nhiều nhất</div>
        <uc1:DanhSachSPWebUserControl runat="server" id="DanhSachSPWebUserControl" />
                </div>
              </div>
        </div>
    <div class="row">
            <div class="col-lg-10 content m-auto">
              <div class="container-fluid">
                <div class="h3 mt-3 text-dark  text-center">TOUR MỚI NHẤT</div>
                <div class="mt-1 pb-1 text-dark border-bottom text-center">Tour mới nhất</div>
            <uc1:DanhSachSPWebUserControl runat="server" ID="DanhSachSPWebUserControl1" />
                  </div>
                </div>
            </div>
</asp:Content>
