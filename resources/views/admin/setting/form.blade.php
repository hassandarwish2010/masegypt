@if(session()->has('success'))
    <div class="alert alert-success">
        {{ session()->get('success') }}
    </div>
@endif

@if(session()->has('error'))
    <div class="alert alert-danger">
        {{ session()->get('error') }}
    </div>
@endif

@section('css')
    <link rel="stylesheet" type="text/css" href="{{asset('public/admin/css/jquery-gmaps-latlon-picker.css')}}"/>
@endsection

@section('js')
<script src="https://cdn.ckeditor.com/4.4.3/standard/ckeditor.js"></script>
<script>
  $(function () {
    // Replace the <textarea id="editor1"> with a CKEditor
    // instance, using default configuration.
    CKEDITOR.replace('editor1');
    CKEDITOR.replace('editor2');
    
  });
</script>
    <script src="http://maps.googleapis.com/maps/api/js?sensor=false&key=AIzaSyA5HbN7RwGeBLCFVi8RmDDrOVysfZIs_Gk"></script>
    <script src="{{asset('public/admin/js/jquery-gmaps-latlon-picker.js')}}"></script>
    <script>
        $(document).ready(function() {
            // Copy the init code from "jquery-gmaps-latlon-picker.js" and extend it here
            $(".gllpLatlonPicker").each(function() {
                $obj = $(document).gMapsLatLonPicker();

                $obj.params.strings.markerText = "Drag this Marker (example edit)";

                $obj.params.displayError = function(message) {
                    console.log("MAPS ERROR: " + message); // instead of alert()
                };

                $obj.init( $(this) );
            });
        });
        $('input.gllpSearchField').keypress(function(e) {
            if(e.which == 13) {
                $('input.gllpSearchButton').click();
                console.log("pressed");
                return false;
            }
        });
    </script>
@endsection

