$(document).ready(function() {
  $('#owl').owlCarousel({
    loop:true,
    items:1,
    margin:12,
    nav:true,
    autoplay:true,
    responsive:{
        0:{
            items:1
        },
        600:{
            items:1
        },
        1000:{
            items:1
        }
    }
  })
  $('#owl1').owlCarousel({
    loop:true,
    items:1,
    margin:12,
  })
})
