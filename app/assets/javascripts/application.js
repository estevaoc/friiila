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
