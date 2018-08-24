<!--
Author: W3layouts
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>DIỆT MỐI TL</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Pooled Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="<c:url value="/resources/css/morris.css" />"/>
<link rel="stylesheet" href="<c:url value="/resources/css/style.css" />"/>
<!-- Graph CSS -->
<link rel="stylesheet" href="<c:url value="/resources/css/font-awesome.css" />"/>
<!-- jQuery -->
<script src="<c:url value="/resources/js/jquery-2.1.4.min.js"/>"></script>
<!-- //jQuery -->
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href="<c:url value="/resources/css/icon-font.min.css" />"/>
<!-- //lined-icons -->
<link rel="stylesheet" href="<c:url value="/resources/Styles/styles.css" />"/>
</head> 
<body>
<div class="page-container">
<!--/content-inner-->
	<div class="left-content">
		   <div class="mother-grid-inner">
	             <!--header start here-->
					<div class="header-main">
						<div class="logo-w3-agile">
							<h2><a href="/dietmoi/">DIỆT MỐI TL</a></h2>
						</div>
						<div class="w3layouts-left">								
							<!--search-box-->
							<div class="w3-search-box">
								<form action="#" method="post">
									<input type="text" placeholder="Search..." required="">	
									<input type="submit" value="">					
								</form>
							</div>
							<!--//end-search-box-->
							<div class="clearfix"> </div>
						</div>
						<div class="w3layouts-right">
							<div class="profile_details_left">
							<!--notifications of menu start -->
								<ul class="nofitications-dropdown">
									<li class="dropdown head-dpdn">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-envelope"></i><span class="badge">3</span></a>
									</li>
									<li class="dropdown head-dpdn">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bell"></i><span class="badge blue">3</span></a>
									</li>
									<li class="dropdown head-dpdn">
										<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-bar-chart"></i><span class="badge blue">3</span></a>
									</li>	
									<div class="clearfix"> </div>
								</ul>
								<div class="clearfix"> </div>
							</div>
							<!--notification menu end -->
							<div class="clearfix"> </div>				
						</div>
						<div class="profile_details w3l">		
							<ul>
								<li class="dropdown profile_details_drop">
									<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
										<div class="profile_img">	
											<div class="user-name">
												<p>ACCOUNT</p>
												<span>name admin</span>
											</div>
											<i class="fa fa-angle-down"></i>
											<i class="fa fa-angle-up"></i>
											<div class="clearfix"></div>	
										</div>	
									</a>
									<ul class="dropdown-menu drp-mnu">
										<li> <a href="#" style="color: red;"><i class="fa fa-cog"></i> Settings</a> </li> 
										<li> <a href="#" style="color: red;"><i class="fa fa-user"></i> Profile</a> </li> 
										<li> <a href="#" style="color: red;"><i class="fa fa-sign-out"></i> Logout</a> </li>
									</ul>
								</li>
							</ul>
						</div>
								
					     <div class="clearfix"> </div>	
					</div>
	<!--heder end here-->
