$(document).ready(function() {
	var typing_timeout = null;


	$(document).on('click', "#remove_promo", function() {

		$.ajax({
			url: "cart.php",
			data: "remove_promo=1",
			type: "POST"
		}).success(function(response) {
			$("#view_cart").html($(response).find("#view_cart").html());
		});
		return false;
	});

	$(document).on('click', "#apply_promo", function() {
		var promo_input  = $("input[name='promocode']");
		var code_entered = $(promo_input).val();

		$.ajax({
			url: "cart.php",
			data: "apply_promo=1&code="+code_entered,
			type: "POST"
		}).success(function(response) {
			var err_code = response.substr(0, 1);
			if(err_code == 0) $(promo_input).css('border', '1px solid red');
			if(err_code == 1) $(promo_input).css('border', '1px solid red');
			if(err_code == 2) $(promo_input).css('border', '1px solid red');
			if(err_code == 3) {
				$.ajax({
						url: 'cart.php',
						type: "GET",
				}).success(function(response) {
					$("#view_cart").html($(response).find("#view_cart").html());
				});
			}
		});
		return false;
	});

	$(document).on('click', ".increase, .decrease",function() {
		if($(this).attr('class')=='increase') {
			window.maction = 'i';
			$(this).prev('.qty').val(parseInt($(this).prev('.qty').val())+1);
		}
		if($(this).attr('class')=='decrease') {
			window.maction = 'd';
			if(parseInt($(this).parent().find('.qty').val()) > 1) {
				$(this).parent().find('.qty').val(parseInt($(this).parent().find('.qty').val())-1);
			} else return false;
		}
		window.t = $(this);

		if(typing_timeout != null) {
			clearTimeout(typing_timeout);
		}
		typing_timeout = setTimeout(update, 350);
	});

	function update() {
		var t = window.t;
		var cart_item_id = $(t).closest('.cart_item_holder').attr('cart_item_id');
		var quantity = parseInt($(t).parent().find('.qty').val());
		if(quantity <= 1000 && quantity > 0) {
			$.ajax({
				url: 'cart.php',
				type: "POST",
				data: 'cart_item_id='+cart_item_id+'&newQuantity='+quantity+'&update=1'
			}).success(function(response) {
				$("#view_cart").html($(response).find("#view_cart").html());
			});
		} else {
			 $(t).parent().find('.qty').val(1);
			 quantity = 1;
			 $.ajax({
					url: 'cart.php',
					type: "POST",
					data: 'cart_item_id='+cart_item_id+'&newQuantity='+quantity+'&update=1'
			}).success(function(response) {
				$("#view_cart").html($(response).find("#view_cart").html());
			});
		}
	}

	$(document).on("blur keyup", ".qty", function(event) {
	    	event.preventDefault();
	    	console.log(event.keyCode);
		if (((event.keyCode || event.which) == 13) || event.keyCode == undefined) {

			window.t = $(this);
			if(typing_timeout != null) {
				clearTimeout(typing_timeout);
			}
			typing_timeout = setTimeout(update, 200);
  		}
	    	return false;

	});

	$(document).on('click', ".deleteProduct",function(event) {
		if ((event.keyCode || event.which) == 13) { return false; }
		var t = this;
		$.ajax({
			'url': "cart.php",
			'type': "POST",
			'data': "delete_from_cart="+$(this).closest('.cart_item_holder').attr('cart_item_id')
		}).success(function(response) {
			if(parseFloat($(response).find("#totalPrice").text()) > 0) 
			{
				$(t).parent().fadeOut("slow", function() {
					$("#view_cart").html($(response).find("#view_cart").html());
				});
			}
			else {
				window.location.href = "index.php";
			}
		});
		return false;
	});

	$(document).on('click', '#checkout_btn', function() {
		window.location.href = "checkout.php";
	});
	$(document).on('click', '#tbi_checkout_btn', function() {
		window.location.href = "checkout.php?pMethod=tbi";
	});
	$(document).on('click', '#jet_checkout_btn', function() {
		window.location.href = "jetcreditcheckout.php";
	});
	$(document).on('click', '#uni_checkout_btn', function() {
		window.location.href = "checkout.php?pMethod=uni";
	});
});