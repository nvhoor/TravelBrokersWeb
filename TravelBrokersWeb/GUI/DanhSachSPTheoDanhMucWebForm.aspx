<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/HomeMasterPage.Master" AutoEventWireup="true" CodeBehind="DanhSachSPTheoDanhMucWebForm.aspx.cs" Inherits="TravelBrokersWeb.GUI.DanhSachSPTheoDanhMucWebForm" %>

<%@ Register Src="~/GUI/DanhSachSPWebUserControl.ascx" TagPrefix="uc1" TagName="DanhSachSPWebUserControl" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <div class="row">
          <div class="col-lg-10 content m-auto">
            <div class="container-fluid">
              <div class="h3 mt-3 text-dark  text-center"><asp:Label runat="server" ID="lblDanhMuc"></asp:Label></div>
              <div class="mt-1 pb-1 text-dark border-bottom text-center"><asp:Label runat="server" ID="lblMoTaDM"></asp:Label></div>
             <uc1:DanhSachSPWebUserControl runat="server" ID="dsTourTheoDM" />
                </div>
              </div>
        </div>
</asp:Content>
