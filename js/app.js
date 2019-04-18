$(window).on('load', function() {
    $('.flexslider').flexslider({
    animation: "slide",
    controlNav: true,
    directionNav: true,
    animationLoop: true,
    slideshowSpeed: 3000,
    animationSpeed: 1000,
    pauseOnHover: true,
    minItems: 0,
    maxItems: 3,
    itemMargin: 5,
    touch: true
    });
});
