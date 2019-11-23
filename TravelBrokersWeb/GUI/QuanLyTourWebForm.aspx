<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/AdminMasterPage.Master" AutoEventWireup="true" CodeBehind="QuanLyTourWebForm.aspx.cs" Inherits="TravelBrokersWeb.GUI.QuanLyTourWebForm" %>
<%@ Register Src="~/GUI/DanhSachSPWebUserControl.ascx" TagPrefix="uc1" TagName="DanhSachSPWebUserControl" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Content 01 -->
        <div class="col bg-light content">
          <nav class="navbar navbar-expand-sm bg-light navbar-light">
            <div class="form-inline m-auto">
              <asp:TextBox ID="txtTimKiem" runat="server" class="form-control mr-sm-2" placeholder="Nhập mã danh mục..." />
              <asp:Button class="btn btn-success" runat="server" Text="Tìm kiếm" ID="btnTimKiem" />
            </div>
          </nav>
          <div class="container-fluid row">
            <div class="col-lg-5 border-right">
        		<div class="form-group">
                    <label>Nhà Cung Cấp</label>
                      <asp:DropDownList runat="server" class="form-control" ID="drnhacungcap">
                          <asp:ListItem Selected="True" Text="Nhà cung cấp A" />
                          <asp:ListItem Text="Nhà cung cấp B" />
                      </asp:DropDownList>

             	</div>
             	<div class="form-group">
	                <label >Mã danh mục</label>
                     <asp:TextBox runat="server" ID="txtMaDM" class="form-control" placeholder=""/>
              	</div>
              	<div class="form-group">
	               	<label for="dmtour">Danh mục tour</label>
                      <asp:DropDownList runat="server" class="form-control" ID="drDMtour">
                          <asp:ListItem Selected="True" Text="Tour Mùa Hè" />
                          <asp:ListItem Text="Tour Mùa Đông" />
                      </asp:DropDownList>
             	</div>
              	<div class="form-group">
	                <label>Tên tour</label>
                    <asp:TextBox runat="server" ID="txtTenTour" class="form-control" placeholder="" /> 
             	 </div>
             	<div class="form-group">
	                <label>Hình ảnh</label><asp:HiddenField runat="server" ID="hdImage" Value=""/>
                    <asp:Image runat="server" style="max-width:250px; margin-left:1em;" id="blah" CssClass="imgHinhAnh" alt="your image" />
             	 </div>
             	<div class="custom-file form-group">
	                <label>Hình ảnh</label>
	                <asp:FileUpload CssClass="imgInp custom-file-input" type='file' accept="image/x-png,image/gif,image/jpeg" id="flImage" runat="server"/>
                    <label class="custom-file-label" for="flImage">Chọn file ảnh</label>
              	</div>
             	<div class="form-group">
             	 	<label>Danh sách ảnh</label>
              	</div>
              	<!-- Slide ảnh-->
  				<div class="slider-container">
					  <div class="menu">
					    <label for="slide-dot-1"></label>
					    <label for="slide-dot-2"></label>
					    <label for="slide-dot-3"></label>
					  </div>
					  <input id="slide-dot-1" type="radio" name="slides" checked>
					    <div class="slide slide-1"></div>
					  
					  <input id="slide-dot-2" type="radio" name="slides">
					    <div class="slide slide-2"></div>
					  
					  <input id="slide-dot-3" type="radio" name="slides">
					    <div class="slide slide-3"></div>
				</div>
              	<!-- Hết slice ảnh-->
              	<div class="form-group">
              		<div>
             	 	<button type="button" class="btn btn-primary">Chọn ảnh</button>
             	 	</div>
              	 </div>
              	<div class="form-group">
              		<label for=""> Danh sách Tour ưu tiên </label>
              		<div>
                          
						<label for="">Danh sách hot: </label> <<asp:CheckBox ID="CheckBox1" runat="server" />
              		 	<label for="">Danh sách mới nhất: </label><asp:CheckBox ID="CheckBox2" runat="server" />
              		</div>
              	</div> 

				<!-- 	<p id="text" style="display:none">Checkbox is CHECKED!</p>
				<script>
				function myFunction() {
				  var checkBox = document.getElementById("myCheck");
				  var text = document.getElementById("text");
				  if (checkBox.checked == true){
				    text.style.display = "block";
				  } else {
				     text.style.display = "none";
				  }
				}
				</script> -->    	
            </div>
          <!-- Thêm mới tour vào danh mục -->
            <div class="col-md-4">
	            <div class="col-md-12">
	            	<div class="form-group">
			            <div><label>Mô tả</label>
              		</div>
		            	<div class="form-group">
				            <textarea style="overflow-y: scroll;height:190px;width: 500px;"></textarea>
	              		</div>
              		</div>
              		<div class="form-group">
		                <label >Lượt xem</label>
                        <asp:TextBox runat="server" ID="txtluotxem" class="form-control" placeholder=""/>    
             	 	</div>
              		<div class="form-group">
	               	<label for="Noikhoihanh">Nơi khởi hành</label>
                      <asp:DropDownList runat="server" class="form-control" ID="drNoikhoihanh">
                          <asp:ListItem Selected="True" Text="Đà Nẵng" />
                          <asp:ListItem Text="Hà Nội" />
                      </asp:DropDownList>
             	</div>
             	<div class="form-group">
	               	<label for="Noiden">Nơi đến</label>
	                <asp:DropDownList runat="server" class="form-control" ID="drNoiden">
                          <asp:ListItem Selected="True" Text="Hồ Chí Minh" />
                          <asp:ListItem Text="Hà Nội" />
                      </asp:DropDownList>
             	</div>
              		<div class="form-group">
		                <label >Ngày khởi hành</label>
		                <input id="datepicker" />
				    <script>
				        $('#datepicker').datepicker({
				            uiLibrary: 'bootstrap4'
				        });
				    </script>
	           	</div>
              	<div class="form-group">
	                <label >Người tạo</label>
	                 <asp:TextBox runat="server" ID="txtnguoitao" class="form-control" placeholder=""/>
              	</div>
	           	<div class="form-group">
		                <label >Ngày kết thúc</label>
		                <input id="datepicker2" />
				    <script>
				        $('#datepicker2').datepicker({
				            uiLibrary: 'bootstrap4'
				        });
				    </script>
	           	</div>
              	<div class="form-group">
	                <label >Số chỗ còn lại</label>
	                 <asp:TextBox runat="server" ID="txtsochoconlai" class="form-control" placeholder=""/>
              	</div>
			        <div class="form-group">
		                <label >Người sửa đổi </label>
		                 <asp:TextBox runat="server" ID="txtnguoisuadoi" class="form-control" placeholder=""/>
	           		</div>
	           		<div class="form-group">
		                <label >Ngày sửa đổi </label>
		                <input id="datepicker3" />
				    <script>
				        $('#datepicker3').datepicker({
				            uiLibrary: 'bootstrap4'
				        });
				    </script>
	           		</div>
	           		<div class="form-group">
                        <label for="slTrangthai">Trạng thái</label>
	                    <asp:DropDownList runat="server" class="form-control" ID="drTrangthai">
                            <asp:ListItem Selected="True" Text="true" />
                            <asp:ListItem Text="false" />
                        </asp:DropDownList>
	           		</div>
	            </div>
        		</div> 
       		 </div> 
          <!-- Bảng danh sách quản lý giá tiền -->   
         <!-- Content 01 -->
         <div class="content1" style="border: dashed 1px";>
         <p class="text-info h5" style="font-weight: bold;">Quản lý giá tiền</p>
	        <div class="col bg-light content">
	          <div class="container-fluid row">
	            <div class="col-lg-8 border-right">
	            	<div class="overflow-auto tb-sp-s2">
			            <table class="table table-striped table-bordered table-hover text-center">
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
		 <!-- Button THÊM - CẬP NHẬT - XÓA DÀNH CHO TOUR-->    	 
		          <div class="form-group">
		           			
					          <div class="text-center mt-3">
					            <button type="button" class="btn-lg btn-primary mt-3">Thêm</button>
					            <button type="button" class="btn-lg btn-warning	 mt-3">Cập nhật</button>
					            <button type="button" class="btn-lg btn-danger mt-3">Xóa</button>
					          </div>
		           	</div>
        		</div>
          <!-- Thêm mới tour vào danh mục -->
	            <div class="col">
		            <div class="col-12">
				        <div class="form-group">
			                <label >Mã giá </label>
			                <asp:TextBox runat="server" ID="txtmagia" class="form-control" placeholder=""/>
		           		</div>
		           		<div class="form-group">
			                <label >Loại khách </label>
			                <asp:TextBox runat="server" ID="txtloaikhach" class="form-control" placeholder=""/>
		           		</div>
		           		<div class="form-group">
			                <label >Giá gốc </label>
			                <asp:TextBox runat="server" ID="txtgiagoc" class="form-control" placeholder=""/> 
		           		</div><div class="form-group">
			                <label >Giá khuyến mãi </label>
			                <asp:TextBox runat="server" ID="txtkhuyenmai" class="form-control" placeholder=""/> 
		           		</div>
		           		<div class="form-group">
			                <label >Ngày bắt đầu</label>
			                <input id="datepicker4" />
					    <script>
					        $('#datepicker4').datepicker({
					            uiLibrary: 'bootstrap4'
					        });
					    </script>
		           		</div>
		           		<div class="form-group">
			                <label >Ngày kết thúc</label>
			                <input id="datepicker5" />
						    <script>
						        $('#datepicker5').datepicker({
						            uiLibrary: 'bootstrap4'
						        });
						    </script>
		           		</div>
		           		
		            </div>
	        	</div> 
       		</div> 
       	</div>
       </div>
          <!-- Hết bảng quản lý tiền -->
          <!-- Bảng quản lý lịch trình -->   
        
         <!-- Content 02 -->
         <div class="content2" style="border: dashed 1px;">
        <p class="text-info h5" style="font-weight: bold;">Quản lý lịch trình</p>
        <div class="col bg-light content">
          <div class="container-fluid row">
            <div class="col-lg-8 border-right">
            	<div class="overflow-auto tb-sp-s2">
	            <table class="table table-striped table-bordered table-hover text-center">
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
	           <div class="form-group">
	           			<!-- Button THÊM - CẬP NHẬT - XÓA DÀNH CHO TOUR-->
				          <div class="text-center mt-3">
				            <button type="button" class="btn-lg btn-primary mt-3">Thêm</button>
				            <button type="button" class="btn-lg btn-warning mt-3">Cập nhật</button>
				            <button type="button" class="btn-lg btn-danger mt-3">Xóa</button>
				          </div>
	           </div>
        	</div>
          <!-- Thêm mới tour vào danh mục -->
            <div class="col">
	            <div class="col-12">
			        <div class="form-group">
		                <label >Mã lịch trình </label>
                        <asp:TextBox runat="server" class="form-control" ID="txtmalichtrinh"/>
	           		</div>
	           		<div class="form-group">
		                <label >Thời gian</label>
		                <input id="datepicker6" />
				    <script>
				        $('#datepicker6').datepicker({
				            uiLibrary: 'bootstrap4'
				        });
				    </script>
	           		</div>
	           		<div class="form-group">
                        <label for="sothutu">Số thứ tự</label>
	                    <asp:DropDownList runat="server" class="form-control" ID="drsothutu">
                            <asp:ListItem Selected="True" Text="1" />
                            <asp:ListItem Text="2" />
                        </asp:DropDownList>
             		</div>
	           		<div class="form-group">
			            <label>Nội dung</label>
              		</div>
	            	<div class="form-group">
			            <textarea style="overflow-y: scroll;height:190px;width: 250px;"></textarea>
              		</div>
	            </div>
        		</div> 
       		 </div> 
			</div>
		</div>
          <!-- Hết bảng danh sách danh mục -->
          <!-- Button THÊM - CẬP NHẬT - XÓA DÀNH CHO TOUR-->
      <!--   <div class="btn-tong" style="border: dashed 1px red;"> -->
	    <%-- <div class="row">
				          <div class="btn-tong">
		                      <button type="button" class="btn-lg btn-primary mt-3 mr-4 btn-form">Thêm</button>
		                      <button type="button" class="btn-lg btn-warning mt-3 mr-4 btn-form">Cập nhật</button>
		                      <button type="button" class="btn-lg btn-danger mt-3 mr-4 btn-form">Xóa</button>
            			 </div>
         </div>	--%>	
            <div class="row">
                    <div class="ml-20" style="margin-left:321px;">
                              <button type="button" class="btn-lg btn-primary mt-3 mr-4 btn-form">Thêm</button>
                              <button type="button" class="btn-lg btn-warning mt-3 mr-4 btn-form">Cập nhật</button>
                              <button type="button" class="btn-lg btn-danger mt-3 mr-4 btn-form">Xóa</button>
                     </div>
            </div>
	    <!-- </div> -->
	      <!-- Bảng danh sách tour -->
         <div class="content3" style="border: dashed 1px black;">
          	<p class="text-info h5"	style="font-weight: bold;">Danh sách tour</p>
	          <div class="col-12">
	          <div class="overflow-auto tb-sp-sl">
	            <table class="table table-striped table-bordered table-hover text-center">
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
	        <!-- Hết bảng danh sách tour -->
</asp:Content>
