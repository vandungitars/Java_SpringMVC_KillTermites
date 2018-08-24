<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DIỆT MỐI TL</title>
<script type="text/javascript">
      function checkComment() {
    	 var email = document.getElementById("email").value;
    	 var comment = document.getElementById("comment").value;
    	 if(!email || !comment){
    		 alert("Khách hàng cần điền đầy đủ thông tin!!!");
    	 }
      }
</script>
<jsp:include page="header.jsp"/>
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
				          <a class="dropdown-toggle" data-toggle="dropdown" href="#">DỊCH VỤ PHÒNG, DIỆT MỐI MỌT<span class="caret"></span></a>
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
	
	<div id="body-homepage" class="row container-fluid">
		<div class="col-md-2 partitioning-frame">
			<div>
				<div class="row title-card-contact"><p><h4>THÔNG TIN CÔNG TY</h4></p></div><br/>
				<i class="fa fa-address-card" style="font-size:15px;color:blue;"></i><span style="padding-left: 10px">CÔNG TY DỊCH VỤ DIỆT MỐI TL</span></br></br>
				<i class="fa fa-map-marker" style="font-size:17px;color:blue;"></i><span style="padding-left: 17px">Trần Cung-Cổ Nhuế-Bắc Từ Liêm-Hà Nội</span></br></br>
				<i class="fa fa-phone" style="font-size:17px;color:blue;"></i><span style="padding-left: 17px">0164 998 7549</span></br></br>
			</div>
			<div>
				<div class="row title-card-contact"><h4>TÌM HIỂU VỀ CÔN TRÙNG</h4></div><br/>
				<div class="row">
					<div class="col-md-12">
						
						<table class="table" id="table-describesNews">
			                    <thead>
			                        <tr>
			                            <th><p style="color: red;">${listNews[0].getTitle()}</p></th>
			                        </tr>
			                    </thead>
			                    <tbody>
				                        <tr>
				                            <td><img style="width: 100px; height: 100px" src="<c:url value="/resources/Image/${listNews[0].getImage()}"/>">
				                            <p>${listNews[0].getDescribes()}</p></td>
			                       	 	</tr>
			                       	 	<tr><td></td><td></td></tr>
			                    </tbody>
			            </table>
					</div>
				</div>
			</div>
			<div class="row">
				<div class="col-md-12">
					<ul class="list-group">
						<c:forEach items="${listNews}" var="news">
						    <a href="#"><li class="linkNews" data-idNews="${news.getIdnews()}">${news.getTitle()}</li></a>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
		<div class="col-md-8 partitioning-frame" id="bodyNews">
			<h3>${specialize.getNamespecialize()}</h3>
			<img style="width: 100%; height: 400px" src="<c:url value="/resources/Image/${specialize.getImage()}"/>"></br></br>
			<p>${specialize.getContent()}</p>
		</div>
		<div class="col-md-2 partitioning-frame">
			<table class="table" id="table-product">
					<thead>
                        <tr>
                            <th><p>THUỐC BÁN</p></th>
                        </tr>
                    </thead>
                    <tbody>
                    	<c:forEach items="${listProducts}" var="product">
						    <tr>
	                            <td><img style="width: 100px; height: 100px" src="<c:url value="/resources/Image/${product.getImage()}"/>" >
	                            <span style="font-size: 20px">${product.getPrice()}Đ</span></td>
	                            <td><a href="/dietmoi/lienhe/" class="btn btn-danger" id="" style="color: white; margin-top: 10px">MUA</a></td>	                            
	                      	</tr>
						</c:forEach>
                    </tbody>
            </table>
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
