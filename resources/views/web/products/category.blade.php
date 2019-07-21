@extends('layouts.layout')
@php $name = $lang.'_name';
                
@endphp
@section('title')
{{ $cat->$name }}
@endsection

@section('meta')
    <meta name="description" content="{{ str_replace ('&nbsp;' , ' ' , strip_tags ( $cat->en_details)) }}">
    <meta name="keywords" content="{{ $cat->$name }}">

    <meta property="og:title" content="{{ $cat->$name }}"/>

    <meta property="og:description" content="{{ str_replace ('&nbsp;' , ' ' , strip_tags ( $cat->en_details)) }}"/>


@endsection
@section('css')
   {{--  <style>

        .title_cat{
            color: #fab72c;
            margin-top: 5px;
        }
        .des_style{
            line-height: 30px;
            color: #fff !important;
        }
        .border-div{
                border: 8px solid #fff;
        }
        @media all and (min-width:0px) and (max-width: 640px) {

        }
    </style> --}}

    @endsection
@section('content')

{{--============================--}}
<br>
{{--@include('layouts.projects')--}}
{{--<div class="pad_div"></div>--}}
@php $title = $lang.'_name';
                            $details= $lang.'_details';
                @endphp
<section id="subheader" data-speed="8" data-type="background" >
    <div class="container border-div">
        <div class="row">
            <div class="col-sm-4 col-xs-12">
               
                <a class="fancybox" rel="group" href="{{asset('public/uploads/'.$cat->image)}}">
                <img src="{{asset('public/uploads/thumbs/'.$cat->image)}}" class="img-responsive" alt="{{$cat->$title}}">
                </a>
            </div>
            <div class="col-sm-8 col-xs-12 w-color" >
                
                <h3 class=" title_cat">{{$cat->$title}}</h3>
                <p class="des_style">{!! $cat->$details !!}</p>
            </div>
                
        </div>
    </div>
