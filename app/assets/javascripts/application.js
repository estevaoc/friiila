//= require rails-ujs
//= require_tree .

function my_function() {
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
