@extends('layouts.layout')
@section('meta')
  <meta name="description" content="{{ $setting->description}}">
  <meta name="keywords" content="{{ $setting->keywords }}">

  <meta property="og:title" content="الرئيسية"/>
  <meta property="og:description" content="{{ $setting->description}}"/>

  <meta name="author" content="Typical Design">
@endsection
@section('css')
  <style>
    .contact_marge_bootom{
      margin-bottom: 40px;
    }
    .div_contact{
      padding-top: 45px;
      padding-bottom: 17px;
    }

  </style>

  @endsection
@section('js')

@endsection

@section('content')


<!-- Section: Have Any Question -->
{{--<section class="divider">--}}
  {{--<div class="container pt-60 pb-60">--}}
    {{--<div class="section-title mb-60">--}}
      {{--<div class="row">--}}
        {{--<div class="col-md-12">--}}
          {{--<div class="esc-heading small-border text-center">--}}
            {{--<h3>{{ __('lang.have_questions') }}</h3>--}}
          {{--</div>--}}
        {{--</div>--}}
      {{--</div>--}}
    {{--</div>--}}
    {{--<div class="section-content">--}}
      {{--<div class="row">--}}
        {{--@if(isset($setting->phone) && $setting->phone != null)--}}
        {{--<div class="col-sm-12 col-md-4">--}}
          {{--<div class="contact-info text-center">--}}
            {{--<i class="fa fa-phone font-36 mb-10 text-theme-colored"></i>--}}
            {{--<h4>{{ __('lang.call_us') }}</h4>--}}
            {{--<h6 class="text-gray d-ltr">{{ $setting->phone }}</h6>--}}
          {{--</div>--}}
        {{--</div>--}}
        {{--@endif--}}
        {{--@if(isset($setting->address) && $setting->address != null)--}}
        {{--<div class="col-sm-12 col-md-4">--}}
          {{--<div class="contact-info text-center">--}}
            {{--<i class="fa fa-map-marker font-36 mb-10 text-theme-colored"></i>--}}
            {{--<h4>{{ __('lang.address') }}</h4>--}}
            {{--<h6 class="text-gray">{{ $setting->address }}</h6>--}}
          {{--</div>--}}
        {{--</div>--}}
        {{--@endif--}}
        {{--@if(isset($setting->email) && $setting->email != null)--}}
        {{--<div class="col-sm-12 col-md-4">--}}
          {{--<div class="contact-info text-center">--}}
            {{--<i class="fa fa-envelope font-36 mb-10 text-theme-colored"></i>--}}
            {{--<h4>{{ __('lang.email') }}</h4>--}}
            {{--<h6 class="text-gray">{{ $setting->email }}</h6>--}}
          {{--</div>--}}
        {{--</div>--}}
        {{--@endif--}}
      {{--</div>--}}
    {{--</div>--}}
  {{--</div>--}}
{{--</section>--}}
<!-- subheader begin -->
<section id="subheader" data-speed="8" data-type="background" style="background-image: url('{{asset("public/td-content/uploads/sites/19/2017/06/subheader-3.jpg")}}');">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="row">
          <div class="col-md-12 contact_marge_bootom">
            <div class="">
              
            </div>
          </div>
        </div>
      </div>
      <div class="section-content">
        <div class="row">
          @if(isset($setting->phone) && $setting->phone != null)
            <div class="col-sm-12 col-md-4">
              <div class="contact-info text-center">
                <i class="fa fa-phone fa-2x text-theme-colored " ></i>
                <h3>{{ __('lang.call_us') }}</h3>
                <h3 class="text-gray d-ltr w-color">{{ $setting->phone }}</h3>
              </div>
            </div>
          @endif
          @if(isset($setting->address) && $setting->address != null)
            <div class="col-sm-12 col-md-4">
              <div class="contact-info text-center">
                <i class="fa fa-map-marker fa-2x mb-10 text-theme-colored"></i>
                <h3>{{ __('lang.address') }}</h3>
                <h3 class="text-gray w-color">{{ $setting->address }}</h3>
              </div>
            </div>
          @endif
          @if(isset($setting->email) && $setting->email != null)
            <div class="col-sm-12 col-md-4">
              <div class="contact-info text-center">
                <i class="fa fa-envelope fa-2x mb-10 text-theme-colored"></i>
                <h3>{{ __('lang.email') }}</h3>
                <h3 class="text-gray w-color">{{ $setting->email }}</h3>
              </div>
            </div>
          @endif

        </div>
      </div>
      </div>
    </div>
  </div>
</section>
<!-- subheader close -->
<section id="contact" class="contact-back">
    <div class="container-fluid pt-0 pb-0 contact-page">
      <div class="section-content">
        <div class="row">
          <div class="col-12 con">

            
            <h4 class="text-center "><b>@lang('site.contact')</b></h4>
            @if(app()->getLocale()=='en')
            {!! $setting->about_en !!}
            @elseif(app()->getLocale()=='fr')
            {!! $setting->about_fr !!}
            @elseif(app()->getLocale()=='ar')
            {!! $setting->about_ar !!}
            @endif
            <br><br>
          </div>
          
        </div>
      </div>
    </div>
    <br><br>
  </section>
  