</section>
<section class="wpb_row vc_row-fluid vc_custom_1537263094311 vc_row-has-fill no-padding">
    <div class="row">
        <div class="wpb_column vc_column_container vc_col-sm-12">
            <div class="vc_column-inner ">
                <div class="wpb_wrapper "  >
                     
                    <div class="grid" data-col="4" data-gridspace="10" data-ratio="466/700">

                        <div class="grid-item residential  none">
                            <!-- gallery item -->
                            @if(count($projects)>0)
                                @isset($projects[0])
                                    <div class="item residential ">
                                        <div class="picframe">
                                            <a class="" href="{{ route('product',['lang'=>$lang,'permalink'=>$projects[0]->permalink]) }}">
        	                        <span class="overlay">
        	                            <span class="pf_title">
        	                                <span class="project-name w-color">{{ $projects[0]->$name }}</span>
        	                            </span>
        	                        </span>
                                            </a>
                                            <img width="700" height="466" src="{{asset('public/uploads/thumbs/'.$projects[0]->image)}}"
                                                 class="attachment-full size-full wp-post-image" alt="{{ $projects[0]->$name }}" srcset="{{asset('public/uploads/thumbs/'.$projects[0]->image)}} 700w, {{asset('public/uploads/thumbs/'.$projects[0]->image)}} 300w"
                                                 sizes="(max-width: 700px) 100vw, 700px" />
                                        </div>
                                    </div>
                                    <!-- close gallery item -->
                                @endisset

                        </div>

                        <div class="grid-item hospitaly  large-width">
                            <!-- gallery item -->

                            @isset($projects[1])
                                <div class="item hospitaly ">
                                    <div class="picframe">
                                        <a class="" href="{{ route('product',['lang'=>$lang,'permalink'=>$projects[1]->permalink]) }}">
        	                        <span class="overlay">
        	                            <span class="pf_title">
        	                                <span class="project-name w-color">{{ $projects[1]->$name }}</span>
        	                            </span>
        	                        </span>
                                        </a>
                                        <img width="800" height="343" src="{{asset('public/uploads/thumbs3/'.$projects[1]->image3)}}"
                                             class="attachment-full size-full wp-post-image" alt="{{ $projects[1]->$name }}"
                                             srcset="{{asset('public/uploads/thumbs3/'.$projects[1]->image3)}} 800w, {{asset('public/uploads/thumbs3/'.$projects[1]->image3)}} 300w, {{asset('public/uploads/thumbs3/'.$projects[1]->image3)}} 768w" sizes="(max-width: 800px) 100vw, 800px" />
                                    </div>
                                </div>
                        @endisset

                        <!-- close gallery item -->
                        </div>

                        <div class="grid-item hospitaly  large-height">
                            <!-- gallery item -->

                            @isset($projects[2])

                                <div class="item hospitaly ">
                                    <div class="picframe">
                                        <a class="" href="{{ route('product',['lang'=>$lang,'permalink'=>$projects[2]->permalink]) }}">
        	                        <span class="overlay">
        	                            <span class="pf_title">
        	                                <span class="project-name w-color">{{ $projects[2]->$name }}</span>
        	                            </span>
        	                        </span>
                                        </a>
                                        <img width="300" height="466" src="{{asset('public/uploads/thumbs2/'.$projects[2]->image2)}}" class="attachment-full size-full wp-post-image" alt="{{ $projects[2]->$name }}" srcset="{{asset('public/uploads/thumbs2/'.$projects[2]->image2)}} 300w, {{asset('public/uploads/thumbs2/'.$projects[2]->image2)}} 193w" sizes="(max-width: 300px) 100vw, 300px" />
                                    </div>
                                </div>
                        @endisset


                        <!-- close gallery item -->
                        </div>

                        <div class="grid-item residential  none">
                            <!-- gallery item -->

                            @isset($projects[3])
                                <div class="item residential ">
                                    <div class="picframe">
                                        <a class="" href="{{ route('product',['lang'=>$lang,'permalink'=>$projects[3]->permalink]) }}">
        	                        <span class="overlay">
        	                            <span class="pf_title">
        	                                <span class="project-name w-color">{{ $projects[3]->$name }}</span>
        	                            </span>
        	                        </span>
                                        </a>
                                        <img width="700" height="466" src="{{asset('public/uploads/thumbs/'.$projects[3]->image)}} " class="attachment-full size-full wp-post-image" alt="{{ $projects[3]->$name }}" srcset="{{asset('public/uploads/thumbs/'.$projects[3]->image)}}  700w, {{asset('public/uploads/thumbs/'.$projects[3]->image)}}  300w" sizes="(max-width: 700px) 100vw, 700px" />
                                    </div>
                                </div>
                        @endisset

                        <!-- close gallery item -->
                        </div>

                        <div class="grid-item office  large-height">
                            <!-- gallery item -->

                            @isset($projects[4])
                                <div class="item office ">
                                    <div class="picframe">
                                        <a class="" href="{{ route('product',['lang'=>$lang,'permalink'=>$projects[4]->permalink]) }}">
        	                        <span class="overlay">
        	                            <span class="pf_title">
        	                                <span class="project-name w-color">{{ $projects[4]->$name }}</span>
        	                            </span>
        	                        </span>
                                        </a>
                                        <img width="700" height="466" src="{{asset('public/uploads/thumbs2/'.$projects[4]->image2)}}" class="attachment-full size-full wp-post-image" alt="{{ $projects[4]->$name }}" srcset="{{asset('public/uploads/thumbs2/'.$projects[4]->image2)}} 700w, {{asset('public/uploads/thumbs2/'.$projects[4]->image2)}} 300w" sizes="(max-width: 700px) 100vw, 700px" />
                                    </div>
                                </div>
                        @endisset

                        <!-- close gallery item -->
                        </div>

                        <div class="grid-item commercial  none">
                            <!-- gallery item -->

                            @isset($projects[5])
                                <div class="item commercial ">
                                    <div class="picframe">
                                        <a class="" href="{{ route('product',['lang'=>$lang,'permalink'=>$projects[5]->permalink]) }}">
        	                        <span class="overlay">
        	                            <span class="pf_title">
        	                                <span class="project-name w-color">{{ $projects[5]->$name }}</span>
        	                            </span>
        	                        </span>
                                        </a>
                                        <img width="700" height="466" src="{{asset('public/uploads/thumbs/'.$projects[5]->image)}}" class="attachment-full size-full wp-post-image" alt="{{ $projects[3]->$name }}" srcset="{{asset('public/uploads/thumbs/'.$projects[5]->image)}} 700w, {{asset('public/uploads/thumbs/'.$projects[5]->image)}} 300w" sizes="(max-width: 700px) 100vw, 700px" />							                </div>
                                </div>
                        @endisset

                        <!-- close gallery item -->
                        </div>

                        <div class="grid-item office  large-width">
                            <!-- gallery item -->

                            @isset($projects[6])
                                <div class="item office ">
                                    <div class="picframe">
                                        <a class="" href="{{ route('product',['lang'=>$lang,'permalink'=>$projects[6]->permalink]) }}">
        	                        <span class="overlay">
        	                            <span class="pf_title">
        	                                <span class="project-name w-color">{{ $projects[6]->$name }}</span>
        	                            </span>
        	                        </span>
                                        </a>
                                        <img width="800" height="343" src="{{asset('public/uploads/thumbs3/'.$projects[6]->image3)}}" class="attachment-full size-full wp-post-image" alt="{{ $projects[6]->$name }}" srcset="{{asset('public/uploads/thumbs3/'.$projects[6]->image3)}} 800w, {{asset('public/uploads/thumbs3/'.$projects[6]->image3)}} 300w, {{asset('public/uploads/thumbs3/'.$projects[6]->image3)}} 768w" sizes="(max-width: 800px) 100vw, 800px" />
                                    </div>
                                </div>
                        @endisset

                        <!-- close gallery item -->
                        </div>

                        <div class="grid-item residential  none">
                            <!-- gallery item -->

                            @isset($projects[7])
                                <div class="item residential ">
                                    <div class="picframe">
                                        <a class="" href="{{ route('product',['lang'=>$lang,'permalink'=>$projects[7]->permalink]) }}">
        	                        <span class="overlay">
        	                            <span class="pf_title">
        	                                <span class="project-name w-color">{{ $projects[7]->$name }}</span>
        	                            </span>
        	                        </span>
                                        </a>
                                        <img width="700" height="466" src="{{asset('public/uploads/thumbs/'.$projects[7]->image)}} " class="attachment-full size-full wp-post-image" alt="{{ $projects[7]->$name }}" srcset="{{asset('public/uploads/thumbs/'.$projects[7]->image)}}  700w, {{asset('public/uploads/thumbs/'.$projects[7]->image)}}  300w" sizes="(max-width: 700px) 100vw, 700px" />							                </div>
                                </div>
                        @endisset
                        @endif
                        <!-- close gallery item -->
                        </div>
                    </div>

                </div>
                {!! $projects->links() !!}
            </div>
        </div>
    </div>
</section>


@endsection
