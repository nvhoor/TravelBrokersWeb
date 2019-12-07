<%@ Page Title="" Language="C#" MasterPageFile="~/GUI/DefaultMasterPage.Master" AutoEventWireup="true" CodeBehind="DatTourWebForm.aspx.cs" Inherits="TravelBrokersWeb.GUI.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"></script>
    <link href="../StyleSheets/datour.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <div class="col-xs-12 mg-bot30">
            <div class="title1">THÔNG TIN TOUR</div>
        </div>
        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12 w-25">
                <asp:Image runat="server" src="https://travel.com.vn/Images/destination/tf_181012045034_920829.jpg" class="pic-title" />
            <a href="#" target="_blank" class="title-pic"></a>
        </div>
        <div class="col-lg-9 col-md-9 col-sm-12 col-xs-12 w-75">
            <div class="tour-name">
                <asp:Label runat="server" href="#" target="_blank" title="" class="title-pic">Huế - La Vang - Động Phong Nha Thiên Đường - Bà Nà - Cầu Vàng - Hội An - Đà Nẵng... </asp:Label>
            </div>
            <div class="frame-info">
                <div class="row">
                    <div class="col-lg-6 col-md-4 col-sm-6 col-xs-12 mg-bot10">
                        <div class="f-left l"><asp:Image runat="server" src="../images/i-code.png" alt="code" /></div>
                        <div class="f-left r">NDSGN381-023-011219VJ-D</div>
                        <div class="clear"></div>
                    </div>
                    <div class="col-lg-6 col-md-4 col-sm-6 col-xs-12 mg-bot10">
                        <div class="f-left l"><asp:Image runat="server" src="../images/i-chair.png" alt="chair" /></div>
                        <div class="f-left r">Số chỗ còn nhận: <span class="font500">5</span></div>
                        <div class="clear"></div>
                    </div>
                    <div class="col-lg-6 col-md-4 col-sm-6 col-xs-12 mg-bot10">
                        <div class="f-left l"><asp:Image runat="server" src="../images/i-date.png" alt="date" /></div>
                        <div class="f-left r">Ngày khởi hành: <span class="font500">01/12/2019</span></div>
                        <div class="clear"></div>
                    </div>
                    <div class="col-lg-6 col-md-4 col-sm-6 col-xs-12 mg-bot10">
                        <div class="f-left l"><asp:Image runat="server" src="../images/i-date.png" alt="date" /></div>
                        <div class="f-left r"><a href="/danh-sach-tour/NDSGN381/hue-la-vang-dong-phong-nha-thien-duong-ba-na-cau-vang-hoi-an-da-nang-khach-san-4-5sao-tang-show-charming-tour-tieu-chuan.aspx" target="_blank" class="b">Ngày khác</a></div>
                        <div class="clear"></div>
                    </div>
                    <div class="col-lg-6 col-md-4 col-sm-6 col-xs-12 mg-bot10">
                        <div class="f-left l"><asp:Image runat="server"  src="../images/i-clock.png" alt="clock" /></div>
                        <div class="f-left r">Số ngày: <span class="font500">5</span></div>
                        <div class="clear"></div>
                    </div>
                    <div class="col-lg-6 col-md-4 col-sm-6 col-xs-12">
                        <div class="f-left l"><asp:Image runat="server"  src="../images/i-price.png" alt="price" /></div>
                        <div class="f-left r">Giá: <span class="font500 price">7,390,000 đ</span></div>
                        <div class="clear"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12 mg-bot30">
            <div class="chuy">
                Khách nữ từ 55 tuổi trở lên, khách nam từ 60 tuổi trở lên đi tour một mình và khách mang thai trên 4 tháng (16 tuần) vui lòng đăng ký tour trực tiếp tại văn phòng của Vietravel. Không áp dụng đăng ký tour online đối với khách từ 70 tuổi trở lên
            </div>
        </div>
        <div class="col-xs-12 mg-bot30">
            <div class="title1">GIÁ TOUR CƠ BẢN</div>
        </div>
        <div class="col-xs-12 mg-bot30">
            <table class="table table-bordered">
                <thead>
                    <tr class="tb-title">
                        <td>Người lớn (Từ 12 tuổi trở lên)</td>
                        <td>Trẻ em (Từ 5 tuổi đến dưới 12 tuổi)</td>
                        <td>Trẻ nhỏ (Từ 2 tuổi đến dưới 5 tuổi)</td>
                        <td>Em bé (Dưới 2 tuổi)</td>
                        <td>Phụ thu phòng đơn</td>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td data-title="Người lớn">7,390,000<span> đ</span></td>
                        <td data-title="Trẻ em">5,542,500<span> đ</span></td>
                        <td data-title="Trẻ nhỏ">2,000,000<span> đ</span></td>
                        <td data-title="Em bé">220,000<span> đ</span></td>
                        <td data-title="Phụ thu phòng đơn">1,800,000<span> đ</span></td>
                    </tr>
                </tbody>
            </table>
        </div>
