<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="QuanLyDanhMucWebForm.aspx.cs" Inherits="TravelBrokersWeb.GUI.QuanLyDanhMucWebForm" %>
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
            <div class="col-lg-4 border-right">
         
              <div class="form-group">
                <label >Mã danh mục</label>
                <input type="text" class="form-control" placeholder="">
              </div>
              <div class="form-group">
                <label >Tên danh mục</label>
                <input type="text" class="form-control" placeholder="">
              </div>
              <div class="form-group">
                <label >Mô tả</label>
                <textarea class="form-control h-100"></textarea>
              </div>  
              <div class="form-group">
                  <label>Hình ảnh</label>
                  <img src="img/4.png" alt="Anh thumail" class="sp-hinhanh">
               </div>
              <div class="custom-file form-group">
                  <label>Hình ảnh</label>
                  <input type="file" class="custom-file-input form-control" id="customFile">
                  <label class="custom-file-label" for="customFile">Chọn file ảnh</label>
                </div>
            </div>
          <!-- Thêm mới tour vào danh mục -->
            <div class="col-lg ml-2">
              <div class="row">
               <div class="col">
                 <div class="form-group">
                <label >Mã tour</label>
                <input type="text" class="form-control" placeholder="">
              </div>
               </div>
                <div class="col">
                 <button type="button" class="btn btn-primary mt-3 mr-3">Thêm vào danh mục</button>
               </div>
              </div>
          <!-- Bảng danh sách tour -->
          <p class="text-info h5" style="font-weight: bold;">Danh sách tour</p>
          <div class="row overflow-auto tb-sp-sm">
            <table class="table table-striped table-bordered table-hover text-center tb-giohang ">
              <thead class="thead-dark sticky-top">
                <tr>
                  <th scope="col">Mã tour</th>
                  <th scope="col">Tên tour</th>
                  <th scope="col">Trạng thái</th>
                  <th scope="col">Đơn Giá</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>Matour01</td>
                  <td><a href="*">Tour A</a></td>
                    <td>true</td>
                    <td>4000000</td>
                </tr>
                <tr>
                  <td>Matour02</td>
                  <td><a href="*">Tour B</a></td>
                    <td>true</td>
                    <td>3000000</td>
                </tr>
                <tr>
                  <td>Matour03</td>
                  <td><a href="*">Tour C</a></td>
                    <td>true</td>
                    <td>7000000</td>
                </tr>
                <tr>
                  <td>Matour04</td>
                  <td><a href="*">Tour D</a></td>
                    <td>true</td>
                    <td>9000000</td>
                </tr>
                <tr>
                  <td>Matour05</td>
                  <td><a href="*">Tour E</a></td>
                    <td>true</td>
                    <td>2002100</td>
                </tr>
                <tr>
                  <td>Matour06</td>
                  <td><a href="*">Tour F</a></td>
                    <td>true</td>
                    <td>3002300</td>
                </tr>
                <tr>
                  <td>Matour07</td>
                  <td><a href="*">Tour G</a></td>
                    <td>true</td>
                    <td>2000780</td>
                </tr>
                <tr>
                  <td>Matour08</td>
                  <td><a href="*">Tour H</a></td>
                    <td>true</td>
                    <td>9000231</td>
                </tr>
                </tr>
                <tr>
                  <td>Matour09</td>
                  <td><a href="*">Tour I</a></td>
                    <td>true</td>
                    <td>2323200</td>
                </tr>
                <tr>
                  <td>Matour10</td>
                  <td><a href="*">Tour J</a></td>
                    <td>true</td>
                    <td>5454342</td>
                </tr> 
              </tbody>
           </table>
          </div>
          <!-- Button THÊM - CẬP NHẬT - XÓA -->
         <!--  <div class="row"> -->
             <div class="ml-20">
                      <button type="button" class="btn-lg btn-primary mt-3 mr-4 btn-form">Thêm</button>
                      <button type="button" class="btn-lg btn-warning mt-3 mr-4 btn-form">Cập nhật</button>
                      <button type="button" class="btn-lg btn-danger mt-3 mr-4 btn-form">Xóa</button>
             </div>
          <!--  </div> -->
          </div>
          </div>
          <!-- Button THÊM - CẬP NHẬT - XÓA -->
          <!-- Bảng danh sách danh mục -->
          <div class="content02">
          <p class="text-info h5" style="font-weight: bold;">Danh sách danh mục</p>
          <div class="overflow-auto tb-sp-sl">
            <table class="table table-striped table-bordered table-hover text-center tb-giohang">
              <thead class="thead-dark">
                <tr>
                  <th scope="col">Mã danh mục</th>
                  <th scope="col">Tên danh mục</th>
                  <th scope="col">Mô tả</th>
                </tr>
              </thead>
              <tbody>
                <tr>
                  <td>DM01</td>
                  <td><a href="*">Tour cao cấp</a></td>
                  <td >Tour cao cấp với những quyền lợi đặc biệt.</td>   
               </tr>
                <tr>
                  <td>DM02</td>
                  <td><a href="*">Tour tiết kiệm</a></td>
                  <td >Tour ưu đãi tiết kiệm chi phí tốt nhất.</td>   
                </tr>
                <tr>
                  <td>DM03</td>
                  <td><a href="*">Tour mùa hè</a></td>
                  <td >Tour tham quan du lịch dành cho những địa điểm mùa hè.</td>   
                </tr>
                <tr>
                  <td>DM05</td>
                  <td><a href="*">Tour mới</a></td>
                  <td>Tour mới mở</td>   
                </tr>
                <tr>
                  <td>DM06</td>
                  <td><a href="*">Tour lễ hội</a></td>
                  <td >Tour dành cho những dịp lễ hội</td>   
                </tr><tr>
                  <td>DM07</td>
                  <td><a href="*">Tour miền núi</a></td>
                  <td >Tour du lịch các tỉnh miền núi</td>   
                </tr>
                <tr>
                  <td>DM08</td>
                  <td><a href="*">Tour Miền Bắc</a></td>
                  <td >Tour du lịch các tỉnh miền Bắc</td>   
                </tr>
                <tr>
                  <td>DM09</td>
                  <td><a href="*">Tour Miền Trung</a></td>
                  <td >Tour du lịch các tỉnh miền Trung</td>   
                </tr>
                <tr>
                  <td>DM010</td>
                  <td><a href="*">Tour Miền Nam</a></td>
                  <td >Tour du lịch các tỉnh miền Nam</td>   
                </tr>
              </tbody>
            </table>
          </div>
          </div>
        </div>
      </div>
    </section>
</asp:Content>
