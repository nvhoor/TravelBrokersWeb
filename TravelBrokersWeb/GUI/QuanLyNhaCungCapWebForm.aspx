<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="QuanLyNhaCungCapWebForm.aspx.cs" Inherits="TravelBrokersWeb.GUI.QuanLyNhaCungCapWebForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
            <div class="col bg-light content">
                <nav class="navbar navbar-expand-sm bg-light navbar-light">
                    <div class="form-inline m-auto" action="/action_page.php">
                        <input class="form-control mr-sm-2" type="text" placeholder="Nhập mã danh mục...">
                        <button class="btn btn-success" type="submit">Tìm kiếm</button>
                    </div>
                </nav>
                <div class="container-fluid row">
                    <div class="col-lg-7 border-right">
                        <div class="w-50 mx-auto">
                            <div class="form-group">
                                <label>Mã nhà cung cấp</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                            <div class="form-group">
                                <label>Mã cấp phép</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                            <div class="form-group">
                                <label>Tên nhà cung cấp</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                            <div class="form-group">
                                <label>Địa chỉ</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>

                            <div class="form-group">
                                <label>Số điện thoại</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                            <div class="form-group">
                                <label>Fax</label>
                                <input type="text" class="form-control" placeholder="">
                            </div>
                        </div>

                    </div>
                    <!-- Thêm mới ảnh của người dùng -->
                    <div class="col-lg ml-2">
                        <div class="row">
                            <div class="col">
                                    <label>Ảnh</label>
                                <div class="form-group">
                                   
                                    <img src="../first_interface/image/cat.jpg"
                                        style="border: 10px;width: 300px;height: 300px;">
                                </div>
                                <div class="custom-file form-group">
                                        <label ></label>
                                        <input type="file" class="custom-file-input form-control" id="customFile">
                                        <label class="custom-file-label" for="customFile">Chọn file ảnh</label>
                                      </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Button THÊM - CẬP NHẬT - XÓA -->
                <div class=" mt-3 row ">
                    <div class="m-auto">
                            <button type="button" class="btn-lg btn-primary mt-3 mr-3 btn-form">Thêm</button>
                            <button type="button" class="btn-lg btn-warning mt-3 mr-3 btn-form">Cập nhật</button>
                            <button type="button" class="btn-lg btn-danger mt-3 btn-form">Xóa</button>
                    </div>
                  </div>
                <!-- Bảng danh sách danh mục -->
                <div class="content02">
                    <p class="text-info h4">Danh sách khách hàng</p>
                    <div class="table-responsive-lg">
                        <table class="table table-striped table-bordered table-hover text-center tb-giohang">
                            <thead class="thead-dark">
                                <tr>
                                    <th scope="col">Mã nhà cung cấp</th>
                                    <th scope="col">Mã cấp phép</th>
                                    <th scope="col">Tên nhà cung cấp</th>
                                    <th scope="col">Địa chỉ</th>
                                    <th scope="col">Số điện thoại</th>
                                    <th scope="col">Email</th>
                                    <th scope="col">Fax</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>NCC01</td>
                                    <td>abcxyz</td>
                                    <td><a href="*">Cty CP-DV Du lich Viet</a></td>
                                    <td>Hai Chau - Da Nang</td>
                                    <td>0396617175</td>
                                    <td>khachhang01@gmail.com</td>
                                    <td>19008168</td>
                                </tr>
                                <tr>
                                    <td>NCC01</td>
                                    <td>abcxyz</td>
                                    <td><a href="*">Cty CP-DV Du lich Viet</a></td>
                                    <td>Hai Chau - Da Nang</td>
                                    <td>0396617175</td>
                                    <td>khachhang01@gmail.com</td>
                                    <td>19008168</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
</asp:Content>
