
  /* Sparklines charts */

  $(function() {

    $('.sparkbar').sparkline('html', {
      type: 'bar', 
      disableHiddenCheck: false, 
      width: '36px', 
      height: '36px'
    });

  });

    /* Sparklines */

$(function() {
    $('.bar-sparkline-btn').sparkline([ [3,5], [4,7],[2, 5],[3,5], [4,7], [4, 7], [5, 7], [2, 7], [3,5] ], { type: 'bar', height: '53px', barWidth: '5px', barSpacing: '2px' });
});

$(function() {
    $('.bar-sparkline-btn-2').sparkline([ [3,5], [4,7],[2, 5],[3,5], [4,7], [4, 7], [5, 7], [2, 7], [3,5] ], { type: 'bar', height: '40px', barWidth: '3px', barSpacing: '2px' });
});

$(function() {
    $('.bar-sparkline').sparkline([ [4,8], [2, 7],[2, 6],[2, 7], [3,5],[2, 7],[2, 6],[2, 7], [3,5], [4,7],[2, 5],[3,5], [4,7], [4, 7], [5, 7],[4,8], [2, 7],[2, 6],[2, 7], [3,5] ], { type: 'bar', height: '35px', barWidth: '5px', barSpacing: '2px' });
});

$(function() {
    $('.bar-sparkline-2').sparkline('html', {type: 'bar', barColor: 'black', height: '35px', barWidth: '5px', barSpacing: '2px'} );
});

$(function() {
    $('.tristate-sparkline').sparkline('html', {type: 'tristate', barColor: 'black', height: '35px', barWidth: '5px', barSpacing: '2px'} );
});

$(function() {
    $('.discrete-sparkline').sparkline('html', {type: 'discrete', barColor: 'black', height: '45px', barSpacing: '4px'} );
});

$(function() {
    $('.pie-sparkline').sparkline('html', {type: 'pie', barColor: 'black', height: '45px', width: '45px'} );
});

$(function() {

$(".pie-sparkline-alt").sparkline('html', {
    type: 'pie',
    width: '100',
    height: '100',
    sliceColors: ['#EFEFEF','#5BCCF6','#FA7753'],
    borderWidth: 0});

});

$(function() {
    var myvalues = [10,8,5,7,4,4,1];
    $('.dynamic-sparkline').sparkline(myvalues, {height: '35px', width: '135px'});
});

$(function() {
    var myvalues = [10,8,5,7,4,4,1];
    $('.dynamic-sparkline-5').sparkline(myvalues, {height: '57px', width: '100px'});
});


$(function() {
    $('.tristate-sparkline-2').sparkline('html', {type: 'tristate', 
      posBarColor: '#ec6a00',
      negBarColor: '#ffc98a',
      zeroBarColor: '#000000',
      height: '35px', barWidth: '5px', barSpacing: '2px'} );
});


$(function() {
$(".infobox-sparkline").sparkline([ [3,5], [4,7],[2, 5],[3,5], [4,7], [4, 7], [5, 7], [2, 7], [3,5] ], {
    type: 'bar',
    height: '53',
    barWidth: 5,
    barSpacing: 2,
    zeroAxis: false,
    barColor: '#ccc',
    negBarColor: '#ddd',
    zeroColor: '#ccc',
    stackedBarColor: ['#871010','#ffebeb']});

});

$(function() {
$(".infobox-sparkline-2").sparkline([ [3,5], [4,7],[2, 5],[3,5], [4,7], [4, 7], [5, 7], [2, 7], [3,5] ], {
    type: 'bar',
    height: '53',
    barWidth: 5,
    barSpacing: 2,
    zeroAxis: false,
    barColor: '#ccc',
    negBarColor: '#ddd',
    zeroColor: '#ccc',
    stackedBarColor: ['#000000','#cccccc']});

});

$(function() {
  $(".infobox-sparkline-pie").sparkline([1.5,2.5,2 ], {
    type: 'pie',
    width: '57',
    height: '57',
    sliceColors: ['#0d4f26','#00712b','#2eee76'],
    offset: 0,
    borderWidth: 0,
    borderColor: '#000000'});

});

$(function() {

  $(".infobox-sparkline-tri").sparkline([1,1,0,1,-1,-1,1,-1,0,0,2,1 ], {
      type: 'tristate',
      height: '53',
      posBarColor: '#1bb1fc',
      negBarColor: '#3d57ed',
      zeroBarColor: '#000000',
      barWidth: 5});

});


