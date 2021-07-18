$(document).ready(function() {
	var link_img;
	$("#post a").click(function() {
		// Bước 1 Lấy src
		link_img = $(this).children('img').attr('src');
		// Bước 2 Gán src vào #show
		$('#thumb img').attr('src', link_img);
		console.log(link_img);
		return false;
	});
});

$(document).ready(function() {
	$('#list-product-wp .section-detail').scroll(function() {
		console.log('vừa scroll')
	})
});

$(document).ready(function() {
	$('#cart-wp #dropdown').scroll(function() {
		console.log('vừa scroll')
	})
});