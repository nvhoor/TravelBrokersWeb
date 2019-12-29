<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="TravelBrokersWeb.GUI.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta charset="UTF-8">
	<title>Đăng nhập</title>
	<!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <link href="../StyleSheets/reset.min.css" rel="stylesheet" data-noprefix/>
    <link href="../StyleSheets/style.css" rel="stylesheet" data-noprefix/>
    <style type="text/css" media="screen">
    html,body{
      height: 100%;
    }  
    </style>
    <script src="../Scripts/prefixfree.min.js"></script>
</head>
<body>
    <section class="container-fluid dangky text-center">
        <img src="../images/slide-3.jpg" alt="nen"/>
  <form runat="server">
     <div id="dn-content">
      <div class="text-left">
       <p class="text-center"><a href="Default.aspx" class="h1 text-center text-light">TravelBrockersWeb</a></p> 
   <div class="form-group mb-2 mt-2">
    <label class="text-light mb-1">Tài khoản:</label>
     <asp:TextBox ID="txtUsername" runat="server" type="text" class="form-control bg-dark text-light mb-1" />
  </div>
  <div class="form-group mb-2 mt-2">
    <label class="text-light mb-1">Mật khẩu:</label>
    <asp:TextBox ID="txtPass" runat="server" type="password" class="form-control bg-dark text-light mb-1" />
  </div>
   <div class="form-group form-check">
    <label class="form-check-label text-light mb-3 mt-2">
     <asp:CheckBox class="form-check-input" runat="server" ID="chkRemember"/>Ghi nhớ đăng nhập
    </label>    
  </div>
      </div>
  <button type="submit" class="btn btn-primary bnt-dk-dk mr-2" id="btnDN" runat="server" onserverclick="btnDN_ServerClick">Đăng nhập</button>
  <button class="btn btn-success bnt-dk-dk" type="submit">Đăng ký</button>
     </div>
    </form>
        </section>
</body>
</html>