<div class="row">
    <div class="col col-md-6">
        <div class="white-box">
            <div class="form-group">
                <label for="phone">{{ __('lang.phone') }}</label>
                <div class="input-group">
                    <div class="input-group-addon"><i class="fa fa-mobile"></i></div>
                    <input type="text" class="form-control" id="phone" placeholder="{{ __('lang.phone') }}" name="phone" value="@if(old('phone') != null){{ old('phone') }}@elseif(isset($setting)){{$setting->phone}}@endif">
                </div>
                <div class="input-group">
                    @if ($errors->has('phone'))
                        <span class="help-block">
                    <strong>{{ $errors->first('phone') }}</strong>
                </span>
                    @endif
                </div>
            </div>
        </div>
    </div>

    <div class="col col-md-6">
        <div class="white-box">
            <div class="form-group">
                <label for="email">{{ __('lang.email') }}</label>
                <div class="input-group">
                    <div class="input-group-addon"><i class="fa fa-envelope"></i></div>
                    <input type="text" class="form-control" id="email" placeholder="{{ __('lang.email') }}" name="email" value="@if(old('email') != null){{ old('email') }}@elseif(isset($setting)){{$setting->email}}@endif">
                </div>
                <div class="input-group">
                    @if ($errors->has('email'))
                        <span class="help-block">
                    <strong>{{ $errors->first('email') }}</strong>
                </span>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col col-md-6">
        <div class="white-box">
            <div class="form-group">
                <label for="phone">{{ __('lang.address') }}</label>
                <div class="input-group">
                    <div class="input-group-addon"><i class="fa fa-map-marker"></i></div>
                    <input type="text" class="form-control" id="address" placeholder="{{ __('lang.address') }}" name="address" value="@if(old('address') != null){{ old('address') }}@elseif(isset($setting)){{$setting->address}}@endif">
                </div>
                <div class="input-group">
                    @if ($errors->has('address'))
                        <span class="help-block">
                    <strong>{{ $errors->first('address') }}</strong>
                </span>
                    @endif
                </div>
            </div>
        </div>
    </div>

    <div class="col col-md-6">
        <div class="white-box">
            <div class="form-group">
                <label for="phone">{{ __('lang.twitter') }}</label>
                <div class="input-group">
                    <div class="input-group-addon"><i class="fa fa-twitter"></i></div>
                    <input type="text" class="form-control" id="twitter" placeholder="{{ __('lang.twitter') }}" name="twitter" value="@if(old('address') != null){{ old('twitter') }}@elseif(isset($setting)){{$setting->twitter}}@endif">
                </div>
                <div class="input-group">
                    @if ($errors->has('twitter'))
                        <span class="help-block">
                    <strong>{{ $errors->first('twitter') }}</strong>
                </span>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col col-md-6">
        <div class="white-box">
            <div class="form-group">
                <label for="phone">{{ __('lang.facebook') }}</label>
                <div class="input-group">
                    <div class="input-group-addon"><i class="fa fa-facebook"></i></div>
                    <input type="text" class="form-control" id="facebook" placeholder="{{ __('lang.facebook') }}" name="facebook" value="@if(old('facebook') != null){{ old('facebook') }}@elseif(isset($setting)){{$setting->facebook}}@endif">
                </div>
                <div class="input-group">
                    @if ($errors->has('facebook'))
                        <span class="help-block">
                    <strong>{{ $errors->first('facebook') }}</strong>
                </span>
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div class="col col-md-6">
        <div class="white-box">
            <div class="form-group">
                <label for="youtube">{{ __('lang.youtube') }}</label>
                <div class="input-group">
                    <div class="input-group-addon"><i class="fa fa-youtube"></i></div>
                    <input type="text" class="form-control" id="youtube" placeholder="{{ __('lang.youtube') }}" name="youtube" value="@if(old('youtube') != null){{ old('youtube') }}@elseif(isset($setting)){{$setting->youtube}}@endif">
                </div>
                <div class="input-group">
                    @if ($errors->has('youtube'))
                        <span class="help-block">
                    <strong>{{ $errors->first('youtube') }}</strong>
                </span>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col col-md-6">
        <div class="white-box">
            <div class="form-group">
                <label for="phone">{{ __('lang.instagram') }}</label>
                <div class="input-group">
                    <div class="input-group-addon"><i class="fa fa-instagram"></i></div>
                    <input type="text" class="form-control" id="instagram" placeholder="{{ __('lang.instagram') }}" name="instagram" value="@if(old('twitter') != null){{ old('instagram') }}@elseif(isset($setting)){{$setting->instagram}}@endif">
                </div>
                <div class="input-group">
                    @if ($errors->has('instagram'))
                        <span class="help-block">
                    <strong>{{ $errors->first('instagram') }}</strong>
                </span>
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div class="col col-md-6">
        <div class="white-box">
            <div class="form-group">
                <label for="linkedin">linkedin</label>
                <div class="input-group">
                    <div class="input-group-addon"><i class="fa fa-linkedin"></i></div>
                    <input type="text" class="form-control" id="linkedin" placeholder="{{ __('lang.linkedin') }}" name="linkedin" value="@if(old('linkedin') != null){{ old('linkedin') }}@elseif(isset($setting)){{$setting->linkedin}}@endif">
                </div>
                <div class="input-group">
                    @if ($errors->has('linkedin'))
                        <span class="help-block">
                    <strong>{{ $errors->first('linkedin') }}</strong>
                </span>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col col-md-6">
        <div class="white-box">
            <div class="form-group">
                <label for="phone">{{ __('lang.titleCat_en') }}</label>
                <div class="input-group">
                    <div class="input-group-addon"><i class=""></i></div>
                    <input type="text" class="form-control" id="twitter" placeholder="{{ __('lang.titleCat_en') }}" name="titleCat_en" value="@if(old('titleCat_en') != null){{ old('titleCat_en') }}@elseif(isset($setting)){{$setting->titleCat_en}}@endif">
                </div>
                <div class="input-group">
                    @if ($errors->has('titleCat_en'))
                        <span class="help-block">
                    <strong>{{ $errors->first('titleCat_en') }}</strong>
                </span>
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div class="col col-md-6">
        <div class="white-box">
            <div class="form-group">
                <label for="phone">{{ __('lang.titleCat_ar') }}</label>
                <div class="input-group">
                    <div class="input-group-addon"><i class=""></i></div>
                    <input type="text" class="form-control" id="twitter" placeholder="{{ __('lang.titleCat_ar') }}" name="titleCat_ar" value="@if(old('titleCat_ar') != null){{ old('titleCat_ar') }}@elseif(isset($setting)){{$setting->titleCat_ar}}@endif">
                </div>
                <div class="input-group">
                    @if ($errors->has('titleCat_ar'))
                        <span class="help-block">
                    <strong>{{ $errors->first('titleCat_ar') }}</strong>
                </span>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col col-md-6">
        <div class="white-box">
            <div class="form-group">
                <label for="titleBAfter_en">{{ __('lang.titleBAfter_en') }}</label>
                <div class="input-group">
                    <div class="input-group-addon"><i class=""></i></div>
                    <input type="text" class="form-control" id="titleBAfter_en" placeholder="{{ __('lang.titleBAfter_en') }}" name="titleBAfter_en" value="@if(old('titleBAfter_en') != null){{ old('titleBAfter_en') }}@elseif(isset($setting)){{$setting->titleBAfter_en}}@endif">
                </div>
                <div class="input-group">
                    @if ($errors->has('titleBAfter_en'))
                        <span class="help-block">
                    <strong>{{ $errors->first('titleBAfter_en') }}</strong>
                </span>
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div class="col col-md-6">
        <div class="white-box">
            <div class="form-group">
                <label for="titleBAfter_ar">{{ __('lang.titleBAfter_ar') }}</label>
                <div class="input-group">
                    <div class="input-group-addon"><i class=""></i></div>
                    <input type="text" class="form-control" id="titleBAfter_ar" placeholder="{{ __('lang.titleBAfter_ar') }}" name="titleBAfter_ar" value="@if(old('titleBAfter_ar') != null){{ old('titleBAfter_ar') }}@elseif(isset($setting)){{$setting->titleBAfter_ar}}@endif">
                </div>
                <div class="input-group">
                    @if ($errors->has('titleBAfter_ar'))
                        <span class="help-block">
                    <strong>{{ $errors->first('titleBAfter_ar') }}</strong>
                </span>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col col-md-6">
        <div class="white-box">
            <div class="form-group">
                <label for="titleDiscover_en">{{ __('lang.titleDiscover_en') }}</label>
                <div class="input-group">
                    <div class="input-group-addon"><i class=""></i></div>
                    <input type="text" class="form-control" id="titleDiscover_en" placeholder="{{ __('lang.titleDiscover_en') }}" name="titleDiscover_en" value="@if(old('titleDiscover_en') != null){{ old('titleDiscover_en') }}@elseif(isset($setting)){{$setting->titleDiscover_en}}@endif">
                </div>
                <div class="input-group">
                    @if ($errors->has('titleDiscover_en'))
                        <span class="help-block">
                    <strong>{{ $errors->first('titleDiscover_en') }}</strong>
                </span>
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div class="col col-md-6">
        <div class="white-box">
            <div class="form-group">
                <label for="titleDiscover_ar">{{ __('lang.titleDiscover_ar') }}</label>
                <div class="input-group">
                    <div class="input-group-addon"><i class=""></i></div>
                    <input type="text" class="form-control" id="titleDiscover_ar" placeholder="{{ __('lang.titleDiscover_ar') }}" name="titleDiscover_ar" value="@if(old('titleDiscover_ar') != null){{ old('titleDiscover_ar') }}@elseif(isset($setting)){{$setting->titleDiscover_ar}}@endif">
                </div>
                <div class="input-group">
                    @if ($errors->has('titleDiscover_ar'))
                        <span class="help-block">
                    <strong>{{ $errors->first('titleDiscover_ar') }}</strong>
                </span>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col col-md-6">
        <div class="white-box">
            <div class="form-group">
                <label for="titleprocess_en">{{ __('lang.titleprocess_en') }}</label>
                <div class="input-group">
                    <div class="input-group-addon"><i class=""></i></div>
                    <input type="text" class="form-control" id="titleprocess" placeholder="{{ __('lang.titleprocess_en') }}" name="titleprocess_en" value="@if(old('titleprocess_en') != null){{ old('titleprocess_en') }}@elseif(isset($setting)){{$setting->titleprocess_en}}@endif">
                </div>
                <div class="input-group">
                    @if ($errors->has('titleprocess_en'))
                        <span class="help-block">
                    <strong>{{ $errors->first('titleprocess_en') }}</strong>
                </span>
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div class="col col-md-6">
        <div class="white-box">
            <div class="form-group">
                <label for="titleprocess_ar">{{ __('lang.titleprocess_ar') }}</label>
                <div class="input-group">
                    <div class="input-group-addon"><i class=""></i></div>
                    <input type="text" class="form-control" id="titleprocess_ar" placeholder="{{ __('lang.titleprocess_ar') }}" name="titleprocess_ar" value="@if(old('titleprocess_ar') != null){{ old('titleprocess_ar') }}@elseif(isset($setting)){{$setting->titleprocess_ar}}@endif">
                </div>
                <div class="input-group">
                    @if ($errors->has('titleprocess_ar'))
                        <span class="help-block">
                    <strong>{{ $errors->first('titleprocess_ar') }}</strong>
                </span>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>