$(function() {
$(".sprk-1").sparkline( 'html', {
    type: 'line',
    width: '50%',
    height: '65',
    lineColor: '#b2b2b2',
    fillColor: '#ffffff',
    lineWidth: 1,
    spotColor: '#0065ff',
    minSpotColor: '#0065ff',
    maxSpotColor: '#0065ff',
    spotRadius: 4});

});

$(function() {

$(".sparkline-big").sparkline('html', {
    type: 'line',
    width: '85%',
    height: '80',
    highlightLineColor: '#ffffff',
    lineColor: '#ffffff',
    fillColor: 'transparent',
    lineWidth: 1,
    spotColor: '#ffffff',
    minSpotColor: '#ffffff',
    maxSpotColor: '#ffffff',
    highlightSpotColor: '#000000',
    spotRadius: 4});

});

$(function() {

    $(".sparkline-bar-big").sparkline('html', {
        type: 'bar',
        width: '85%',
        height: '90',
        barWidth: 6,
        barSpacing: 2,
        zeroAxis: false,
        barColor: '#ffffff',
        negBarColor: '#ffffff'});

});

$(function() {

    $(".sparkline-bar-big-color").sparkline('html', {
        type: 'bar',
        height: '90',
        width: '85%',
        barWidth: 6,
        barSpacing: 2,
        zeroAxis: false,
        barColor: '#9CD159',
        negBarColor: '#9CD159'});

});

$(function() {

    $(".sparkline-bar-big-color-2").sparkline([405,450,302,405,230,311,405,342,579,405,450,302,183,579,180,311,405,342,579,405,450,302,405,230,311,405,342,579,405,450,302,405,342,432,405,450,302,183,579,180,311,405,342,579,183,579,180,311,405,342,579,405,450,302,405,230,311,405,342,579,405,450,302,405,342,432,405,450,302,183,579,180,311,405,342,579,240,180,311,450,302,370,210], {
        type: 'bar',
        height: '88',
        width: '85%',
        barWidth: 6,
        barSpacing: 2,
        zeroAxis: false,
        barColor: '#9CD159',
        negBarColor: '#9CD159'});

});

    /* Pie gauges */

var initPieChart = function() {

$('.chart').easyPieChart({
    barColor: function(percent) {
        percent /= 100;
        return "rgb(" + Math.round(254 * (1-percent)) + ", " + Math.round(255 * percent) + ", 0)";
    },
    animate: 1000,
    scaleColor: '#ccc',
    lineWidth: 3,
    size: 100,
    lineCap: 'cap',
    onStep: function(value) {
        this.$el.find('span').text(~~value);
    }
});

$('.chart-alt').easyPieChart({
    barColor: function(percent) {
        percent /= 100;
        return "rgb(" + Math.round(255 * (1-percent)) + ", " + Math.round(255 * percent) + ", 0)";
    },
    trackColor: '#333',
    scaleColor: false,
    lineCap: 'butt',
    rotate: -90,
    lineWidth: 20,
    animate: 1500,
    onStep: function(value) {
        this.$el.find('span').text(~~value);
    }
});

$('.chart-alt-1').easyPieChart({
    barColor: function(percent) {
        percent /= 100;
        return "rgb(" + Math.round(255 * (1-percent)) + ", " + Math.round(255 * percent) + ", 0)";
    },
    trackColor: '#e1ecf1',
    scaleColor: '#c4d7e0',
    lineCap: 'cap',
    rotate: -90,
    lineWidth: 10,
    size: 80,
    animate: 2500,
    onStep: function(value) {
        this.$el.find('span').text(~~value);
    }
});

$('.chart-alt-2').easyPieChart({
    barColor: function(percent) {
        percent /= 100;
        return "rgb(" + Math.round(255 * (1-percent)) + ", " + Math.round(255 * percent) + ", 0)";
    },
    trackColor: '#fff',
    scaleColor: false,
    lineCap: 'butt',
    rotate: -90,
    lineWidth: 4,
    size: 50,
    animate: 1500,
    onStep: function(value) {
        this.$el.find('span').text(~~value);
    }
});

$('.updateEasyPieChart').on('click', function(e) {
  e.preventDefault();
  $('.chart, .chart-alt, .chart-alt-1, .chart-alt-2').each(function() {
    $(this).data('easyPieChart').update(Math.round(100*Math.random()));
  });
});
};

