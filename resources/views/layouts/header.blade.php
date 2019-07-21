<!-- header begin -->
<?php
$cats=App\Category::orderBy('id','desc')->get();
$abouts=App\About::orderBy('id','desc')->get();
?>


@if($lang=='en')
<header class="" >

    <!-- top header close -->
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12 sty-div-top">

                    <ul class="ul-sty">
                            <li><i class="fa fa-phone font-as fa-2x col-whaite">{{$setting->phone}}</i></li>

                            <li><a target="_blank" href="{{$setting->facebook}}"><i class="fa fa-facebook font-as fa-2x col-whaite" ></i></a></li>

                            <li><a target="_blank" href="{{$setting->linkedin}}"><i class="fa fa-linkedin font-as fa-2x col-whaite"></i></a></li>
                            <li><a target="_blank" href="{{$setting->youtube}}"><i class="fa fa-youtube font-as fa-2x col-whaite"></i></a></li>
                            <li><a target="_blank" href="{{$setting->instagram}}"><i class="fa fa-instagram font-as fa-2x col-whaite"></i></a></li>
                            <li><a target="_blank" href="{{$setting->twitter}}"><i class="fa fa-twitter font-as fa-2x col-whaite"></i></a></li>
                         

                            {{--<li><a target="_blank" href="#"><i class="fa fa-github"></i></a></li>--}}
                        </ul>
                
            </div>
        </div>
    </div>

    <div class="container-fluid style-logo" >
        <div class="row">
            <div class="col-md-1"></div>
            <div class="col-md-10 min-marg">
                {{-- <strong class="col-face y-color">@lang('site.phone'):</strong><b>{{$setting->phone}}</b> --}}
                <div id="logo">
                    <!-- Edit code for demo here "template-functions.php" and "header.php" files. -->
                    <a href="">
                        <img class="logo-static" src="{{asset('public/publics/images/logo.png')}}" alt="mkdesigns">
                        <img class="logo-scroll" src="{{asset('public/publics/images/logo.png')}}" alt="mkdesigns">
                        <img class="logo-dark" src="{{asset('public/publics/images/logo.png')}}" alt="mkdesigns">
                    </a>
                </div>
                <span id="menu-btn"></span>
                <!-- mainmenu begin -->
                <nav>
                    <ul id="mainmenu" >
                        <li id="menu-item-773" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-631 current_page_item menu-item-773 active"><a  title="Home fo-wight" href="{{ route('landing', $lang) }}">@lang('site.home')</a></li>
                        <li id="menu-item-775" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-775 "><a  title="@lang('site.about')" href="">@lang('site.about') <span class="caret"></span></a>
                            <ul role="menu" class=" dropdown-menu">
                                @foreach($abouts as $about)
                                    <li id="menu-item-777" class="menu-item menu-item-type-post_type menu-item-object-Projects menu-item-777"><a class="font-s-14" title="{{$about->en_name}}" href="{{ route('about', ['lang' => $lang, 'permalink' => $about->permalink]) }}">{{$about->en_name}}</a></li>
                                @endforeach
                            </ul>
                        </li>
                        <li id="menu-item-775" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-775 "><a  title="@lang('site.projects')" href="">@lang('site.projects') <span class="caret"></span></a>
                            <ul role="menu" class=" dropdown-menu">
                                 @foreach($cats as $cat)
                                <li id="menu-item-777" class="menu-item menu-item-type-post_type menu-item-object-Projects menu-item-777"><a  class="font-s-14" title="{{$cat->en_name}}" href="{{ route('cats',['lang' => $lang,'id'=>$cat->id]) }}">{{$cat->en_name}}</a></li>
                                  @endforeach
                            </ul>
                        </li>
                        <li id="menu-item-761" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-761"><a  title="@lang('site.blog')" href="{{ route('news', ['lang' => $lang]) }}">@lang('site.blog')</a></li>
                        <li id="menu-item-776" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-776"><a  title="@lang('site.contact')" href="{{ route('contact', ['lang' => $lang]) }}">@lang('site.contact')</a></li>
                        <li id="menu-item-775" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-775 "><a  title="@lang('site.language')" href="">@lang('site.language')<span class="caret"></span></a>
                            <ul role="menu" class=" dropdown-menu">

                                <li><a class="font-s-14" href="{{ route('set.language', 'en') }}"> @lang('site.english') </a></li>
                                <li><a class="font-s-14" href="{{ route('set.language', 'ar') }}">  @lang('site.arabic') </a></li>
                            </ul>
                        </li>
                    </ul>
                </nav>
            </div>
            <div class="col-md-1"></div>

            <!-- mainmenu close -->
        </div>
    </div>
