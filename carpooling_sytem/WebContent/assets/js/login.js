function toggleSignup() {
  document.getElementById("login-toggle").style.backgroundColor = "#fff";
  document.getElementById("login-toggle").style.color = "#222";
  document.getElementById("signup-toggle").style.backgroundColor = "#00CB7A";
  document.getElementById("signup-toggle").style.color = "#fff";
  document.getElementById("login-form").style.display = "none";
  document.getElementById("signup-form").style.display = "block";
}

function toggleLogin() {
  document.getElementById("login-toggle").style.backgroundColor = "#00CB7A";
  document.getElementById("login-toggle").style.color = "#fff";
  document.getElementById("signup-toggle").style.backgroundColor = "#fff";
  document.getElementById("signup-toggle").style.color = "#222";
  document.getElementById("signup-form").style.display = "none";
  document.getElementById("login-form").style.display = "block";
}


/*Dropdown Menu*/
$(".dropdown").click(function() {
  $(this)
    .attr("tabindex", 1)
    .focus();
  $(this).toggleClass("active");
  $(this)
    .find(".dropdown-menu")
    .slideToggle(300);
});
$(".dropdown").focusout(function() {
  $(this).removeClass("active");
  $(this)
    .find(".dropdown-menu")
    .slideUp(300);
});
$(".dropdown .dropdown-menu li").click(function() {
  $(this)
    .parents(".dropdown")
    .find("span")
    .text($(this).text());
  $(this)
    .parents(".dropdown")
    .find("input")
    .attr("value", $(this).attr("id"));
});
/*End Dropdown Menu*/

$(".dropdown-menu li").click(function() {
  var input =
      "<strong>" +
      $(this)
        .parents(".dropdown")
        .find("input")
        .val() +
      "</strong>",
    msg = '<span class="msg">Hidden input value: ';
  $(".msg").html(msg + input + "</span>");
});
