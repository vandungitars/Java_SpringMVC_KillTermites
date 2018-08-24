$(document).ready(function(){
	$("body").on("click",".linkNews",function(){
		var idnews = $(this).attr("data-idNews");
		$.ajax({
			url: "/dietmoi/api/changeNews",
			type: "GET",
			data:{
				idnews : idnews,
			},
			success: function(value){
				var bodyNews = $("body").find("#bodyNews");
				bodyNews.empty();
				bodyNews.append(value);
			}
		})
	});
	$("body").on("click",".linkNews",function(){
		var idnews = $(this).attr("data-idNews");
		$.ajax({
			url: "/dietmoi/api/changeDescribeNews",
			type: "GET",
			data:{
				idnews : idnews,
			},
			success: function(value){
				var describesNews = $("body").find("#table-describesNews");
				describesNews.empty();
				describesNews.append(value);
			}
		})
	});
	$("#btn-confirm").click(function(event){
		event.preventDefault();
		var formdata = $("#form-inforcustomer").serializeArray();
		json = {};
		$.each(formdata, function(i,field){
			json[field.name] = field.value;
		});
		$.ajax({
			url: "/dietmoi/api/getInforCustomer",
			type: "POST",
			data:{
				dataJson : JSON.stringify(json)
			},
			success: function(value){
				if(value == 'true'){
					alert("XÁC NHẬN LIÊN HỆ DỊCH VỤ THÀNH CÔNG");
				}
			}
		})
	});
	$("#btn-comment").click(function(event){
		event.preventDefault();
		var formdata = $("#form-comment").serializeArray();
		json = {};
		$.each(formdata, function(i,field){
			json[field.name] = field.value;
		});
		$.ajax({
			url: "/dietmoi/api/getComment",
			type: "POST",
			data:{
				dataJson : JSON.stringify(json)
			},
			success: function(value){
				if(value == 'true'){
					alert("XÁC NHẬN Ý KIẾN THÀNH CÔNG");
				}
			}
		})
	});
	$("#btn-deleteproduct").click(function(){
		$("#table-product > tbody input:checked").each(function(){
			var idproduct = $(this).attr("data-idproduct");
			var This = $(this);
			$.ajax({
				url: "/dietmoi/api/deleteProduct",
				type: "GET",
				data:{
					idproduct : idproduct,
				},
				success: function(value){
					This.closest("tr").remove();
				}
			})
		})
	});
	
	$("#btn-updateproduct").click(function(){
		$("#table-product > tbody input:checked").each(function(){
			var idproduct = $(this).attr("data-idproduct");
			var nameproduct = $(this).closest("tr").find("#nameproduct > input").val();
			var price = $(this).closest("tr").find("#price > input").val();
			var content = $(this).closest("tr").find("#content > input").val();
			$.ajax({
				url: "/dietmoi/api/updateProduct",
				type: "GET",
				data:{
					idproduct : idproduct,
					nameproduct : nameproduct,
					price : price,
					content : content,
				},
				success: function(value){
					alert("Update success");
				}
			})
		})
	});
	
	var files= [];
	var image = "";
	$("#image").change(function(event){
		files = event.target.files;
		image = files[0].name;
		forms = new FormData();
		forms.append("file",files[0]);
		$.ajax({
			url: "/dietmoi/api/uploadfile",
			type: "POST",
			data:forms,
			contentType:false,
			processData:false,
			enctype:"multipart/form-data",
			success: function(value){
				
			}
		})
	});
	
	$("#btn-addproduct").click(function(event){
		event.preventDefault();
		var formdata = $("#form-product").serializeArray();
		json = {};
		$.each(formdata,function(i,field){
			json[field.name] = field.value;
		});
		json["image"] = image;
		$.ajax({
			url: "/dietmoi/api/addProduct",
			type: "POST",
			data:{
				dataJson : JSON.stringify(json)
			},
			success: function(value){
				alert("Add success");
			}
		})
	});
})