</header>
@else

    <header class="">

        <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12 sty-div-top">

                            <ul class="ul-sty">
                                   <li><i class="fa fa-phone font-as fa-2x pull-right col-whaite">{{$setting->phone}}</i></li>

                                    <li><a target="_blank" href="{{$setting->facebook}}"><i class="fa fa-facebook font-as fa-2x col-whaite pull-right" ></i></a></li>

                                    <li><a target="_blank" href="{{$setting->linkedin}}"><i class="fa fa-linkedin font-as fa-2x col-whaite pull-right"></i></a></li>
                                    <li><a target="_blank" href="{{$setting->youtube}}"><i class="fa fa-youtube font-as fa-2x col-whaite pull-right"></i></a></li>
                                    <li><a target="_blank" href="{{$setting->instagram}}"><i class="fa fa-instagram font-as fa-2x col-whaite pull-right"></i></a></li>
                                    <li><a target="_blank" href="{{$setting->twitter}}"><i class="fa fa-twitter font-as fa-2x col-whaite pull-right"></i></a></li>
                                 

                                    {{--<li><a target="_blank" href="#"><i class="fa fa-github"></i></a></li>--}}
                                </ul>
                        
                    </div>
                </div>
            </div>
        <div class="container-fluid style-logo" >
            <div class="row">
                <div class="col-md-1"></div>
                <div class="col-md-10 min-marg">
                    {{-- <strong class="col-face y-color">@lang('site.phone'):</strong><b>{{$setting->phone}}</b> --}}
                    <div id="logo">
                        <!-- Edit code for demo here "template-functions.php" and "header.php" files. -->
                        <a href="{{ route('landing', $lang) }}">
                            <img class="logo-static" src="{{asset('public/publics/images/logo.png')}}" alt="mkdesigns">
                            <img class="logo-scroll" src="{{asset('public/publics/images/logo.png')}}" alt="mkdesigns">
                            <img class="logo-dark" src="{{asset('public/publics/images/logo.png')}}" alt="mkdesigns">
                        </a>
                    </div>
                    <span id="menu-btn"></span>
                    <!-- mainmenu begin -->
                    <nav>
                        <ul id="mainmenu" >
                            <li id="menu-item-775" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-775 "><a  title="@lang('site.language')" href="">@lang('site.language')<span class="caret"></span></a>
                                <ul role="menu" class=" dropdown-menu">

                                    <li><a class="font-s-14" href="{{ route('set.language', 'en') }}"> @lang('site.english') </a></li>
                                    <li><a class="font-s-14" href="{{ route('set.language', 'ar') }}">  @lang('site.arabic') </a></li>
                                </ul>
                            </li>
                            <li id="menu-item-776" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-776"><a  title="@lang('site.contact')" href="{{ route('contact', ['lang' => $lang]) }}">@lang('site.contact')</a></li>
                            <li id="menu-item-761" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-761"><a  title="@lang('site.blog')" href="{{ route('news', ['lang' => $lang]) }}">@lang('site.blog')</a></li>
                            <li id="menu-item-775" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-775 "><a  title="@lang('site.projects')" href="">@lang('site.projects') <span class="caret"></span></a>
                                <ul role="menu" class=" dropdown-menu">
                                    @foreach($cats as $cat)
                                        <li id="menu-item-777" class="menu-item menu-item-type-post_type menu-item-object-Projects menu-item-777 t-right"><a class="font-s-14" title="{{$cat->ar_name}}" href="{{ route('cats',['lang' => $lang,'id'=>$cat->id]) }}">{{$cat->ar_name}}</a></li>
                                    @endforeach
                                </ul>
                            </li>
                            <li id="menu-item-775" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-has-children menu-item-775 "><a  title="@lang('site.about')" href="">@lang('site.about') <span class="caret"></span></a>
                                <ul role="menu" class=" dropdown-menu">
                                    @foreach($abouts as $about)
                                        <li id="menu-item-777" class="menu-item menu-item-type-post_type menu-item-object-Projects menu-item-777 t-right"><a class="font-s-14" title="{{$about->ar_name}}" href="{{ route('about', ['lang' => $lang, 'permalink' => $about->permalink]) }}">{{$about->ar_name}}</a></li>
                                    @endforeach
                                </ul>
                            </li>
                            <li id="menu-item-773" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-home current-menu-item page_item page-item-631 current_page_item menu-item-773 active"><a  title="@lang('site.home')" href="{{ route('landing', $lang) }}">@lang('site.home')</a></li>
                        </ul>
                    </nav>
                </div>
                <div class="col-md-1"></div>
                <!-- mainmenu close -->
            </div>
        </div>
    </header>
@endif
<!-- header close -->