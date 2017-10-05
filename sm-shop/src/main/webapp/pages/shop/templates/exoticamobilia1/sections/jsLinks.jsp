<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>

<%@ page session="false" %>

   <!-- required common scripts -->
	<script src="/resources/js/shop-functions.js"></script>
    



 



<script>

function getContextPath() {
   return "";
}

function getMerchantStore() {
   return "1";
}

function getMerchantStoreCode() {
   return "DEFAULT";
}

function getLanguageCode() {
   return "en";
}

function supportsCustomerLogin() {
	
	
		return true;
	
	
	
}

function getItemLabel(quantity) {
	var labelItem = 'item';
	if (quantity > 1) {
		labelItem = 'items';
	}
	return labelItem;
}

function getLoginErrorLabel() {
	return 'Login Failed. Username or Password is incorrect.';
}

function getEmptyCartLabel() {
	return 'Your Shopping cart is empty';
}


function getInvalidEmailMessage() {
	return 'Please provide a valid email address.';
}

function getInvalidUserNameMessage() {
	return 'User name must be at least 6 characters long';
}


function getInvalidPasswordMessage() {
	return 'Password must be at least 6 characters';
}

function getInvalidCheckPasswordMessage() {
	return 'Both password must match';
}

function cartInfoLabel(cart){
	 var labelItem = getItemLabel(cart.quantity);
	 <!-- A configuration is required to display quantity and price -->
	 
	 
	 
	 $("#cartinfo").html('<span id="cartqty">(' + cart.quantity + ' ' + labelItem + ')</span>');
	 
	 
}

function cartSubTotal(cart) {
	return '<div class="pull-right"><font class="total-box-label">Sub-total : <font class="total-box-price"><strong><span id="checkout-total">' + cart.subTotal + '</span></strong></font></font></div>';
}


function getOrderValidationMessage(messageKey) {
	
	//stripe messages
	var invalid_number 	= 'Credit card number is not valid';
	var invalid_expiry_month = 'Credit card expiration date is invalid';
	var invalid_expiry_year = 'Credit card expiration date is invalid';
	var invalid_cvc 	= 'Credit card verification digits are invalid';
	var incorrect_number = 'Credit card number is not valid';
	var expired_card 	= 'Payment transaction has been declined';
	var incorrect_cvc 	= 'Credit card verification digits are invalid';
	var card_declined 	= 'Payment transaction has been declined';
	var processing_error = 'Got an error while processing the payment, please use another payment method';
	var rate_limit = 'Got an error while processing the payment, please use another payment method';
	
	var map = new Object(); // or var map = {};
	map['invalid_number'] = invalid_number;
	map['invalid_expiry_month'] = invalid_expiry_month;
	map['invalid_expiry_year'] = invalid_expiry_year;
	map['invalid_cvc'] = invalid_cvc;
	map['incorrect_number'] = incorrect_number;
	map['expired_card'] = expired_card;
	map['incorrect_cvc'] = incorrect_cvc;
	map['card_declined'] = card_declined;
	map['processing_error'] = processing_error;
	map['rate_limit'] = rate_limit;
	
	//log('Got message key ' + messageKey);
	
	var message = map[messageKey];
	
	if(message==null) {
		message = messageKey;
	}
	
	return message;

	
}




</script>
    <script src="/resources/js/jquery-1.10.2.min.js"></script>
    <script src="/resources/js/json2.js"></script>
    <script src="/resources/js/jquery-cookie.js"></script>
    <script src="/resources/js/shopping-cart.js"></script>
    <script src="/resources/js/login.js"></script>
    <script src="/resources/js/jquery.showLoading.min.js"></script>
    
   
    
    
    

    
    
    
    
  
 
   