<div class="row">
  <div class="col-md-12">
      <div class="white-box">
          <div class="row">
              <div class="col-sm-12 col-xs-12">
                <label for="about_en">{{ __('lang.about_en') }} *</label>
                <textarea id="editor1" name="about_en" rows="4" class="form-control" style="resize:vertical;width:100%;" placeholder="{{ __('lang.about_en') }}">@if(old('about_en') != null){{ old('about_en') }}@elseif(isset($setting->about_en)){{$setting->about_en}}@endif</textarea>
                @if ($errors->has('about_en'))
                    <span class="help-block">
                        <strong>{{ $errors->first('about_en') }}</strong>
                    </span>
                @endif
              </div>
          </div>
      </div>
  </div>
</div>

<div class="row">
  <div class="col-md-12">
      <div class="white-box">
          <div class="row">
              <div class="col-sm-12 col-xs-12">
                <label for="about_ar">{{ __('lang.about_ar') }} *</label>
                <textarea id="editor2" name="about_ar" rows="4" class="form-control" style="resize:vertical;width:100%;" placeholder="{{ __('lang.about_ar') }}">@if(old('about_ar') != null){{ old('about_ar') }}@elseif(isset($setting->about_ar)){{$setting->about_ar}}@endif</textarea>
                @if ($errors->has('about_ar'))
                    <span class="help-block">
                        <strong>{{ $errors->first('about_ar') }}</strong>
                    </span>
                @endif
              </div>
          </div>
      </div>
  </div>
