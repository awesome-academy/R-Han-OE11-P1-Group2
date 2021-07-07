$(document).ready(function () {

$('#mainslider').owlCarousel({
    loop:true,
    margin:40,
    nav:false,
    autoplay: true,
    autoplayTimeout: 2500,
    autoplayHoverPause: false,
    rewind: true,
    callbacks: true,
    responsive:{
        0:{
            items:2
        },
        600:{
            items:3
        },
        1000:{
            items:5
        }
    }
})
});

// Animations init
new WOW().init();
