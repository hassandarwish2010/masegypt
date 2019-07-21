@extends('layouts.layout')
@section('title')
Home
@endsection


@section('meta')
    <meta property="og:title" content="الرئيسية"/>
    <meta property="og:description" content="{{ $setting->description}}"/>

    <meta name="author" content="Typical Design">
    <meta name="keywords" content="{{ $setting->keywords }}">


@endsection
@section('content')
    @include('layouts.slider')
    @include('layouts.category')
    @include('layouts.bafter')
    @include('layouts.informations')
    @include('layouts.projects')

    @include('layouts.blog')


    {{--@include('layouts.informations')--}}
    @include('layouts.discover')
    @include('layouts.gitform')
    @include('layouts.progress')
@endsection
