//= require rails-ujs
//= require jquery
//= require jquery_ujs
//= require sweetalert2
//= require rails-sweetalert2-confirm
//= require_tree .

function toggleSearchBar() {
  var x = document.getElementById("search");
  if (x.style.display === "none") {
    x.style.display = "block";
  } else {
    x.style.display = "none";
  }
}

function alertFunction() {
  var value = confirm("Pode abrir a conta?");
    if (value == true)
  {
    alert("Conta criada!");
    return true;
  }
  else
  {
    alert("Conta nao criada!");
    return false;
  }
}

function paidFunction() {
  var value = alert("Conta paga! Voce esta friiila!");
}
