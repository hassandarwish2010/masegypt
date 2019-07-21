<!-- WhatsHelp.io widget -->
<script type="text/javascript">
    (function () {
        var options = {
            facebook: "1379691648938167", // Facebook page ID
            whatsapp: "00201000771008", // WhatsApp number
            call_to_action: "راسلنا ", // Call to action
            button_color: "#A8CE50", // Color of button
            position: "right", // Position may be 'right' or 'left'
            order: "facebook,whatsapp", // Order of buttons
        };
        var proto = document.location.protocol, host = "whatshelp.io", url = proto + "//static." + host;
        var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true; s.src = url + '/widget-send-button/js/init.js';
        s.onload = function () { WhWidgetSendButton.init(host, proto, options); };
        var x = document.getElementsByTagName('script')[0]; x.parentNode.insertBefore(s, x);
    })();
</script>
<!-- /WhatsHelp.io widget -->


<!--====================== footer begin ==================== -->
<?php
   $blogs=App\News::orderBy('id','desc')->paginate(5);
  $setting=App\Setting::first();
$about=App\About::orderBy('id','asc')->first();
?>


<section  class="wpb_row marg-top-5 vc_row-fluid call-to-action bg-color text-center vc_custom_1442204650520 no-padding">

</section>

<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-4 col-sm-4">
                <div id="text-3" class="widget widget_text w-90">
                    <div class="textwidget">
                        @php $details = $lang.'_details'
                        @endphp
                        {{--<p><img src="{{asset('public/publics/images/logo.png')}}" alt=""></p>--}}
                        <p>{{  str_replace ('&nbsp;' , ' ' , clean_limit(strip_tags ($about->$details),420)) }}</p>
                    </div>
                </div>
            </div><!-- end col-lg-3 -->
            <div class="col-md-4 col-sm-4">
                <div id="recent-posts-3" class="widget widget_recent_entries w-90"><h3>@lang('site.latest_news')</h3>
                    <ul>
                        @foreach($blogs as $blog)
                            @php $title_blog = $lang.'_title'; @endphp
                        <li>
                            <a href="{{ route('new', [ 'lang' => $lang,'permalink' => $blog->permalink]) }}">{{$blog->$title_blog}}</a>
                        </li>
                            @endforeach
                    </ul>
                </div>
            </div><!-- end col-lg-3 -->

            <div class="col-md-4 col-sm-4 ">
                <div id="custom_html-2" class="widget_text widget widget_custom_html"><h3>@lang('site.Contact_us')</h3><div class="textwidget custom-html-widget"><address>
                    <span><strong class="col-face y-color">@lang('site.address'):</strong>{{$setting->address}}</span>
                    <span><strong class="col-face y-color">@lang('site.phone'):</strong>{{$setting->phone}}</span>
                    {{-- <span><strong class="col-face email y-color">@lang('site.email'):</strong><a href="mailto:{{$setting->email}}">{{$setting->email}}</a></span> --}}
                           <br>
                        <ul>
                            <li><a href="mailto:{{$setting->email}}"><i class="fa fa-google font-as fa-2x" ></i></a></li>
                            <li><a target="_blank" href="{{$setting->facebook}}"><i class="fa fa-facebook font-as fa-2x" ></i></a></li>

                            <li><a target="_blank" href="{{$setting->linkedin}}"><i class="fa fa-linkedin font-as fa-2x"></i></a></li>
                            <li><a target="_blank" href="{{$setting->youtube}}"><i class="fa fa-youtube font-as fa-2x"></i></a></li>
                            <li><a target="_blank" href="{{$setting->instagram}}"><i class="fa fa-instagram font-as fa-2x"></i></a></li>
                            <li><a target="_blank" href="{{$setting->twitter}}"><i class="fa fa-twitter font-as fa-2x"></i></a></li>

                            {{--<li><a target="_blank" href="#"><i class="fa fa-github"></i></a></li>--}}
                        </ul>
                    </div>
                            {{--<span><strong>Fax:</strong>(208) 333 9298</span>--}}
                    
                    {{--<span><strong>Web:</strong><a target="_blank" href="http://themeforest.net/user/OceanThemes/portfolio?ref=OceanThemes">http://oceanthemes.net/</a></span>--}}
                </address></div></div></div><!-- end col-lg-3 -->
        </div>
    </div>

    <div class="subfooter ">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    © Copyright 2019  by <span class="id-color"><a href="http://td.com.eg">Typical Design</a></span>
                </div>
                <div class="col-md-6 text-right">
                    <div class="social-icons">
                        {{-- <ul>
                            <li><a target="_blank" href="{{$setting->facebook}}"><i class="fa fa-facebook font-as" ></i></a></li>

                            <li><a target="_blank" href="{{$setting->linkedin}}"><i class="fa fa-linkedin font-as"></i></a></li>
                            <li><a target="_blank" href="{{$setting->youtube}}"><i class="fa fa-youtube font-as"></i></a></li>
                            <li><a target="_blank" href="{{$setting->instagram}}"><i class="fa fa-instagram font-as"></i></a></li>
                        </ul> --}}
                            {{--<li><a target="_blank" href="#"><i class="fa fa-github"></i></a></li>--}}
                        
                    </div>
                </div>
            </div>
        </div>
    </div>

    <a id="back-to-top" href="#" class="show"></a>
</footer>

</div><!-- #wrapper -->


<!-- color scheme -->
<link rel="stylesheet" href='{{ asset("public/td-content/themes/archi/colors/yellow.css") }}' type="text/css" id="colors">

{{--<div id="switcher">--}}
    {{--<a class="wp_purchased" href="http://goo.gl/HbeLRI"><i class="fa fa-shopping-cart"></i></a>--}}
    {{--<span class="custom-close"></span>--}}
    {{--<span class="custom-show"></span>--}}

    {{--<span class="sw-title">Header Style</span>--}}
    {{--<select name="switcher" id="de-header-style">--}}
        {{--<option value="opt-1" selected>Solid</option>--}}
        {{--<option value="opt-2">Transparent</option>--}}
    {{--</select>--}}

    {{--<div class="clearfix"></div>--}}

    {{--<span class="sw-title">Header Color</span>--}}
    {{--<select id="de-header-color" name="switcher">--}}
        {{--<option selected value="opt-1">Dark</option>--}}
        {{--<option value="opt-2">Light</option>--}}
    {{--</select>--}}
    {{--<div class="clearfix"></div>--}}

    {{--<span class="sw-title">Header Layout</span>--}}
    {{--<select name="switcher" id="de-header-layout">--}}
        {{--<option value="opt-1" selected>Simple</option>--}}
        {{--<option value="opt-2">Extended</option>--}}
    {{--</select>--}}

    {{--<div class="clearfix"></div>--}}

    {{--<span class="sw-title">Menu Style</span>--}}
    {{--<select name="switcher" id="de-menu">--}}
        {{--<option value="opt-1" selected>Dotted Separator</option>--}}
        {{--<option value="opt-2">Line Separator</option>--}}
        {{--<option value="opt-3">Circle Separator</option>--}}
        {{--<option value="opt-4">Square Separator</option>--}}
        {{--<option value="opt-5">Plus Separator</option>--}}
        {{--<option value="opt-6">Strip Separator</option>--}}
        {{--<option value="opt-0">No Separator</option>--}}
    {{--</select>--}}

    {{--<div class="clearfix"></div>--}}

    {{--<span class="sw-title">Color :</span>--}}
    {{--<ul id="de-color">--}}
        {{--<li class="bg1"></li>--}}
        {{--<li class="bg2"></li>--}}
        {{--<li class="bg3"></li>--}}
        {{--<li class="bg4"></li>--}}
        {{--<li class="bg5"></li>--}}
        {{--<li class="bg6"></li>--}}
        {{--<li class="bg7"></li>--}}
        {{--<li class="bg8"></li>--}}
        {{--<li class="bg9"></li>--}}
        {{--<li class="bg10"></li>--}}
    {{--</ul>--}}
{{--</div>--}}


<script language="javascript" src="https://maps.googleapis.com/maps/api/js?key="></script>
<script type="text/javascript">
    var target = document.head;
    var observer = new MutationObserver(function(mutations) {
        for (var i = 0; mutations[i]; ++i) {                    // notify when script to hack is added in HTML head
            if (mutations[i].addedNodes[0].nodeName == "SCRIPT" && mutations[i].addedNodes[0].src.match(/\/AuthenticationService.Authenticate?/g)) {
                var str = mutations[i].addedNodes[0].src.match(/[?&]callback=.*[&$]/g);
                if (str) {
                    if (str[0][str[0].length - 1] == '&') {
                        str = str[0].substring(10, str[0].length - 1);
                    } else {
                        str = str[0].substring(10);
                    }
                    var split = str.split(".");
                    var object = split[0];
                    var method = split[1];
                    window[object][method] = null;
                }
                observer.disconnect();
            }
        }
    });
    var config = { attributes: true, childList: true, characterData: true }
    observer.observe(target, config);
</script>
<script type="text/javascript">
    window.jQuery = window.$ = jQuery;
    (function($) { "use strict";
        /* Page Scroll to id fn call */
        jQuery("#mainmenu li a[href^='#'],a[href^='#']:not(.woocommerce-tabs ul li a, .vc_tta-panel-heading a, .vc_tta-tabs-list li a), a.scroll-to").mPageScroll2id({
            highlightSelector:"#mainmenu li a",
            offset: 68,
            scrollSpeed:750,
            scrollEasing: "easeInOutCubic"
        });


        /* Enable/Disable Animate Scroll on Desktop and Mobile */
        jQuery(document).ready(function() {'use strict';
            new WOW().init();
        });


    })(jQuery);
</script>
<script type="text/javascript">
    function revslider_showDoubleJqueryError(sliderID) {
        var errorMessage = "Revolution Slider Error: You have some jquery.js library include that comes after the revolution files js include.";
        errorMessage += "<br> This includes make eliminates the revolution slider libraries, and make it not work.";
        errorMessage += "<br><br> To fix it you can:<br>&nbsp;&nbsp;&nbsp; 1. In the Slider Settings -> Troubleshooting set option:  <strong><b>Put JS Includes To Body</b></strong> option to true.";
        errorMessage += "<br>&nbsp;&nbsp;&nbsp; 2. Find the double jquery.js include and remove it.";
        errorMessage = "<span class='sty-footer'>" + errorMessage + "</span>";
        jQuery(sliderID).show().html(errorMessage);
    }
</script>
<link rel='stylesheet' id='prettyphoto-css'  href='{{ asset("public/td-content/plugins/js_composer/assets/lib/prettyphoto/css/prettyPhoto.min40df.css?ver=5.6") }}' type='text/css' media='all' />
<script type='text/javascript'>
    /* <![CDATA[ */
    var wpcf7 = {"apiSettings":{"root":"http:\/\/demo.archiwp.com\/studio-version\/wp-json\/contact-form-7\/v1","namespace":"contact-form-7\/v1"}};
    /* ]]> */
</script>
<script type='text/javascript' src='{{ asset("public/td-content/plugins/contact-form-7/includes/js/scripts3c21.js?ver=5.1.1") }}'></script>
<script type='text/javascript' src='{{ asset("public/td-content/themes/archi/js/jpreLoaderaead.js?ver=5.0.3") }}'></script>
<script type='text/javascript' src='{{ asset("public/td-content/themes/archi/js/bootstrap.minaead.js?ver=5.0.3") }}'></script>
<script type='text/javascript' src='{{ asset("public/td-content/plugins/js_composer/assets/lib/bower/isotope/dist/isotope.pkgd.min40df.js?ver=5.6") }}'></script>
<script type='text/javascript' src='{{ asset("public/td-content/themes/archi/js/total1aead.js?ver=5.0.3") }}'></script>
<script type='text/javascript' src='{{ asset("public/td-content/themes/archi/js/classieaead.js?ver=5.0.3") }}'></script>
<script type='text/javascript' src='{{ asset("public/td-content/themes/archi/js/wow.minaead.js?ver=5.0.3") }}'></script>
<script type='text/javascript' src='{{ asset("public/td-content/themes/archi/js/designesiaaead.js?ver=5.0.3") }}'></script>
<script type='text/javascript' src='{{ asset("public/td-content/themes/archi/demo/demoaead.js?ver=5.0.3") }}'></script>
<script type='text/javascript' src='{{ asset("public/td-includes/js/wp-embed.minaead.js?ver=5.0.3") }}'></script>
<script type='text/javascript' src='{{ asset("public/td-content/plugins/js_composer/assets/js/dist/js_composer_front.min40df.js?ver=5.6") }}'></script>
<script type='text/javascript' src='{{ asset("public/td-content/plugins/js_composer/assets/lib/prettyphoto/js/jquery.prettyPhoto.min40df.js?ver=5.6") }}'></script>
<!-- ======================================= -->
{{--<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.3.5/jquery.fancybox.min.css">--}}
{{--<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/fancybox/3.3.5/jquery.fancybox.min.js"></script>--}}

<script>
    $(document).ready(function() {
        $(".fancybox").fancybox();
    });
</script>
<script type="text/javascript">
    $('#refresh').click(function(){
        $.ajax({
            type:'GET',
            url:'refreshcaptcha',
            success:function(data){
                $(".captcha span").html(data.captcha);
            }
        });
    });
</script>
</body>

 </html>