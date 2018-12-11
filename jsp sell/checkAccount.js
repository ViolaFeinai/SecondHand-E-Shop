var account = document.getElementById("account");

function checkAccount(){
	if(account.value.length!=16) {
    account.setCustomValidity("Ο αριθμός λογαριασμού πρέπει να είναι 16 ψηφία" );
   } else {
	account.setCustomValidity('');
	}
}
account.onchange = checkAccount;