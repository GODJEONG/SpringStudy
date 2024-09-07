
var quantityInput, quantity;

		function increaseQuantity(inputId) {
			quantityInput = document.getElementById(inputId);
			quantity = parseInt(quantityInput.value);
			quantityInput.value = quantity + 1;
		}

		function decreaseQuantity(inputId) {
			quantityInput = document.getElementById(inputId);
			quantity = parseInt(quantityInput.value);
			if (quantity > 0) {
				quantityInput.value = quantity - 1;
			}
		}
		