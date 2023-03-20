$(window).scroll(function () {
  if ($(document).scrollTop() > 80) {
    $(".navbar").addClass("scroll-nav");
  } else if ($(document).scrollTop() > 100) {
    $(".navbar").removeClass("scroll-nav");
  } else {
    $(".navbar").removeClass("scroll-nav");
  }
});

$(document).ready(function () {
  $(".btnSearch").mouseenter(function () {
    $(".input").addClass("activeSearch");
    $(this).toggleClass("animate");
  });
});
