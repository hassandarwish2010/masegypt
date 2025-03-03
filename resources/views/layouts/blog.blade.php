<section class="wpb_row vc_row-fluid vc_custom_1537418083669">
    <div class="container">
        <div class="row">
            <div class="text-center wpb_column vc_column_container vc_col-sm-12 vc_col-lg-offset-3 vc_col-lg-6 vc_col-md-offset-3 vc_col-md-6"><div class="vc_column-inner ">
                    <div class="wpb_wrapper "  >
                        <div class="wpb_text_column wpb_content_element  vc_custom_1537340417552" >
                            <div class="wpb_wrapper">
                                <h3 class="style-1"><span class="id-color"></span></h3>
                                <h2 class="style-5">@lang('site.latest_news')</h2>
                                {{--<p class="lead">Our commitment to quality and services ensure our clients happy. We&#8217;re happy to make you feel more comfortable on your home.</p>--}}

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @foreach($blogs as $new)
            <div class="wpb_column vc_column_container vc_col-sm-4">
                <div class="vc_column-inner ">
                    <div class="wpb_wrapper "  >
                        <div  class="wpb_single_image wpb_content_element vc_align_left  vc_custom_1537418241229">

                            <figure class="wpb_wrapper vc_figure">
                                <a class="fancybox" rel="group" href="{{ $new->full_image }}">
                                    <img src="{{ $new->image }}" class="img-responsive" alt="{{$new->en_title}}">
                                </a>
                            </figure>
                        </div>

                        <h3 class= "style-1 t-right"  ><a href="{{ route('new',['lang' => $lang,'permalink'=>$new->permalink]) }}">
                                @php $title = $lang.'_title';
                                     $details = $lang.'_details'
                                @endphp
                                {{$new->$title}}</a></h3>

                        <div class="wpb_text_column wpb_content_element " >
                            <div class="wpb_wrapper">
                                <p class="news-sty">{{  str_replace ('&nbsp;' , ' ' , clean_limit(strip_tags ($new->$details),200)) }}</p>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
           @endforeach

        </div>
        <div class="text-center wpb_column vc_column_container vc_col-sm-12">
            <div class="vc_column-inner ">
                <div class="wpb_wrapper "  >
                    <a href="{{ route('news', ['lang' => $lang]) }}" title="@lang('site.read_more')"  class="btn btn btn-custom w-color zero-space">@lang('site.read_more')</a>
                </div>
            </div>
        </div>
    </div>
    </div>
</section>