<div >
   
            <div class="title1">THÔNG TIN LIÊN LẠC</div>
        </div>
        <div class="col-xs-12 form-input mg-bot30">
            <div class="row">
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="form-group">
                        <label>Họ tên (<span class="star">*</span>)</label>
                        <div>
                            <asp:TextBox runat="server" class="form-control" id="contact_name" name="contact_name" required="required" type="text" value="" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Di động (<span class="star">*</span>)</label>
                        <div>
                            <asp:TextBox runat="server" class="form-control" id="mobilephone" name="mobilephone" onchange="CheckMobile();" onkeypress="return funCheckInt(event)" required="required" type="text" value="" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Địa chỉ</label>
                        <div>
                            <asp:TextBox runat="server"  class="form-control" id="address" name="address" type="text" value="" />
                        </div>
                    </div>
                </div>
                <div class="col-md-6 col-sm-12 col-xs-12">
                    <div class="form-group">
                        <label>Email (<span class="star">*</span>)</label>
                        <div>
                            <asp:TextBox runat="server" class="form-control" id="email" name="email" required="required" type="email" value="" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label>Điện thoại</label>
                        <div>
                            <asp:TextBox runat="server" class="form-control" id="phone" name="phone" onkeypress="return funCheckInt(event)" type="text" value="" />
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="row">
                            <div class="col-md-3 col-sm-2 col-xs-6 mg-bot15">
                                <label>Người lớn</label>
                                <div>
                                    <asp:TextBox runat="server" class="form-control" id="adult" name="adult" onblur="javascript:clear_text(this);" onclick="javascript:show_text('Từ 12 tuổi trở lên',this)" onkeypress="return funCheckInt(event)" type="text" value="1" />
                                </div>
                            </div>
                            <div class="col-md-2 col-sm-2 col-xs-6  mg-bot15">
                                <label>Trẻ em</label>
                                <div>
                                    <asp:TextBox runat="server" class="form-control" id="children11" name="children11" onblur="javascript:clear_text(this);" onclick="javascript:show_text('Từ 5 tuổi đến dưới 12 tuổi',this)" onkeypress="return funCheckInt(event)" type="text" value="0" />
                                </div>
                            </div>
                            <div class="col-md-2 col-sm-3 col-xs-6  mg-bot15">
                                <label>Trẻ nhỏ</label>
                                <div>
                                    <asp:TextBox runat="server" class="form-control" id="children" name="children" onblur="javascript:clear_text(this);" onclick="javascript:show_text('Từ 2 tuổi đến dưới 5 tuổi',this)" onkeypress="return funCheckInt(event)" type="text" value="0" />
                                </div>
                            </div>
                            <div class="col-md-2 col-sm-2 col-xs-6 mg-bot15">
                                <label>Em bé</label>
                                <div>
                                    <asp:TextBox runat="server" class="form-control" id="small_children" name="small_children" onblur="javascript:clear_text(this);" onclick="javascript:show_text('Dưới 2 tuổi',this)" onkeypress="return funCheckInt(event)" type="text" value="0" />
                                </div>
                            </div>
                            <div class="col-md-3 col-sm-3 col-xs-12">
                                <label>Số khách</label>
                                <div>
                                    <asp:TextBox runat="server" class="form-control" id="guests" name="guests"  ReadOnly="true" type="text" value="1" />
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="form-group">
                        <label>Ghi chú</label>
                        <div>
                            <textarea class="form-control" cols="20" id="note" name="note" rows="4"></textarea>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 col-sm-12 col-xs-12">
                    <div class="chuy">
                        <ul class="row list-chuy">
                            <li class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                Người lớn sinh từ: <span class="font500"> 05/12/1949</span> đến <span class="font500">05/12/2007</span>
                            </li>
                            <li class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                Trẻ em sinh từ: <span class="font500">06/12/2007</span> đến <span class="font500">05/12/2014</span>
                            </li>
                            <li class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                Trẻ nhỏ sinh từ: <span class="font500">06/12/2014</span> đến <span class="font500">05/12/2017</span>
                            </li>
                            <li class="col-lg-6 col-md-6 col-sm-6 col-xs-12">
                                Em bé sinh từ: <span class="font500">06/12/2017</span> đến <span class="font500">29/11/2019</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12 mg-bot30">
            <ul class="row">
                <li class="col-xs-12" style="height:35px;">
                    <div class="radio">
                        <label><asp:RadioButton runat="server" type="radio" class="chkListCustomer" name="ListCustomer" value="1" Checked="true" /><label class="lb_r">Nhập danh sách khách hàng đi tour</label></label>
                    </div>
                </li>
            </ul>
        </div>
        <div id="DanhSachKhach">
            <div class="col-xs-12 mg-bot30">
                <div class="title1">DANH SÁCH KHÁCH HÀNG ĐI TOUR</div>
            </div>
            <div class="col-xs-12 mg-bot30 list">

