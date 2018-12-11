var tk = document.getElementById("tk");

function checkPostal(){
	if(tk.value.length!=5) {
    tk.setCustomValidity("Ο T.K. πρέπει να είναι 5 ψηφία." );
   } else {
	tk.setCustomValidity('');
	}
}
tk.onchange = checkPostal;