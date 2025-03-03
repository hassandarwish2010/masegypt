@extends('admin.layouts.layout')

@section('title')
  Edit image gallery
@endsection

@section('content')
<div class="row bg-title">
    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
        <h4 class="page-title">image gallery</h4>
    </div>
    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
      <ol class="breadcrumb">
        <li><a href="{{ route('admin.dashboard') }}">{{ __('lang.dashboard') }}</a></li>
        <li><a href="{{ route('images-gallery.index') }}">images gallery</a></li>
        <li class="active">image gallery</li>
      </ol>
    </div>
    <!-- /.col-lg-12 -->
</div>
<div class="row">
  <div class="col-sm-12">
      <div class="white-box">
        <div class="row adminform">
          <h3 class="box-title m-b-0">image gallery</h3>
          <form class="form-full-width" action="{{ route('images-gallery.update', $image->id) }}" method="post" enctype="multipart/form-data">
            @csrf
            {{ method_field('PUT') }}
            @include('admin/imagesgellery/form')
          </form>
        </div>
      </div>
  </div>
</div>
@endsection