<div>
        <div class="cus-num">Khách hàng 1</div>
        <div class="frame-cus">
            <div class="form-horizontal">
                <div class="row mg-bot10">
                    <div class="col-lg-3 col-md-8 col-sm-6 col-xs-12 mg-bot10">
                        <label class="mg-bot5">Họ tên (<span class="star">*</span>)</label>
                        <div>
                            <asp:TextBox runat="server" class="form-control" name="[0].fullname" required="required" type="text" value="" />
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12 mg-bot10">
                        <label class="mg-bot5">Giới tính</label>
                        <div>
                            <asp:DropDownList runat="server" class="form-control" name="[0].gender">
                                <asp:ListItem value="0">Nữ</asp:ListItem>
                                <asp:ListItem value="1">Nam</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12 mg-bot10">
                        <label class="mg-bot5">Ngày sinh (<span class="star">*</span>)</label>
                        <div>
                            <input data-val="true" data-val-date="The field dateofbirth must be a date." id="dateofbirth0" name="[0].dateofbirth" type="hidden" value="">
                            <div class="date-dropdowns">
                                <input type="hidden" id="dob0" name="dob0">
                                <asp:DropDownList runat="server" class="day hideArow form-control dateDDL" name="dob0_[day]" id="dob0_day" >

                                </asp:DropDownList>
                                <asp:DropDownList runat="server" class="month hideArow form-control dateDDL" name="dob0_[month]" id="dob0_month">
                                </asp:DropDownList>
                                <asp:DropDownList runat="server" class="year hideArow form-control dateDDL" name="dob0_[year]" id="dob0_year">
 
                                </asp:DropDownList>
                            </div>
                            <script>
                                    $("#dob" + '0').dateDropdowns({
                                        submitFieldName: 'dob' + '0',
                                        submitFormat: "dd/mm/yyyy",
                                        maxAge: 68
                                        //,required: true
                                    });
                                    $('#dob' + '0').change(function () {
                                        $('#dateofbirth' + '0').val($('#dob' + '0').val());
                                        CheckDOBByPersonkind();
                                    });
                            </script>
                            <div class="clear"></div>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12 mg-bot10">
                        <label class="mg-bot5">Độ tuổi</label>
                        <div>
                <asp:DropDownList runat="server" class="form-control" id="personkind0" name="[0].personkind" onchange="ChangeChoose();">
                    <asp:ListItem value="0">Người lớn</asp:ListItem>
                </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12 mg-bot10" style="display:none;">
                        <label class="mg-bot5">Loại khách:</label>
                        <div>
                            <asp:DropDownList runat="server" class="form-control" id="loaikhachnoidia0" name="[0].loaikhachnoidia" onchange="ChangeChoose();">
                                <asp:ListItem value="0">Việt Nam</asp:ListItem>
                                <asp:ListItem value="1">Việt kiều</asp:ListItem>
                                <asp:ListItem value="2">Nước ngoài</asp:ListItem>

                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="col-lg-2 col-md-4 col-sm-6 col-xs-12 mg-bot10">
                        <label class="mg-bot5">Phòng đơn</label>
                        <div>
                        <asp:DropDownList runat="server" class="form-control" id="loaiphuthuphongdon0" name="[0].loaiphuthuphongdon" onchange="ChangeChoose();">
                            <asp:ListItem Selected="True" value="0">Không</asp:ListItem>
                        <asp:ListItem value="1">Có</asp:ListItem>
                        </asp:DropDownList>                        
                        </div>
                    </div>
                </div>
                <div class="row total">
                    <div class="col-md-12 col-sm-12 text-right">
                        Trị giá: <span class="price" id="gianguyengoc">9,190,000 đ</span>
                        <input class="form-control" disabled="disabled" id="price0" name="price0" type="hidden" value="9190000 đ">
                    </div>
                </div>
            </div>
        </div>
    <div class="frame-cus">
        <div class="row">
            <div class="col-md-12 col-sm-12 text-right">
                Tổng cộng: <span class="price" id="tonggia">9,190,000 đ</span>
                <input type="hidden" id="TotalPrice" disabled="disabled" class="form-control" value="9190000 đ">
            </div>
        </div>

    </div>
