<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DIỆT MỐI TL</title>
<jsp:include page="header.jsp"/>
<script type="text/javascript">
      function checkInforCustomer() {
    	 var name = document.getElementById("namecustomer").value;
    	 var phone = document.getElementById("phonenumber").value;
    	 var email = document.getElementById("email").value;
    	 var address = document.getElementById("address").value;
    	 var specialize = document.getElementById("specialize").value;
    	 var name = document.getElementById("namecustomer").value;
    	 if(!name || !phone || !email || !address || !specialize){
    		 alert("Khách hàng cần điền đầy đủ thông tin!!!");
    	 }
      }
</script>
<script type="text/javascript">
      function checkComment() {
    	 var email = document.getElementById("email").value;
    	 var comment = document.getElementById("comment").value;
    	 if(!email || !comment){
    		 alert("Khách hàng cần điền đầy đủ thông tin!!!");
    	 }
      }
</script>
</head>
<body>
	<div id="header-homepage" class="row container-fluid">
		<div class="row" class=”col-sm-12”>
			<img style="width: 100%; height: 200px" src='<c:url value="/resources/Image/banner_header.png"/> '>
		</div>
		<div class="row">
			<nav id="none-navbar" class="navbar navbar-default">
				  <div class="container-fluid">
				    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				      <ul class="nav navbar-nav navbar-center">
				      	<li><a href="/dietmoi/"><img style="width: 70px; height: 50px;" src='<c:url value="/resources/Image/logo.png"/>'></a></li>
				        <li class="tab-menu"><a href="/dietmoi/">TRANG CHU <span class="sr-only">(current)</span></a></li>
				        <li class="dropdown tab-menu">
				          <a class="dropdown-toggle" data-toggle="dropdown" href="#">DỊCH VỤ DIỆT MỐI MỌT<span class="caret"></span></a>
				          <ul class="dropdown-menu">				      
							     <li><a href="/dietmoi/dichvu/1">Diệt mối nhà riêng</a></li>
							     <li><a href="/dietmoi/dichvu/2">Diệt mối công trình</a></li>
							     <li><a href="/dietmoi/dichvu/3">Diệt mối đình, chùa</a></li>
					      </ul>				      
				        </li>
				        <li class="dropdown tab-menu">
				          <a class="dropdown-toggle" data-toggle="dropdown" href="#">DỊCH VỤ DIỆT CÔN TRÙNG<span class="caret"></span></a>
				          <ul class="dropdown-menu">				      
							     <li><a href="/dietmoi/dichvu/4">Phun muỗi</a></li>
							     <li><a href="/dietmoi/dichvu/5">Diệt gián</a></li>
					      </ul>				      
				        </li>
				        <li class="tab-menu"><a href="/dietmoi/thuocdiet/">SẢN PHẨM THUỐC</a></li>
				        <li class="tab-menu"><a href="/dietmoi/lienhe/">LIEN HE</a></li>
				        
				      </ul>
				    </div><!-- /.navbar-collapse -->
				  </div><!-- /.container-fluid -->
			</nav>
		</div>
	</div>
	<div id="body-homepage" class="container-fluid">
		<div class="row" style="padding-top: 30px; padding-left: 40px; padding-right: 40px">
			<div class="col-sm-1 col-md-1"></div>
			<div class="col-sm-4 col-md-4 frame-contact" style="margin-right: 20px">
				<div class="row title-card-contact"><p><h2>THÔNG TIN CÔNG TY</h2></p></div><br/>
				<i class="fa fa-address-card" style="font-size:17px;color:blue;"></i><span style="padding-left: 10px">CÔNG TY DỊCH VỤ DIỆT MỐI TẬN GỐC TL</span></br></br>
				<i class="fa fa-map-marker" style="font-size:17px;color:blue;"></i><span style="padding-left: 17px">Trần Cung-Cổ Nhuế-Bắc Từ Liêm-Hà Nội</span></br></br>
				<i class="fa fa-phone" style="font-size:17px;color:blue;"></i><span style="padding-left: 17px">0164 998 7549</span></br></br>
				<i class="fa fa-at" style="font-size:17px;color:blue;"></i><span style="padding-left: 17px">dungleevan08121998@gmail.com</span></br></br>
			</div>
			<div class="col-sm-6 col-md-6 frame-contact">
				  <div class="row title-card-contact"><p><h2>THÔNG TIN KHÁCH HÀNG</h2></p></div><br/>
				  <form id="form-inforcustomer" action="" method="post">
				      <h4><label for="namecustomer">TÊN KHÁCH HÀNG:</label></h4>
				      <input type="text" class="form-control" id="namecustomer" placeholder="Enter name" name="namecustomer">

				      <h4><label for="phonenumber">ĐIỆN THOẠI LIÊN LẠC:</label></h4>
				      <input type="text" class="form-control" id="phonenumber" placeholder="Enter phone" name="phonenumber">

				      <h4><label for="email">EMAIL:</label></h4>
				      <input type="text" class="form-control" id="email" placeholder="Enter email" name="email">

				      <h4><label for="address">ĐỊA CHỈ NHẬN HÀNG:</label></h4>
				      <input type="text" class="form-control" id="address" placeholder="Enter address" name="address">

					  <h4><label for="specialize">DỊCH VỤ:</label></h4>
					  <textarea class="form-control" rows="5" id="specialize" name="specialize" placeholder="Diệt mối, phun muỗi, mua sản phẩm,..."></textarea>
				  </form>
				  <button onclick = "checkInforCustomer()" type="submit" class="btn btn-success" id="btn-confirm" style="margin-bottom: 10px; margin-top: 10px;"><h5>XÁC NHẬN</h5></button>
			</div>
			<div class="col-sm-1 col-md-1"></div>
		</div>
	</div>
	<div id="footer-homepage" class="container-fluid">
		<div class="row">
			<div class="col-sm-4 col-md-4 wow fadeInDown">
				<p><span class="label label-info" style="font-size: 17px">THONG TIN CÔNG TY</span></p>
				<span>TL là Công ty chuyên diệt mối mọt, côn trùng với thâm niên làm việc lâu năm. Đồng thời là cơ sở phân phối
				sản phẩm thuốc diệt mối cho các doanh nghiệp trên nhiều tỉnh thành trong cả nước. Với tiêu chí đặt uy tín và hiệu quả 
				lên hàng đầu. Có bảo hành 2 năm cho dịch vụ diệt mối mọt tại nhà.
				</span>
			</div>
			<div class="col-sm-4 col-md-4 wow fadeInDown">
				<p><span class="label label-info" style="font-size: 17px">LIEN HE</span></p>
				<p>HOTLINE : <span style="color: red;">0164 998 7549</span></p>
				<p>ĐỊA CHỈ : <span style="color: red;" >Trần Cung-Cổ Nhuế-Bắc Từ Liêm-Hà Nội.</span></p>
			</div>
			<div class="col-sm-4 col-md-4 wow fadeInDown">
				<p><span class="label label-info" style="font-size: 17px">GÓP Ý</span></p>
				<form id="form-comment" action="" method="post">
					<input class="material-textinput" type="text" placeholder="Email" style="margin-bottom: 8px" name="email" id="email"/><br/>
					<textarea rows="4" cols="50" placeholder="Y kien ca nhan" style="margin-bottom: 8px" name="comment" id="comment"></textarea>
				</form>
				<button onclick=checkComment() type="submit" class="btn btn-success" id="btn-comment"><h6>GỬI GÓP Ý</h6></button>
			</div>
		</div>
	</div>	
	<jsp:include page="footer.jsp"/>
</body>
</html>