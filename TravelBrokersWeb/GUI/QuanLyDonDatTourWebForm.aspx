<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="QuanLyDonDatTourWebForm.aspx.cs" Inherits="TravelBrokersWeb.GUI.QuanLyDonDatTourWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
        
        <div class="col bg-light content">
          <nav class="navbar navbar-expand-sm bg-light navbar-light">
            <div class="form-inline m-auto" action="/action_page.php">
              <input class="form-control mr-sm-2" type="text" placeholder="Nhập mã đơn đặt tour...">
              <button class="btn btn-success" type="submit">Tìm kiếm</button>
            </div>
          </nav>
          <div class="container-fluid row">
            <div class="col-lg-4 border-right">
         
              <div class="form-group">
                <label >Mã đơn đặt tour</label>
                <input type="text" class="form-control" placeholder="">
              </div>
              <div class="form-group">
                <label >Mã tour</label>
                <input type="text" class="form-control" placeholder="">
              </div>
              <div class="form-group">
                <label >Họ tên</label>
                <input type="text" class="form-control" placeholder="">
              </div>
              
              
              <div class="form-group">
                <label >Email</label>
                <input type="text" class="form-control" placeholder="">
              </div>
              <div class="form-group">
                <label >Số điện thoại</label>
                <input type="text" class="form-control" placeholder="">
              </div>
              <div class="form-group">
                <label >Địa chỉ</label>
               <input type="text" class="form-control" placeholder="">
              </div>
              <div class="form-group">
                <label >Người lớn</label>
                <input type="number" class="form-control" value="1" min="1" max="100">
              </div>
              <div class="form-group">
                <label >Trẻ em</label>
                <input type="number" class="form-control" value="1" min="1" max="100">
              </div>
              <div class="form-group">
                <label >Trẻ nhỏ</label>
                <input type="number" class="form-control" value="1" min="1" max="100">
              </div>
              <div class="form-group">
                <label >Ghi chú</label>
               <label for="" class="h2 text-danger form-control"></label>
               
              </div>
              
            </div>
            <div class="col-lg ml-2">
              <div class="row">
               <div class="col">
                 <div class="form-group">
                <label >Mã đơn đặt tour</label>
                <input type="text" class="form-control" placeholder="">
              </div>
               </div>
               <div class="col">
                 <div class="form-group">
                <label >Số lượng</label>
                <input type="number" class="form-control" value="1" min="1" max="100">
              </div>
               </div>
                <div class="col">
                 <button type="button" class="btn btn-primary mt-3 mr-3">Thêm vào đơn đặt tour</button>
               </div>
              </div>
              <div class="row overflow-auto tb-sp-sm">
                 <table class="table table-striped table-bordered table-hover text-center tb-giohang ">
          <thead class="thead-dark sticky-top">
            <tr>
              <th scope="col">Họ tên</th>
              <th scope="col">Giới tính</th>
              <th scope="col">Ngày sinh</th>
              <th scope="col">Loại khách</th>
              <th scope="col">Phòng đơn</th>
              <th scope="col">Quốc tịch</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Nguyen Van A</td>
              <td>Nam</td>
                <td>10/10/1998</td>
                 <td>Người lớn</td>
                 <td>Có</td>
                 <td>Việt Nam</td>
            </tr>
 <tr>
    <td>Nguyen Van B</td>
    <td>Nam</td>
      <td>10/10/2012</td>
      <td>Trẻ em</td>
      <td>Không</td>
      <td>Việt Nam</td>
            </tr> <tr>
              <td>Nguyen Thi C</td>
              <td>Nu</td>
                <td>10/10/2015</td>
                 <td>Trẻ nhỏ</td>
                 <td>Không</td>
                 <td>Việt Nam</td>
            </tr> <tr>
              <td>Nguyen Thi D</td>
              <td>Nu</td>
                <td>10/10/1998</td>
                 <td>Người lớn</td>
                 <td>Có</td>
                 <td>Việt Nam</td>
            </tr> <tr>
              <td>Nguyen Van E</td>
              <td>Nam</td>
                <td>10/10/1998</td>
                 <td>Người lớn</td>
                 <td>Có</td>
                 <td>Việt Nam</td>
            </tr>
            <tr>
              <td>Nguyen Van F</td>
              <td>Nam</td>
                <td>10/10/1998</td>
                 <td>Người lớn</td>
                 <td>Có</td>
                 <td>Việt Nam</td>
            </tr>
          </tbody>
        </table>
              </div>  
            </div>
          </div>
          <div class="text-center mt-3">
            <button type="button" class="btn-lg btn-primary mt-3 mr-3">Thêm</button>
              <button type="button" class="btn-lg btn-success mt-3">Cập nhật</button>
              <button type="button" class="btn-lg btn-success mt-3">Xóa</button>
          </div>
          <p class="text-info h2">Danh sách đơn đặt tour</p>
        <table class="table table-striped table-bordered table-hover text-center tb-giohang">
          <thead class="thead-dark">
            <tr>
              <th scope="col">Mã đơn đặt tour</th>
              <th scope="col">Mã tour</th>
              <th scope="col">Họ tên</th>
              <th scope="col">Email</th>
            <th scope="col">Số điện thoại</th>
            <th scope="col">Địa chỉ</th>
            
            <th scope="col">Loại khách</th>
            <th scope="col">Số khách</th>
            <th scope="col">Ghi chú</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>DD01</td>
              <td><a href="*">T01</a></td>
            <td>Nguyen Van A</td>
            <td>khachhangA@gmail.com</td>
            <td>090557641</td>
            <td>Liên Chiểu - Đà Nẵng</td>
            <td>Người lớn</td>
            <td>20</td>
             <td></td>
            </tr>
           <tr>
            <td>DD02</td>
            <td><a href="*">T03</a></td>
          <td>Nguyen Van B</td>
          <td>khachhangB@gmail.com</td>
          <td>090557641</td>
          <td>Liên Chiểu - Đà Nẵng</td>
          <td>Trẻ em</td>
          <td>20</td>
           <td></td>
            </tr><tr>
              <td>DD03</td>
              <td><a href="*">T05</a></td>
            <td>Nguyen Van E</td>
            <td>khachhangE@gmail.com</td>
            <td>090557641</td>
            <td>Liên Chiểu - Đà Nẵng</td>
            <td>Người lớn</td>
            <td>20</td>
             <td></td>
            </tr><tr>
              <td>DD04</td>
              <td><a href="*">T04</a></td>
            <td>Nguyen Thi D</td>
            <td>khachhangD@gmail.com</td>
            <td>090557641</td>
            <td>Liên Chiểu - Đà Nẵng</td>
            <td>Người lớn</td>
            <td>20</td>
             <td></td>
            </tr>
          </tbody>
        </table>
             
        </div>
</asp:Content>
