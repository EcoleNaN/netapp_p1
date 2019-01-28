
function scrollPage() {
    var scrollTop = $(window).scrollTop();
    var changeHeaderAfter = 75;
    var header = $('nav');
    if (scrollTop >= changeHeaderAfter) {
        header.addClass('navbar-shrink');
    } else {
        header.removeClass('navbar-shrink');
    }
}

(function() {
    'use strict';

    var typed = new Typed('.main-intro p span', {
        strings: ['NaN Officiel', 'NaN Business', 'Candidature NaN', 'Enseignement NaN', 'NaN Garage', 'Reservation iMac','Battles NaN','Reseaux sociaux NaN'],
        startDelay: 3500,
        typeSpeed: 115,
        backSpeed: 75,
        loop: true,
        loopCount: Infinity,
        showCursor: false,
        onComplete: (self) => {
            self.startDelay = 0;
            self.currentElContent = null;
        }
    });

    // Init Nicescroll
    $('html').niceScroll({
        scrollspeed: 80,
        mousescrollstep: 40,
        cursorwidth: 10,
        cursorminheight: 170,
        cursorborder: 0,
        cursorcolor: 'rgb(172, 50, 228)',
        cursorborderradius: 0,
        zindex: 9999,
        styler: "fb",
        background: '#fff',
        autohidemode: true,
        horizrailenabled: false
    });

    $('a[href*="#"]').on('click', function(event) {
        var anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $(anchor.attr('href')).offset().top - 45
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
})();

$(window).scroll(function() {
    scrollPage();
});

$(window).on('load', function() {
    $('.loader').show();
    setTimeout(function() {
        $('.loader').fadeOut();
    }, 2000);
});