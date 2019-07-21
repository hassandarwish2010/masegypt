@extends('layouts.layout')
@section('title')
  {{$about->en_name}}
@endsection


@section('meta')
    <meta name="description" content="{{ str_replace ('&nbsp;' , ' ' , strip_tags ( $about->description)) }}">
    <meta name="keywords" content="{{ $about->keywords }}">

    <meta property="og:title" content="{{ $about->en_name }}"/>

    <meta property="og:description" content="{{ str_replace ('&nbsp;' , ' ' , strip_tags ( $about->description)) }}"/>


@endsection


@section('content')
  <!-- subheader begin -->
  <section id="subheader" data-speed="8" data-type="background" style="background-image: url('{{asset("public/td-content/uploads/sites/19/2017/06/subheader-3.jpg")}}');">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
          <h1 class="t-center zero-space">@lang('site.about')</h1>
        </div>
      </div>
    </div>
  </section>
  <!-- subheader close -->


  <section class="wpb_row vc_row-fluid side-bg no-padding vc_custom_1474447060420 vc_row-has-fill ">
    <div class="row">
      <div class="wpb_column vc_column_container vc_col-sm-12  marg-t-30">
        <div class="vc_column-inner ">
          <div class="wpb_wrapper "  >
            <div class="side-bg">
              <div class="image-container pull-left col-md-5" style="background-image:url('{{asset('public/uploads/thumbs/'.$about->image)}}'); >" data-delay="0"></div>

              <div class="container">
                <div class="row">
                  <div class="inner-padding">
                    <div class="col-md-6 col-md-offset-6 wow fadeInRight" data-wow-delay=".2s">
                      @php $title = $lang.'_name';
                            $details= $lang.'_details';
                      @endphp
                      <h2>{{$about->$title}}</h2><br/>
                      <p>{!! $about->$details !!}</p>
                    <div class="clearfix"></div>
                  </div>
                </div>
              </div>
            </div>

          </div>
        </div>
      </div>
    </div>
    </div>
  </section>


@endsection