<!-- Section Contact -->
<section id="contact" class="divider bg-lighter div_contact">
  <div class="container-fluid pt-0 pb-0">
    <div class="section-content">
      <div class="row">
        {{-- <div class="col-xs-0 col-sm-0 col-md-3"></div> --}}
        <div class="col-sm-12 col-md-6">
          <div class="contact-wrapper">
            <h3 class="line-bottom mt-0 mb-20">{{ __('lang.interested_discussing') }}</h3>
            <!-- Contact Form -->
            <div class="col-12">
              @if(session()->has('success_msg'))
                <div class="alert alert-success">
                  {{ session()->get('success_msg') }}
                </div>
              @endif

              @if(session()->has('error'))
                <div class="alert alert-danger">
                  {{ session()->get('error') }}
                </div>
              @endif
            </div>

            <form id="contact_form_contact" name="contact_form" action="{{ route('thanks', ['lang' => $lang]) }}" method="post">
            @csrf
              <div class="row">
                <div class="col-sm-6">
                  <div class="form-group">
                    <label for="name">{{ __('lang.name') }} <small>*</small></label>
                    <input name="name" class="form-control" type="text" placeholder="{{ __('lang.name') }}" required="required">
                    <div id="failed_contact_page_name" class="help-block"></div>
                  </div>
                </div>
                <div class="col-sm-6">
                  <div class="form-group">
                    <label for="email">{{ __('lang.email') }} <small>*</small></label>
                    <input name="email" class="form-control required email" type="email" placeholder="{{ __('lang.email') }}" required="required">
                    <div id="failed_contact_page_email" class="help-block"></div>
                  </div>
                </div>
              </div>
              <div class="form-group">
                <label for="details">@lang('site.message') *</label>
                <textarea name="details" class="form-control required" rows="5" placeholder="@lang('site.message')" required="required"></textarea>
                <div id="failed_contact_page_details" class="help-block"></div>
              </div>
             {{--  <div class="row">
                <div class="col-md-4"></div>
                <div class="form-group col-md-4">
                  <div class="captcha">
                    <span>{!! captcha_img() !!}</span>
                    <button type="button" class="btn btn-success"><i class="fa fa-refresh" id="refresh"></i></button>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-md-4"></div>
                <div class="form-group col-md-4">
                  <input id="captcha" type="text" required class="form-control" placeholder="Enter Captcha" name="captcha"></div>
              </div> --}}
               @include('web.contacts.captcha')
                            @if (session('contact_captcha'))
                                <span class="help-block" style="text-align:center">
                                        <strong style="color:#a94442">{{ session('contact_captcha') }}</strong>
                                    </span>
                            @endif
                            <br>
                           
                           

              <div class="form-group">
                <button type="submit" class="btn btn-success btn-theme-colored btn-flat mr-5" data-loading-text="Please wait...">@lang('site.send')</button>
                <button type="reset" class="btn btn-danger btn-flat btn-theme-colored ">{{ __('lang.reset') }}</button>
              </div>
            </form>
             @if(session('contact_errors'))

                                <span class="help-block" style="text-align:right">
                            @foreach (session('contact_errors') as $error)

                                        <strong style="color:#f00">{{ $error }}</strong><br>
                                    @endforeach
                            </span>
                            @elseif (session('contact_success'))
                                <label class="alert alert-success">تم إرسال رسالتك بنجاح , شكرا للتواصل</label>
                            @endif
          </div>
        </div>
       {{--  <div class="col-xs-0 col-sm-0 col-md-3"></div> --}}
       <div class="col-sm-12 col-md-6 bg-img-center bg-img-cover p-0">
            <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyA5HbN7RwGeBLCFVi8RmDDrOVysfZIs_Gk&callback=myMap"></script>

 <script>
  var lat = {{ $setting_lat }};
    var lon = {{ $setting_lon }};
var myCenter=new google.maps.LatLng(30.239687074386467 ,31.74597268902437);



function initialize()
{
  
var mapProp = {
  center:myCenter,
  zoom:16,
  mapTypeId:google.maps.MapTypeId.ROADMAP
  };

var map=new google.maps.Map(document.getElementById("googleMap"),mapProp);

var marker=new google.maps.Marker({
  position:myCenter,
  });

marker.setMap(map);

   
   
   

var infowindow = new google.maps.InfoWindow({
  content:"<div id='mapBox'><strong> {{ $setting->address }}  </strong> </div>"
  
 });
  

 
  
infowindow.open(map,marker);
 
google.maps.event.addListener(marker, 'click', function() {
  infowindow.open(map,marker);
  });
}

google.maps.event.addDomListener(window, 'load', initialize);


</script>

            <div id="googleMap" style="width:100%;height:500px;"></div>
          </div>

      </div>
    </div>
  </div>
</section>


@endsection