</div>



<div class="row">
    <div class="col col-md-12">
        <div class="white-box">
            <div class="form-group">
                <label for="location">{{ __('lang.location') }}</label>
                <div class="input-group">
                    <fieldset class="gllpLatlonPicker" style="width:100%;">
                        <div>
                            <input type="text" class="gllpSearchField" style="color:black; width:70%; float:left" placeholder="Search for address">
                            <input type="button" class="gllpSearchButton btn btn-primary" value="Search for address" style="padding: 2px 15px; vertical-align: none;float:right;margin-right:1%">
                        </div>
                        <div class="gllpMap" style="margin-top:50px;">Google Maps</div>
                        <input type="hidden" class="gllpLatitude" value="@if(old('lat') != null){{ old('lat') }}@elseif(isset($setting->lat)){{$setting->lat}}@else 30.04 @endif" name="lat"/>
                        <input type="hidden" class="gllpLongitude" value="@if(old('lon') != null){{ old('lon') }}@elseif(isset($setting->lon)){{$setting->lon}}@else 31.24 @endif" name="lon"/>
                        <input type="hidden" class="gllpZoom" value="18"/>
                    </fieldset>
                </div>
                <div class="input-group">
                    @if ($errors->has('lat'))
                        <span class="help-block">
                    <strong>{{ $errors->first('lat') }}</strong>
                </span>
                    @endif

                    @if ($errors->has('lon'))
                        <span class="help-block">
                    <strong>{{ $errors->first('lon') }}</strong>
                </span>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
{{--<div class="row">--}}
    {{--<div class="seo col-sm-12">--}}
        {{--<h1>SEO INFO</h1>--}}
        {{--<button type="button" class="btn btn-primary" onclick="loadEnSeoInfo();return false;" style="display: block;margin: 20px auto;">Generate SEO Info</button>--}}
    {{--</div>--}}
{{--</div>--}}

<div class="row">
    <div class="col col-md-6">
        <div class="white-box">
            <div class="form-group">
                <label for="permalink">{{ __('lang.permalink') }} *</label>
                <div class="input-group">
                    <div class="input-group-addon"><i class="fa fa-user"></i></div>
                    <input type="text" class="form-control" id="permalink" placeholder="{{ __('lang.permalink') }}" name="permalink" value="@if(old('permalink') != null){{ old('permalink') }}@elseif(isset($setting)){{$setting->permalink}}@endif" required="required">
                </div>
                <div class="input-group">
                    @if ($errors->has('permalink'))
                        <span class="help-block">
                    <strong>{{ $errors->first('permalink') }}</strong>
                </span>
                    @endif
                </div>
            </div>
        </div>
    </div>
    <div class="col col-md-6">
        <div class="white-box">
            <div class="form-group">
                <label for="keywords">{{ __('lang.keywords') }} *</label>
                <div class="input-group">
                    <div class="input-group-addon"><i class="fa fa-user"></i></div>
                    <input type="text" class="form-control" id="keywords" placeholder="{{ __('lang.keywords') }}" name="keywords" value="@if(old('keywords') != null){{ old('keywords') }}@elseif(isset($setting)){{$setting->keywords}}@endif" required="required">
                </div>
                <div class="input-group">
                    @if ($errors->has('keywords'))
                        <span class="help-block">
                    <strong>{{ $errors->first('keywords') }}</strong>
                </span>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="white-box">
            <div class="row">
                <div class="col-sm-12 col-xs-12">
                    <label for="description">{{ __('lang.description') }} *</label>
                    <textarea name="description" rows="8" class="form-control" style="resize:vertical;width:100%;" placeholder="{{ __('lang.description') }}">@if(old('description') != null){{ old('description') }}@elseif(isset($setting->description)){{$setting->description}}@endif</textarea>
                    @if ($errors->has('description'))
                        <span class="help-block">
                        <strong>{{ $errors->first('description') }}</strong>
                    </span>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>
<div class="row">
    <div class="col col-md-12">
        <div class="white-box">
            <div class="form-group">
                <button type="submit" class="btn btn-success btn-block waves-effect waves-light mt-25">{{ __('lang.save') }}</button>
            </div>
        </div>
    </div>
</div>
