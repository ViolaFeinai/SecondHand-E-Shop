var phone = document.getElementById("phone");

function checkPhone(){
	if(phone.value.length!=10) {
    phone.setCustomValidity("Το τηλέφωνο πρέπει να είναι 10 ψηφία" );
   } else {
	phone.setCustomValidity('');
	}
}
phone.onchange = checkPhone;