<?php
$arr=['id-color icon-paintbrush','id-color icon-trophy','id-color icon-chat','id-color icon-wallet',
    'id-color icon-envelope','id-color icon-recycle'
    ]
?>

<section class="wpb_row vc_row-fluid vc_custom_1537425075455 vc_row-has-fill">
    <div class="container">
        <div class="row">
            <div class="text-center wpb_column vc_column_container vc_col-sm-12 vc_col-lg-offset-3 vc_col-lg-6 vc_col-md-offset-3 vc_col-md-6"><div class="vc_column-inner ">
                    <div class="wpb_wrapper "  >
                        <div class="wpb_text_column wpb_content_element  vc_custom_1537340417552" >
                            <div class="wpb_wrapper">
                                @php $titleDiscover ='titleDiscover_'.$lang; @endphp
                                <h2 class="style-5 w-color zero-space"  >{{$setting->$titleDiscover}}</h2>
                                {{--<p class="lead">Our commitment to quality and services ensure our clients happy. We&#8217;re happy to make you feel more comfortable on your home.</p>--}}

                            </div>
                        </div>
                    </div>
                </div>
            </div>
            @if(count($discovers)>0)
            @foreach($discovers as $index=>$discover)
            <div class="wpb_column vc_column_container vc_col-sm-4">
                <div class="vc_column-inner ">
                    <div class="wpb_wrapper "  >
                        <div class="vc_custom_1537424389922 box-icon ">
{{--                            {{}}--}}
							<span class="icon " >
								<i class="{{$arr[$index]}} w-color f-s-30 ar-font font-icon"  ></i>
							</span>

                            <div class="text">
                                @php $title = $lang.'_title';
                                     $details = $lang.'_details'
                                @endphp
                                <h3 class="mar-70 w-color">{{$discover->$title}}</h3>
                                <p class="w-color mar-70">{{  str_replace ('&nbsp;' , ' ' , clean_limit(strip_tags ($discover->$details),120)) }}</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
           @endforeach
                @endif
        </div>
    </div>
</section>