</div>
            </div>
        </div>
 

<div class="col-xs-12 mg-bot30">
    <div class="title1">XIN QUÝ KHÁCH VUI LÒNG CHỌN HÌNH THỨC THANH TOÁN</div>
</div>
<div class="col-xs-12 mg-bot30">
    <div class="frame-payment">
        <div class="row">
            <div class="col-xs-12 bor-bot mg-bot20">
                <div class="radio tienmat">
                    <label style="display:;"><asp:RadioButtonList runat="server" type="radio" class="chkPayment" name="paymentID" value="1" checked="checked" /><label class="lb_r">Tiền mặt</label></label>
                </div>
                <div class="radio chuyenkhoan">
                    <label style="display:;"><asp:RadioButtonList runat="server" type="radio" class="chkPayment" name="paymentID" value="2" /><label class="lb_r">Chuyển khoản</label></label>
                </div>
                <div class="radio internet">
                    <label><asp:RadioButtonList runat="server" type="radio" class="chkPayment" name="paymentID" value="9" /><label class="lb_r">ATM / Internet Banking</label></label>
                </div>
                <div class="radio thetindung">
                    <label><asp:RadioButtonList runat="server" type="radio" class="chkPayment" name="paymentID" value="15" /><label class="lb_r">Thẻ tín dụng</label></label>
                    <div class="row cards" id="divCard" style="display:none;">
                        <div class="text">
                            Quý khách vui lòng chọn loại thẻ:
                        </div>
                        <div class="frame-cards">
                            <input id="cardType" name="cardType" type="hidden" value="visa">
                            <div card="visa" onclick="ChonLoaiThe('visa')" class="visa card_type f-left">
                                <asp:Image runat="server" src="/Content/ThemeHe/img/thevisa.png" alt="visa" />
                            </div>
                            <div card="mastercard" onclick="ChonLoaiThe('mastercard')" class="master card_type f-left mg-left">
                                <asp:Image runat="server" src="/Content/ThemeHe/img/master.png" alt="master" />
                            </div>
                            <div card="jcb" onclick="ChonLoaiThe('jcb')" class="jcb card_type f-left mg-left">
                                <asp:Image runat="server" src="/Content/ThemeHe/img/jcb.png" alt="jcb" />
                            </div>
                            <div card="amex" onclick="ChonLoaiThe('amex')" class="amex card_type f-left mg-left">
                                <asp:Image runat="server" src="/Content/ThemeHe/img/amex.png" alt="amex" />
                            </div>
                        </div>
                    </div>
                </div>
                <div class="radio qrcode">
                    <label><asp:RadioButton runat="server" type="radio" class="chkPayment" name="paymentID" value="16" /><label class="lb_r"/>Thanh toán bằng quét QRCode</label></label>
                </div>
            </div>
            <div class="col-xs-12">
                <div class="frame-noidung" style="height:50px !important;">
                    <div class="qr-ct" style="display: none;" id="divVNPay">
                    </div>
                    <div id="conditionPayment">
                        <title></title>
                        <p>Quý khách vui lòng thanh toán tại bất kỳ văn phòng Vietravel trên toàn quốc và các chi nhánh ngoài nước. <a href="#">Chi tiết</a></p>
                        <p>Xin lưu ý, Quý khách nên liên lạc trước khi đến để biết rõ hơn về giờ làm việc và các hồ sơ cần chuẩn bị khi thanh toán.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="col-xs-12 mg-bot30">
            <div class="title1">ĐIỀU KHOẢN BẮT BUỘC KHI ĐĂNG KÝ ONLINE</div>
        </div>
        <div class="col-xs-12 mg-bot20">
            <div class="frame-rule">
                <div class="rule-content">
        
        <p>
            <strong>ĐIỀU KIỆN BÁN VÉ CÁC CHƯƠNG TRÌNH DU LỊCH TRONG NƯỚC</strong></p>
        <p>
            <strong>I.&nbsp;&nbsp; GIÁ VÉ DU LỊCH</strong></p>
        <p>
            Giá vé du lịch được tính theo tiền Đồng (Việt Nam - VNĐ). Trường hợp khách thanh toán bằng USD sẽ được quy đổi ra VNĐ theo tỉ giá của ngân hàng Đầu Tư và Phát Triển Việt Nam - Chi nhánh TP.HCM tại thời điểm thanh toán.</p>
        <p>
            Giá vé chỉ bao gồm những khoản được liệt kê một cách rõ ràng trong phần “Bao gồm” trong các chương trình du lịch. Vietravel không có nghĩa vụ thanh toán bất cứ chi phí nào không nằm trong phần “Bao gồm”.</p>
        <p>
            <strong>II.&nbsp;&nbsp; GIÁ DÀNH CHO TRẺ EM</strong></p>
        <p>
            - Trẻ em dưới 5 tuổi:&nbsp; không thu phí dịch vụ, bố mẹ tự lo cho bé và thanh toán các chi phí phát sinh (đối với các dịch vụ tính phí theo chiều cao…). Hai người lớn chỉ được kèm 1 trẻ em dưới 5 tuổi, trẻ em thứ 2 sẽ đóng phí theo qui định dành cho độ tuổi từ 5 đến dưới 12 tuổi và phụ thu phòng đơn. Vé máy bay, tàu hỏa, phương tiện vận chuyển công cộng mua vé theo qui định của các đơn vị vận chuyển (nếu có)</p>
        <p>
            - Trẻ em từ 5 tuổi đến dưới 12 tuổi:&nbsp; 50% giá tour người lớn đối với tuyến xe, 75% giá tour người lớn đối với tuyến có vé máy bay (không có chế độ giường riêng). Hai người lớn chỉ được kèm 1 trẻ em từ 5 - dưới 12 tuổi, em thứ hai trở lên phải mua 1 suất giường đơn.</p>
        <p>
            - Trẻ em từ 12 tuổi trở lên: mua một vé như người lớn.</p>
        <p>
            <strong>III. &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; THANH TOÁN</strong></p>
        <p>
            Khi thanh toán, Quý khách vui lòng cung cấp đầy đủ thông tin và đặt cọc ít nhất 50% tổng số tiền tour để giữ chỗ, số tiền còn lại Quý khách sẽ thanh toán trước ngày khởi hành 05 ngày làm việc (tour ngày thường) và trước 10 ngày làm việc (tour dịp Lễ, Tết)”.</p>
        <p>
            Thanh toán bằng tiền mặt hoặc chuyển khoản tới tài khoản ngân hàng của Vietravel.</p>
        <p>
            Tên tài khoản: VIETRAVEL</p>
        <p>
            Ngân hàng: Ngoại Thương Việt Nam – Chi nhánh TPHCM</p>
        <p>
            Địa chỉ: 29 Bến Chương Dương, Quận 1, TPHCM</p>
        <p>
            Tài khoản:USD: 007 137 008 9095</p>
        <p style="margin-left:.5in;">
            VNĐ: 007 100 001 2584</p>
        <p>
            Việc thanh toán được xem là hoàn tất khi Vietravel nhận được đủ tiền vé du lịch trước lúc khởi hành hoặc theo hợp đồng thỏa thuận giữa hai bên. Bất kỳ mọi sự thanh toán chậm trễ dẫn đến việc hủy dịch vụ không thuộc trách nhiệm của Vietravel.</p>
        <p>
            Khách hàng có nhu cầu xuất hóa đơn, vui lòng cung cấp thông tin xuất hóa đơn ngay tại thời điểm đăng ký. Vietravel có trách nhiệm xuất hóa đơn cho khách hàng trong vòng 7 ngày sau khi tour kết thúc.</p>
        <p>
            <strong>DÀNH CHO KHÁCH HÀNG ĐĂNG KÝ TRÊN TRANG WWW.TRAVEL.COM.VN THANH TOÁN CHUYỂN KHOẢN:</strong></p>
        <p>
            Khi thực hiện việc chuyển khoản, Quý khách <strong>vui lòng ghi rõ Tên họ, Số điện thoại và Nội dung chuyển</strong> cho chương trình du lịch cụ thể đã được Quý khách chọn đăng ký. Sau khi thực hiện việc chuyển khoản, Quý khách vui lòng gửi Ủy Nhiệm Chi về công ty Vietravel theo địa chỉ email sales@vietravel.com và liên hệ với nhân viên phụ trách tuyến để nhận được Vé du lịch chính thức từ công ty Vietravel. Vietravel sẽ không giải quyết các trường hợp hệ thống tự động hủy phiếu đăng ký nếu Quý khách không thực hiện đúng qui định trên.</p>
        <p>
            <strong>IV.HỦY VÉ VÀ PHÍ HỦY VÉ DU LỊCH</strong></p>
        <p>
            <strong>1. Trường hợp bị hủy bỏ do Vietravel:</strong></p>
        <p>
            Nếu Vietravel không thực hiện được chuyến du lịch, Vietravel phải báo ngay cho khách hàng biết và thanh toán lại cho khách hàng toàn bộ số tiền khách hàng đã đóng trong vòng 3 ngày kể từ lúc việc thông báo hủy chuyến du lịch bằng tiền mặt hoặc chuyển khoản.</p>
        <p>
            <strong>2.Trường hợp bị hủy bỏ do khách hàng:</strong></p>
        <p>
            Sau khi đóng tiền, nếu Quý khách muốn chuyển/hủy tour xin vui lòng mang Vé Du Lịch đến văn phòng đăng ký tour để làm thủ tục chuyển/hủy tour và chịu mất phí theo quy định của Vietravel. Không giải quyết các trường hợp liên hệ chuyển/hủy tour qua điện thoại.</p>
        <p>
            <strong>•Đối với ngày thường:</strong></p>
        <p>
            -Được chuyển sang các tuyến du lịch khác trước ngày khởihành 20 ngày : Không mất chi phí.</p>
        <p>
            -Hủy hoặc chuyển sang các chuyến du lịch khác ngay sau khi đăng ký đến từ 15 - 19 ngày trước ngày khởi hành: Chi phí chuyển/hủy tour: 50% tiền cọc tour.</p>
        <p>
            <strong>•Đối với ngày lễ, Tết:</strong></p>
        <p>
            -Được chuyển sang các tuyến du lịch khác trước ngày khởi hành 30 ngày : Không mất chi phí.</p>
        <p>
            -Hủy hoặc chuyển sang các chuyến du lịch khác ngay sau khi đăng ký đến từ 25 - 29 ngày trước ngày khởi hành: Chi phí chuyển/hủy tour: 50% tiền cọc tour.</p>
        <p>
            <strong><em>* Các tour ngày Lễ, Tết là các tour có thời gian diễn ra rơi vào một trong các ngày lễ, tết theo qui định.</em></strong></p>
        <p>
            <strong><em>* Thời gian hủy tour được tính cho ngày làm việc, không tính thứ 7, Chủ Nhật và các ngày Lễ, Tết.</em></strong></p>
        <p>
            <strong>DÀNH CHO KHÁCH HÀNG ĐĂNG KÝ TRÊN TRANG WWW.TRAVEL.COM.VN THANH TOÁN TRỰC TUYẾN:</strong></p>
        <p>
            Khách hàng hủy Vé du lịch trong thời điểm ngày Thường và Lễ Tết theo đúng những qui định trên, trong trường hợp khách thanh toán trực tuyến, nếu hủy Vé du lịch khách hàng sẽ chịu toàn bộ phí ngân hàng cho việc thanh toán tiền Vé du lịch. Việc hoàn trả tiền cho khách sẽ được Vietravel thực hiện ngay sau khi ngân hàng thông báo tiền đã vào tài khoản của Vietravel.</p>
        <p>
            <strong>3.Trường hợp bất khả kháng:</strong></p>
        <p>
            Nếu chương trình du lịch bị hủy bỏ hoặc thay đổi bởi một trong hai bên vì một lý do bất khả kháng (hỏa hoạn, thời tiết, tai nạn, thiên tai, chiến tranh, dịch bệnh, hoãn, dời, hủy chuyến hoặc thay đổi khác của các phương tiện vận chuyển công cộng hoặc các sự kiến bất khả kháng khác theo quy định pháp luật…), thì hai bên sẽ không chịu bất kỳ nghĩa vụ bồi hoàn các tổn thất đã xảy ra và không chịu bất kỳ trách nhiệm pháp lý nào. Tuy nhiên mỗi bên có trách nhiệm cố gắng tối đa để giúp đỡ bên bị thiệt hại nhằm giảm thiểu các tổn thất gây ra vì lý do bất khả kháng.</p>
        <p>
            <strong>4. Thay đổi lộ trình:</strong></p>
        <p>
            Tùy theo tình hình thực tế, Vietravel giữ quyền thay đổi lộ trình, sắp xếp lại thứ tự các điểm tham quan hoặc hủy bỏ chuyến đi du lịch bất cứ lúc nào mà Vietravel thấy cần thiết vì sự thuận tiện hoặc an toàn cho khách hàng.</p>
        <p>
            <strong>V.NHỮNG YÊU CẦU ĐẶC BIỆT TRONG CHUYẾN DU LỊCH</strong></p>
        <p>
            Các yêu cầu đặc biệt của Quý khách phải được báo trước cho Vietravel ngay tại thời điểm đăng ký. Vietravel sẽ cố gắng đáp ứng những yêu cầu này trong khả năng của mình song sẽ không chịu trách nhiệm về bất kỳ sự từ chối cung cấp dịch vụ từ phía các nhà vận chuyển, khách sạn, nhà hàng và các nhà cung cấp dịch vụ độc lập khác.</p>
        <p>
            <strong>VI.KHÁCH SẠN</strong></p>
        <p>
            Khách sạn được cung cấp trên cơ sở những phòng có hai giường đơn (TWN) hoặc một giường đôi (DBL) tùy theo cơ cấu phòng của các khách sạn. Khách sạn do Vietravel đặt cho các chương trình tham quan có tiêu chuẩn tương ứng với các mức giá vé mà khách chọn khi đăng ký đi du lịch. Nếu cần thiết thay đổi về bất kỳ lý do nào, khách sạn thay thế sẽ tương đương với tiêu chuẩn của khách sạn ban đầu và sẽ được báo cho du khách trước khi khởi hành. Những yêu cầu đặc biệt của khách hàng nếu thông báo trước cho Vietravel sẽ được đáp ứng tùy theo khả năng cung cấp của khách sạn và khách hàng phải trả thêm tiền đối với các yêu cầu này (nếu có). Vietravel có quyền không đáp ứng những yêu cầu này nếu khách sạn từ chối cung cấp dịch vụ. Thời gian nhận phòng theo qui định tại các khách sạn là sau 14:00 và phải trả phòng trước 12:00. Đối với các trường hợp khách lưu trú tại hệ thống khách sạn/Resort 5 sao (Vinpearl, FLC, Grand Ho Tram Strip…) tuân thủ theo điều kiện hủy phạt của khách sạn/Resort cho từng thời điểm.</p>
        <p>
            <strong>VII.VẬN CHUYỂN</strong></p>
        <p>
            Phương tiện vận chuyển tùy thuộc theo từng chương trình du lịch.</p>
        <p>
            Với chương trình đi bằng xe: xe máy lạnh (4, 7, 15, 25, 35, 45 chỗ) sẽ được Vietravel sắp xếp tùy theo số lượng khách từng đoàn, phục vụ suốt chương trình tham quan.</p>
        <p>
            Với chương trình đi bằng xe lửa - máy bay - tàu cánh ngầm (phương tiện vận chuyển công cộng), trong một số chương trình các nhà cung cấp dịch vụ có thể thay đổi giờ khởi hành mà không báo trước, việc thay đổi này sẽ được Vietravel thông báo cho khách hàng nếu thời gian cho phép.</p>
        <p>
            Vietravel không chịu trách nhiệm bồi hoàn và trách nhiệm pháp lý với những thiệt hại về vật chất lẫn tinh thần do việc chậm trễ, thay đổi giờ giấc khởi hành của các phương tiện vận chuyển công cộng hoặc sự chậm trễ do chính hành khách gây ra. Vietravel chỉ thực hiện hành vi giúp đỡ để giảm bớt tổn thất cho hành khách.</p>
        <p>
            <strong>VIII.HÀNH LÝ</strong></p>
        <p>
            Hành lý gọn nhẹ, với các chương trình sử dụng dịch vụ hàng không, hành lý miễn cước sẽ do các hãng hàng không qui định. Vietravel không chịu trách nhiệm về sự thất lạc, hư hỏng hành lý hoặc bất kỳ vật dụng gì của du khách trong suốt chuyến đi, du khách tự bảo quản hành lý của mình. Nếu khách hàng bị mất hay thất lạc hành lý thì Vietravel sẽ giúp hành khách liên lạc và khai báo với các bộ phận liên quan truy tìm hành lý bị mất hay thất lạc. Việc bồi thường hành lý bị mất hay thất lạc sẽ theo qui định của các đơn vị cung cấp dịch vụ hoặc các đơn vị bảo hiểm (nếu có).</p>
        <p>
            <strong>IX.BẢO HIỂM DU LỊCH</strong></p>
        <p>
            Giá dịch vụ du lịch trọn gói đã bao gồm bảo hiểm du lịch trong nước với mức đền bù cao nhất là 120.000.000đ/khách Việt Nam/vụ cho nhân mạng và 12.000.000 VNĐ/khách Việt Nam/vụ cho hành lý .</p>
        <p>
            Điều kiện, điều khoản bảo hiểm: Theo quy tắc bảo hiểm khách du lịch trong nước QĐ số: 001321/2006 – BM/BHCN.</p>
        <p>
            Số hotline tư vấn về các điều kiện, điều khoản bảo hiểm 0938 30 1234</p>
        <p>
            <strong>X. </strong>Trong quá trình thực hiện, nếu xảy ra tranh chấp sẽ được giải quyết trên cơ sở thương lượng trong thời hạn 30 ngày kể từ ngày một trong hai bên đưa tranh chấp ra thương lượng. Hết thời hạn này nếu tranh chấp không được giải quyết hoặc một trong hai bên không đồng ý với kết quả thương lượng thì có quyền đưa tranh chấp ra giải quyết tại Tòa án thẩm quyền.</p>
        <p>
            <strong><em>* Vé du lịch được xem như Hợp đồng lữ hành và được lập thành 2 bản, mỗi bên giữ một bản, có giá trị như nhau.</em></strong></p>
        <p>
          </p>
    


                </div>
            </div>
        </div>
        <div class="col-xs-12 mg-bot30">
            <div>
                <!-- <div class="radio tienmat">
                    <label style="display:;"><input type="radio" class="chkPayment" name="paymentID" value="1"><label class="lb_r">Tôi đồng ý với điều kiện trên</label></label>
                </div> -->
                <div class="f-left mg-bot10 wl">
                    <asp:CheckBox runat="server" type="checkbox" id="chkDieuKhoan" value="1" />
                </div>
                <div class="f-left wr">
                    Tôi đồng ý với các điều kiện trên
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <div class="col-xs-12 mg-bot30 text-center">
                <asp:Button runat="server" type="submit" class="btn btn-md btn-book" Text="Đặt tour"></asp:Button>
        </div>
</div>    

    </div>
</asp:Content>