$(document).ready(function() {

initPieChart();

});
  function layoutFormatter (){

    /* Layout Formatter */

    setTimeout(function() {

        var windowH = $(window).height();

        var headerH = $('#page-header').height();

        var sideH = windowH - headerH;

        $('#page-content').css('minHeight',sideH - 113);

        if ($('body').hasClass('boxed-layout')) {

          $('#page-sidebar, #menu-right').height(sideH + 36);

        } else {

          $('#page-sidebar, #menu-right').height(sideH);

        }

    }, 499);

  };

$(window).resize(function(){

  layoutFormatter();

});

function boxedFormatter (){

if ($('body').hasClass('boxed-layout')) {

    var stickyTop = $('.boxed-layout #page-sidebar').offset().top;

    $(window).scroll(function(){

      var windowTop = $(window).scrollTop();

      if (stickyTop < windowTop){
        $('.boxed-layout #page-sidebar').css({ position: 'fixed', top: 10 });
      }
      else {
        $('.boxed-layout #page-sidebar').css({ position: 'absolute', top: 74 });
      }
    });

};

};

$(document).on('click', function(){
  boxedFormatter();
});


$(document).ready(function(){

  boxedFormatter();
  layoutFormatter();

  /* Open responsive nav menu */

$(function() {

  $('#responsive-open-menu').click(function(){
    $('#sidebar-menu').toggle();
  });

});

  /* Sidebar Menu */

$(function() {

  $('#sidebar-menu li').click(function(){

    if($(this).is('.active')) {

      $(this).removeClass('active');

      $('ul', this).slideUp();

    } else {

      $('#sidebar-menu li ul').slideUp();

      $('ul', this).slideDown();

      $('#sidebar-menu li').removeClass('active');

      $(this).addClass('active');

    }

  });

});

  /* Right menu */

$(function() {

    var g10 = new JustGage({
      id: "g10", 
      value: getRandomInt(0, 100), 
      min: 0,
      max: 100,
      title: "NS1",
      titleFontColor: "#ccc",
      label: "oz"
    });

    var g11 = new JustGage({
      id: "g11", 
      value: getRandomInt(0, 100), 
      min: 0,
      max: 100,
      title: "NS2",
      titleFontColor: "#ccc",
      label: "oz"
    });
  
    setInterval(function() {
      g10.refresh(getRandomInt(12, 80));
      g11.refresh(getRandomInt(5, 20));

    }, 2500);

  $('#open-left-menu').on('click', function(){

    $('#menu-right').toggleClass('hidden');

  $(".sprk-1-dash").sparkline( 'html', {
      type: 'line',
      width: '50%',
      height: '65',
      lineColor: '#b2b2b2',
      fillColor: '#ffffff',
      lineWidth: 1,
      spotColor: '#0065ff',
      minSpotColor: '#0065ff',
      maxSpotColor: '#0065ff',
      spotRadius: 4});

  });

});

  /* Sidebar Menu active class */

$(function(){

  var url = window.location;

  $('#sidebar-menu a[href="'+ url +'"]').parent('li').addClass('current-page');

  $('#sidebar-menu a').filter(function() {
    return this.href == url;
  }).parent('li').addClass('current-page').parent('ul').slideDown().parent().addClass('active');

});

  /* Boxed layout */

$(function() {

    $('.boxed-layout-btn').click(function(){

        var boxedCookie = $.cookie('boxedLayout', 'on');

        $('body').addClass('boxed-layout');

        $('.boxed-layout-btn').addClass('hidden');

        $('.fluid-layout-btn').removeClass('hidden');

    });

    $('.fluid-layout-btn').click(function(){

        var boxedCookie = $.cookie('boxedLayout', 'off');

        $('body').removeClass('boxed-layout');

        $('.fluid-layout-btn').addClass('hidden');

        $('.boxed-layout-btn').removeClass('hidden');

        $('#page-sidebar').css('position','fixed');

    });

    var boxedLCookie = $.cookie('boxedLayout');

    if (boxedLCookie == 'on') {

      $('body').addClass('boxed-layout');

      $('.boxed-layout-btn').addClass('hidden');

      $('.fluid-layout-btn').removeClass('hidden');

    }

});

  /* Theme animations */

$(function() {

    $('.enable-animations').click(function(){

        var animCookie = $.cookie('animations', 'enable');

        $('#theme-animations').attr('href','assets/themes/minified/fides/animations.min.css');

        $('.enable-animations').addClass('hidden');

        $('.disable-animations').removeClass('hidden');

    });

    $('.disable-animations').click(function(){

        var animCookie = $.cookie('animations', 'disable');

        $('#theme-animations').attr('href','');

        $('.disable-animations').addClass('hidden');

        $('.enable-animations').removeClass('hidden');

    });

    var animLCookie = $.cookie('animations');

    if (animLCookie == 'disable') {

      $('#theme-animations').attr('href','');

      $('.enable-animations').removeClass('hidden');

      $('.disable-animations').addClass('hidden');

    }

});

  /* Close Sidebar */

$(function(){

  $('#close-sidebar').click(function(){

    $('#page-content-wrapper').animate({marginLeft: 0},300);

    $('body').addClass('close-sidebar');
    var closeSidebarCookie = $.cookie('closesidebar', 'close');
    $(this).addClass('hidden');
    $('#rm-close-sidebar').removeClass('hidden');

  });

  $('#rm-close-sidebar').click(function(){

    $('#page-content-wrapper').animate({marginLeft: 220},300);

    $('body').removeClass('close-sidebar');
    var closeSidebarCookie = $.cookie('closesidebar', 'rm-close');
    $(this).addClass('hidden');
    $('#close-sidebar').removeClass('hidden');

  });

  var sidebarCookie = $.cookie('closesidebar');

  if (sidebarCookie == 'close') {
    $('#close-sidebar').addClass('hidden');
    $('#rm-close-sidebar').removeClass('hidden');
    $('body').addClass('close-sidebar');
  }

});

});

 $(document).ready(function() {

    $('.choose-bg').click(function(){

        var boxedBg = $(this).attr('boxed-bg');

        $('body').css('background',boxedBg);

        var setBoxedBg = $.cookie('set-boxed-bg', boxedBg);

    });

    $('.change-layout-theme a').click(function(){

            var layoutTheme = $(this).attr('layout-theme');

            $('#loading').slideDown({
                complete: function(){

                    if ( layoutTheme != '' ) {

                        $("#layout-theme").attr("href","assets/themes/minified/fides/color-schemes/" + layoutTheme + ".min.css");

                        var setLayoutThemeCookie = $.cookie('set-layout-theme', layoutTheme);

                    }

                }
            });

            $('#loading').delay(1500).slideUp();

    });

 	themefromCookie();
 	bgFromCookie();

 });

 function themefromCookie(){

 	var layoutThemefromCookie = $.cookie('set-layout-theme');


 	if ( layoutThemefromCookie != null ) {

 		$("#layout-theme").attr("href","assets/themes/minified/fides/color-schemes/" + layoutThemefromCookie + ".min.css");

 	}

 };


 function bgFromCookie(){

 	var bgFromCookie = $.cookie('set-boxed-bg');

 	if ($('body').hasClass('boxed-layout')) {

 		$('body').css('background',bgFromCookie);

 	};

 };

 $(function() {

    $('.change-theme-btn').click(function(){

        $('.theme-customizer').animate({'right':'0'});

    });

	$('.theme-customizer .theme-wrapper').click(function(){

		$(this).parent().animate({'right':'-350'});

	});

});
$(document).ready(function(){

  /* Loading state button */

$(function() {

$('.loading-button')
  .click(function () {
      var btn = $(this)
      btn.button('loading')
      setTimeout(function () {
          btn.button('reset')
      }, 3000)
  });

});

  /* Toggle input */

$(function() {

    $(".toggle-switch").toggles();

});

  /* Multiselect inputs */

$(function() {

    $(".multi-select").multiSelect();
    $(".ms-container").append('<i class="glyph-icon icon-exchange"></i>');

});

  /* Input knobs */

$(function() {

    $(".input-knob").knob();

});

  /* Loading bar */

$(function() {

    $(".loadingbar-demo").loadingbar({
      done: function(data) {
        $.each( data.items, function( i, item ) {
          $( "<img/>" ).attr( "src", item.media.m ).prependTo( $("#frame") );
          if ( i === 2 ) {
            return false;
          }
        });
      }
    });

});

  /* Search input expander */

$(function() {

    $('#sidebar-search input')
      .focus(function() {
          $(this).stop().animate({width: 200}, 'slow');
      })
      .blur(function() {
          $(this).stop().animate({width: 100}, 'slow');
      });

});

  /* Form wizard */

  $(function() {
    $('#form-wizard').smartWizard({
      transitionEffect: 'slide',
    });
  });

  /* Sortable elements */

  $(function() {
    $( ".sortable-elements" ).sortable();
  });

  $(function() {
    $( ".column-sort" ).sortable({
      connectWith: ".column-sort"
    });
  });

  /* Todo sortable */

  $(function() {
    $( ".todo-sort" ).sortable({
      handle: ".sort-handle"
    });
  });

  /* jCrop plugin */

  $(function () {

      $('.jcrop-basic').Jcrop();

  });

  /* Textarea Autoresize */

  $(function () {

      $('.textarea-autosize').autosize();

  });


  /* Todo check toggle */

$(".todo-box li input").on('click', function() {

  $(this).parent().toggleClass('todo-done');

});

  /* Custom Scrollbar */

$(document).on('ready', function() {

    $(".scrollable-content").niceScroll({
      cursorborder: "transparent solid 2px",
      cursorwidth: "4",
      cursorcolor: "#363636",
      cursoropacitymax: "0.4",
      cursorborderradius: "2px"
    });

  });

$(document).on('ready', function() {

    $(".dataTables_scrollBody").niceScroll({
      cursorborder: "transparent solid 2px",
      cursorwidth: "4",
      cursorcolor: "#363636",
      cursoropacitymax: "0.4",
      cursorborderradius: "2px"
    });

  });

$(document).on('ready', function() {

    $(".scrollable-content").niceScroll({
      cursorborder: "transparent solid 2px",
      cursorwidth: "4",
      cursorcolor: "#363636",
      cursoropacitymax: "0.4",
      cursorborderradius: "2px"
    });

});

  /* Tooltips */

  $(function() {

    $('.tooltip-button').tooltip({
      container: 'body'
    });

  });

  /* Popovers */

  $(function() {

        $('.popover-button').popover({
          container: 'body',
          html : true,
          animation: true,
          content: function() {
            var dataID = $(this).attr('data-id');
            return $(dataID).html();
          }
        }).click(function(evt) {
          evt.preventDefault();
        });

  });

  $(function() {

        $('.popover-button-default').popover({
          container: 'body',
          html : true,
          animation: true
        }).click(function(evt) {
          evt.preventDefault();
        });
  });

  /* Noty */

$(function () {

var notes = [];

notes[''] = '<i class="glyph-icon icon-cog mrg5R"></i>This is a default notification message.';
notes['alert'] = '<i class="glyph-icon icon-cog mrg5R"></i>This is an alert notification message.';
notes['error'] = '<i class="glyph-icon icon-cog mrg5R"></i>This is an error notification message.';
notes['success'] = '<i class="glyph-icon icon-cog mrg5R"></i>You successfully read this important message.';
notes['information'] = '<i class="glyph-icon icon-cog mrg5R"></i>This is an information notification message!';
notes['notification'] = '<i class="glyph-icon icon-cog mrg5R"></i>This alert needs your attention, but it\'s for demonstration purposes only.';
notes['warning'] = '<i class="glyph-icon icon-cog mrg5R"></i>This is a warning for demonstration purposes.';


    $('.noty').click(function () {

        var self = $(this);


        noty({
            text        : notes[self.data('type')],
            type        : self.data('type'),
            dismissQueue: true,
            theme: 'agileUI',
            layout      : self.data('layout')
        });
        return false;
    });


});

  /* Colorpicker */

  $(function() {
    $('.colorpicker-position-bottom-left').minicolors(
        {
            animationSpeed: 100,
            change: null,
            changeDelay: 0,
            control: 'wheel',
            defaultValue: '',
            hide: null,
            hideSpeed: 100,
            inline: false,
            letterCase: 'lowercase',
            opacity: false,
            position: 'bottom left',
            show: null,
            showSpeed: 100,
            textfield: true,
            theme: 'default'
        });
    });

  $(function() {
    $('.colorpicker-position-bottom-right').minicolors(
        {
            animationSpeed: 100,
            change: null,
            changeDelay: 0,
            control: 'hue',
            defaultValue: '',
            hide: null,
            hideSpeed: 100,
            inline: false,
            letterCase: 'lowercase',
            opacity: false,
            position: 'bottom right',
            show: null,
            showSpeed: 100,
            textfield: true,
            theme: 'default'
        });
    });

  $(function() {
    $('.colorpicker-position-top-left').minicolors(
        {
            animationSpeed: 100,
            change: null,
            changeDelay: 0,
            control: 'saturation',
            defaultValue: '',
            hide: null,
            hideSpeed: 100,
            inline: false,
            letterCase: 'lowercase',
            opacity: true,
            position: 'top left',
            show: null,
            showSpeed: 100,
            textfield: true,
            theme: 'default'
        });
    });

  $(function() {
    $('.colorpicker-position-top-right').minicolors(
        {
            animationSpeed: 100,
            change: null,
            changeDelay: 0,
            control: 'brightness',
            defaultValue: '',
            hide: null,
            hideSpeed: 100,
            inline: false,
            letterCase: 'lowercase',
            opacity: true,
            position: 'top right',
            show: null,
            showSpeed: 100,
            textfield: true,
            theme: 'default'
        });
    });

  $(function() {
    $('.colorpicker-inline').minicolors(
        {
            animationSpeed: 100,
            change: null,
            changeDelay: 0,
            control: 'hue',
            defaultValue: '',
            hide: null,
            hideSpeed: 100,
            inline: true,
            letterCase: 'lowercase',
            opacity: true,
            position: 'bottom right',
            show: null,
            showSpeed: 100,
            textfield: true,
            theme: 'default'
        });
    });

  /* jGrowl notifications */

  $(function(){

    $('.growl-top-left').click(function(){

      $.jGrowl("Top left jGrowl notification with shadow and <b>.bg-black</b> background", { 
        sticky: false,
        position: 'top-left',
        theme: 'bg-black drop-shadow-alt'
      });

    });

    $('.growl-top-right').click(function(){

      $.jGrowl("Top right jGrowl notification with <b>.bg-azure</b> background", { 
        sticky: false,
        position: 'top-right',
        theme: 'bg-azure btn text-left'
      });

    });

    $('.growl-bottom-left').click(function(){

      $.jGrowl("Bottom left jGrowl notification with <b>.bg-red</b> background", { 
        sticky: false,
        position: 'bottom-right',
        theme: 'bg-red btn text-left'
      });

    });

    $('.growl-bottom-right').click(function(){

      $.jGrowl("Bottom right jGrowl notification with <b>.bg-blue-alt</b> background", { 
        sticky: false,
        position: 'bottom-left',
        theme: 'bg-blue-alt btn text-left'
      });

    });

    $('.growl-error').click(function(){

      $.jGrowl("This is just a growl example using our custom color helpers for styling.", { 
        sticky: false,
        position: 'top-right',
        theme: 'bg-red'
      });

    });

    $('.growl-basic').click(function(){

      $.jGrowl("This is just a growl example using our custom color helpers for styling.", { 
        sticky: false,
        position: 'bottom-right',
        theme: 'primary-bg'
      });

    });

    $('.growl-basic-secondary').click(function(){

      $.jGrowl("This is just a growl example using our custom color helpers for styling.", { 
        sticky: false,
        position: 'bottom-right',
        theme: 'ui-state-default'
      });

    });

    $('.growl-success').click(function(){

      $.jGrowl("This is just a growl example using our custom color helpers for styling.", { 
        sticky: false,
        position: 'top-right',
        theme: 'bg-green'
      });

    });

    $('.growl-warning').click(function(){

      $.jGrowl("This is just a growl example using our custom color helpers for styling.", { 
        sticky: false,
        position: 'bottom-right',
        theme: 'bg-orange'
      });

    });

    $('.growl-info').click(function(){

      $.jGrowl("This is just a growl example using our custom color helpers for styling.", { 
        sticky: false,
        position: 'top-right',
        theme: 'bg-gray'
      });

    });

    $('.growl-notice').click(function(){

      $.jGrowl("This is just a growl example using our custom color helpers for styling.", { 
        sticky: false,
        position: 'top-right',
        theme: 'bg-black'
      });

    });

  });

  /* jQuery UI Slider */

  $(function() {
    $( "#slider" ).slider({

    });
  });

  $(function() {
    $( "#horizontal-slider" ).slider({
      value: 40,
      orientation: "horizontal",
      range: "min",
      animate: true
    });
  });

  $(function() {
    $( "#slider-range-vertical" ).slider({
      orientation: "vertical",
      range: true,
      values: [ 17, 67 ],
      slide: function( event, ui ) {
        $( "#amount-vertical-range" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
      }
    });
    $( "#amount-vertical-range" ).val( "$" + $( "#slider-range-vertical" ).slider( "values", 0 ) +
      " - $" + $( "#slider-range-vertical" ).slider( "values", 1 ) );
  });

   $(function() {
      $( "#slider-range" ).slider({
        range: true,
        min: 0,
        max: 500,
        values: [ 75, 300 ],
        slide: function( event, ui ) {
          $( "#amount" ).val( "$" + ui.values[ 0 ] + " - $" + ui.values[ 1 ] );
        }
      });
      $( "#amount" ).val( "$" + $( "#slider-range" ).slider( "values", 0 ) +
        " - $" + $( "#slider-range" ).slider( "values", 1 ) );
    });

    $(function() {
      $( "#slider-vertical" ).slider({
        orientation: "vertical",
        range: "min",
        min: 0,
        max: 100,
        value: 60,
        slide: function( event, ui ) {
          $( "#amount3" ).val( ui.value );
        }
      });
      $( "#amount3" ).val( $( "#slider-vertical" ).slider( "value" ) );
    });

    $(function() {
        // setup master volume
        $( "#master" ).slider({
          value: 60,
          orientation: "horizontal",
          range: "min",
          animate: true
        });
        // setup graphic EQ
        $( "#eq > span" ).each(function() {
          // read initial values from markup and remove that
          var value = parseInt( $( this ).text(), 10 );
          $( this ).empty().slider({
            value: value,
            range: "min",
            animate: true,
            orientation: "vertical"
          });
        });
      });

  /* Sparklines charts */

  $(function() {

    $('.sparkbar').sparkline('html', {
      type: 'bar', 
      disableHiddenCheck: false, 
      width: '36px', 
      height: '36px'
    });

  });

  /* Modal Dialogs */

  $(function() {

    $( ".basic-dialog" ).click(function() {

      $( "#basic-dialog" ).dialog({
          resizable: true,
          minWidth: 400,
          minHeight: 350,
          modal: false,
          closeOnEscape: true,
          buttons: {
              "OK": function() {
                  $( this ).dialog( "close" );
              }
          },
          position: "center"
      });

    });

    $( ".white-modal-60" ).click(function() {
      $( "#white-modal-60" ).dialog({
        modal: true,
        minWidth: 500,
        minHeight: 200, 
        dialogClass: "", 
        show: "fadeIn" 
      });
      $('.ui-widget-overlay').addClass('bg-white opacity-60');
    });

    $( ".white-modal-80" ).click(function() {
      $( "#white-modal-80" ).dialog({
        modal: true,
        minWidth: 600,
        minHeight: 300, 
        dialogClass: "modal-dialog", 
        show: "fadeIn" 
      });
      $('.ui-widget-overlay').addClass('bg-white opacity-80');
    });

    $( ".black-modal-60" ).click(function() {
      $( "#black-modal-60" ).dialog({
        modal: true,
        minWidth: 500,
        minHeight: 200, 
        dialogClass: "modal-dialog", 
        show: "fadeIn" 
      });
      $('.ui-widget-overlay').addClass('bg-black opacity-60');
    });

    $( ".black-modal-80" ).click(function() {
      $( "#black-modal-80" ).dialog({
        modal: true,
        minWidth: 500,
        minHeight: 200, 
        dialogClass: "no-shadow", 
        show: "fadeIn" 
      });
      $('.ui-widget-overlay').addClass('bg-black opacity-80');
    });

    $( ".red-modal-60" ).click(function() {
      $( "#red-modal-60" ).dialog({
        modal: true,
        minWidth: 500,
        minHeight: 200, 
        dialogClass: "modal-dialog", 
        show: "fadeIn" 
      });
      $('.ui-widget-overlay').addClass('bg-red opacity-60');
    });

    $( ".dialog-tabs" ).click(function() {
      $( "#dialog-tabs" ).dialog({
        modal: false,
        minWidth: 650,
        minHeight: 200, 
        dialogClass: "modal-dialog",
        show: "fadeIn"
      });
      $('.ui-widget-overlay').addClass('bg-white opacity-60');

    });

  });

  /* jQuery UI Tabs */

  $(function() {
    $( ".tabs" ).tabs({

    });
  });

  $(function() {
    $( ".tabs-hover" ).tabs({
      event: "mouseover"
    });
  });

  /* jQuery UI Accordion */

  $(function() {
      $( ".accordion" ).accordion({
          heightStyle: "content"
      });
  });

  $(function() {
    $( "#accordion-hover" )
      .accordion({
        event: 'mouseover',
        heightStyle: 'auto'
      });
  });

  $(function() {
    $( "#accordion-with-tabs" )
      .accordion({
        active: 1,
        heightStyle: "content"
    });
  });

  /* jQuery UI Slider */

  $(function() {
    $( ".slider-demo" ).slider({

    });
  });

  /* jQuery UI Datepicker */

  $(function() {
    $( ".datepicker" ).datepicker();
  });

  $(function() {
    $( ".fromDate" ).datepicker({
      defaultDate: "+1w",
      changeMonth: true,
      numberOfMonths: 3,
      onClose: function( selectedDate ) {
        $( ".toDate" ).datepicker( "option", "minDate", selectedDate );
      }
    });
    $( ".toDate" ).datepicker({
      defaultDate: "+1w",
      changeMonth: true,
      numberOfMonths: 3,
      onClose: function( selectedDate ) {
        $( ".fromDate" ).datepicker( "option", "maxDate", selectedDate );
      }
    });
  });

  $(function() {
    $( "#datepicker2" ).datepicker({
      numberOfMonths: 3,
      showButtonPanel: true
    });
  });

    /* Datatables init */

    $(function() {

      $('#example1').dataTable( {
          "sScrollY": 300,
          "bJQueryUI": true,
          "sPaginationType": "full_numbers"
      });

      $('.dataTable .ui-icon-carat-2-n').addClass('icon-sort-up');
      $('.dataTable .ui-icon-carat-2-s').addClass('icon-sort-down');
      $('.dataTable .ui-icon-carat-2-n-s').addClass('icon-sort');

      $('.dataTables_paginate a.first').html('<i class="icon-caret-left"></i>');
      $('.dataTables_paginate a.previous').html('<i class="icon-angle-left"></i>');
      $('.dataTables_paginate a.last').html('<i class="icon-caret-right"></i>');
      $('.dataTables_paginate a.next').html('<i class="icon-angle-right"></i>');

    });

    /* jQuery UI Autocomplete */

    $(function() {
        var availableTags = [
            "ActionScript",
            "AppleScript",
            "Asp",
            "BASIC",
            "C",
            "C++",
            "Clojure",
            "COBOL",
            "ColdFusion",
            "Erlang",
            "Fortran",
            "Groovy",
            "Haskell",
            "Java",
            "JavaScript",
            "Lisp",
            "Perl",
            "PHP",
            "Python",
            "Ruby",
            "Scala",
            "Scheme"
        ];
        $( ".autocomplete-input" ).autocomplete({
            source: availableTags
        });
    });

  /* jQuery UI Autocomplete multiple values */

$(function() {
    var availableTags = [
      "ActionScript",
      "AppleScript",
      "Asp",
      "BASIC",
      "C",
      "C++",
      "Clojure",
      "COBOL",
      "ColdFusion",
      "Erlang",
      "Fortran",
      "Groovy",
      "Haskell",
      "Java",
      "JavaScript",
      "Lisp",
      "Perl",
      "PHP",
      "Python",
      "Ruby",
      "Scala",
      "Scheme"
    ];
    function split( val ) {
      return val.split( /,\s*/ );
    }
    function extractLast( term ) {
      return split( term ).pop();
    }
 
    $( "#sidebar-search input" )
      // don't navigate away from the field on tab when selecting an item
      .bind( "keydown", function( event ) {
        if ( event.keyCode === $.ui.keyCode.TAB &&
            $( this ).data( "ui-autocomplete" ).menu.active ) {
          event.preventDefault();
        }
      })
      .autocomplete({
        minLength: 0,
        source: function( request, response ) {
          // delegate back to autocomplete, but extract the last term
          response( $.ui.autocomplete.filter(
            availableTags, extractLast( request.term ) ) );
        },
        focus: function() {
          // prevent value inserted on focus
          return false;
        },
        select: function( event, ui ) {
          var terms = split( this.value );
          // remove the current input
          terms.pop();
          // add the selected item
          terms.push( ui.item.value );
          // add placeholder to get the comma-and-space at the end
          terms.push( "" );
          this.value = terms.join( ", " );
          return false;
        },
        messages: {
                noResults: '',
                results: function() {}
            }
      });
  });

  /* jQuery UI Datepicker */

  $(function() {
    $(".spinner-input" ).spinner();
  });

  /* Chosen Select */

    $(function () {

        $(".chosen-select").chosen();

        $(".chosen-search").append('<i class="glyph-icon icon-search"></i>');
        $(".chosen-single div").html('<i class="glyph-icon icon-caret-down"></i>');

    });

  /* Custom Inputs */

    $(function () {

      $('input[type="checkbox"].custom-checkbox').uniform();
      $('input[type="radio"].custom-radio').uniform();
      $('.custom-select').uniform();

      $(".selector").append('<i class="glyph-icon icon-caret-down"></i>');

      $('.checker span').append('<i class="glyph-icon icon-ok"></i>').addClass('ui-state-default btn radius-all-4');
      $('.radio span').append('<i class="glyph-icon icon-circle"></i>').addClass('ui-state-default btn radius-all-100');

    });

  /* Growl Notifications */

  $(function(){

    $('.growl-button').click(function(){

      $.jGrowl("A message with a header", { 
        header: 'Important',
        sticky: false,
        theme: 'bg-black'
      });

    });

  });

  /* Timepicker */

  $(function() {

    $('.timepicker').timepicker();

  });

});