<!-- script-for sticky-nav -->
<script>
$(document).ready(function() {
	 var navoffeset=$(".header-main").offset().top;
	 $(window).scroll(function(){
		var scrollpos=$(window).scrollTop(); 
		if(scrollpos >=navoffeset){
			$(".header-main").addClass("fixed");
		}else{
			$(".header-main").removeClass("fixed");
		}
	 });
	 
});
</script>
<!-- /script-for sticky-nav -->
			<div class="row">
				<button class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" style="margin-left: 70px; margin-top: 11px; width: 150px;padding-bottom: 8px; padding-top: 9px">THÊM SẢN PHẨM</button>
				<button class="btn btn-warning" id="btn-deleteproduct" style="color: white; margin-top: 10px">XÓA SẢN PHẨM</button>
				<button class="btn btn-success" id="btn-updateproduct" style="color: white; margin-top: 10px">SỬA SẢN PHẨM</button>
				<!-- Modal -->
				<div class="modal fade" id="myModal" role="dialog">
				  <div class="modal-dialog"> 
				    <!-- Modal content-->
					    <div class="modal-content">
					      <div class="modal-body">
					      	<form id="form-product" action="" method="post">
							    <label for="nameproduct">TÊN SẢN PHẨM:</label>
							    <input type="text" class="form-control" id="nameproduct" placeholder="Enter name" name="nameproduct"><br/>
							    <label for="priceproduct">GIÁ TIỀN:</label>
							    <input type="text" class="form-control" id="price" placeholder="Enter price" name="price"><br/>
							    <label for="imageproduct">HÌNH SẢN PHẨM:</label>
							    <input type="file" class="form-control" id="image" placeholder="Enter image" name="image"><br/>			
							    <label for="contentproduct">MÔ TẢ SẢN PHẨM:</label>
							    <textarea class="form-control" rows="5" id="content" name="content"></textarea>
							</form>
					      </div>
					      <div class="modal-footer">
					      	<button type="button" class="btn btn-success" data-dismiss="modal" id="btn-addproduct">THÊM</button>
					      </div>
					    </div>
				  </div>
				</div>
			</div>
	<!--inner block start here-->
			<div class="inner-block" style="padding-top: 20px;">
				<div class="container">
					<div class="row"  data-wow-delay="1s">
						<table class="table" id="table-product">
			                    <thead>
			                        <tr>
			                        	<th></th>
			                            <th>Hình sản phẩm</th>
			                            <th>Tên sản phẩm</th>
			                            <th>Giá tiền</th>
			                            <th>Mô tả</th>
			                        </tr>
			                    </thead>
			                    <tbody>
			                    	<c:forEach items="${listProducts}" var="product">			                    		
				                        <tr>
				                        	<td id="checkboxproduct"><input type="checkbox" name="checkbox" data-idproduct="${product.getIdproduct()}"></td>
				                            <td><img style="width: 180px; height: 150px" src="<c:url value="/resources/Image/${product.getImage()}"/>"></td>
				                            <td id="nameproduct" name="nameproduct" style="color: red;font-size: 20px"><input type="text" value="${ product.getNameproduct()}"></td>
				                            <td id="price" name="price" style="color: red;font-size: 20px"><input type="text" value="${product.getPrice()}"></td>                           
				                            <td id="content" name="content" style="color: red;font-size: 20px"><input type="text" value="${product.getContent()}"></td>			                         	                            
			                       	 	</tr>
			                        </c:forEach>
			                    </tbody>
			            </table>
					</div>
				</div>
			</div>
	<!--inner block end here-->
		</div>
	</div>
<!--//content-inner-->
<!--/sidebar-menu-->
	<div class="sidebar-menu">
		<header class="logo1">
			<a href="#" class="sidebar-icon"> <span class="fa fa-bars"></span> </a> 
		</header>
		<div style="border-top:1px ridge rgba(255, 255, 255, 0.15)"></div>
       	<div class="menu">
			<ul id="menu" >
				<li><a href="/dietmoi/"><i class="fa fa-tachometer"></i> <span>Homepage</span><div class="clearfix"></div></a></li>
				<li><a href="/bieudo/"><i class="fa fa-bar-chart"></i> <span>Biểu đồ bán hàng</span><div class="clearfix"></div></a></li>
				<li><a href="/main/"><i class="fa fa-envelope"></i> <span>mail</span><div class="clearfix"></div></a></li>
				<li><a href="/comment/"><i class="fa fa-bell"></i> <span>comment</span><div class="clearfix"></div></a></li>
		  	</ul>
		</div>
   </div>
   <div class="clearfix"></div>		
</div>
<script>
var toggle = true;
			
$(".sidebar-icon").click(function() {                
  if (toggle)
  {
	$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
	$("#menu span").css({"position":"absolute"});
  }
  else
  {
	$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
	setTimeout(function() {
	  $("#menu span").css({"position":"relative"});
	}, 400);
  }
				
				toggle = !toggle;
			});
</script>
<!--js -->
<script src="<c:url value="/resources/js/jquery.nicescroll.js"/>"></script>
<script src="<c:url value="/resources/js/scripts.js"/>"></script>
<script src="<c:url value="/resources/JS/custom.js"/>"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<c:url value="/resources/js/bootstrap.min.js"/>"></script>
<!-- /Bootstrap Core JavaScript -->	   
<!-- morris JavaScript -->	
<script src="<c:url value="/resources/js/raphael-min.js"/>"></script>
<script src="<c:url value="/resources/js/morris.js"/>"></script>
</body>
</html>