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

<div class="row">
  <div class="col col-md-6">
      <div class="white-box">
        <div class="form-group">
            <label for='en_title'>{{ __('lang.en_title') }}  </label>
            <div class="input-group">
                <div class="input-group-addon"><i class="fa fa-user"></i></div>
                <input type="text" class="form-control" id="title" placeholder="{{ __('lang.en_title') }}" name="en_title" value="@if(old('en_title') != null){{ old('en_title') }}@elseif(isset($image->en_title)){{$image->en_title}}@endif" >
            </div>
            <div class="input-group">
            @if ($errors->has('en_title'))
                <span class="help-block">
                    <strong>{{ $errors->first('en_title') }}</strong>
                </span>
            @endif
            </div>
        </div>
      </div>
  </div>
    <div class="col col-md-6">
        <div class="white-box">
            <div class="form-group">
                <label for='title'>{{ __('lang.ar_title') }} </label>
                <div class="input-group">
                    <div class="input-group-addon"><i class="fa fa-user"></i></div>
                    <input type="text" class="form-control" id="ar_title" placeholder="{{ __('lang.ar_title') }}" name="ar_title" value="@if(old('ar_title') != null){{ old('ar_title') }}@elseif(isset($image->ar_title)){{$image->ar_title}}@endif" >
                </div>
                <div class="input-group">
                    @if ($errors->has('ar_title'))
                        <span class="help-block">
                    <strong>{{ $errors->first('ar_title') }}</strong>
                </span>
                    @endif
                </div>
            </div>
        </div>
    </div>
</div>




<div class="row">
  <div class="col-md-12">
    <div class="white-space">
      <div class="form-group">
          <label for="main_image">befor image @isset($image) @else * @endisset</label>
          <div class="input-group">
              <div class="input-group-addon"><i class="ti-gallery"></i></div>
              <input type="file"  class="form-control" id="main_image" name="main_image">
          </div>
          @isset($image)
            <img src="{{ $image->main_image }}" alt="{{ $image->main_image }}" class="thumb-main_image " style='width: 100px;height: 100px'>
          @endisset
          <div class="input-group">
            @if ($errors->has('main_image'))
                <span class="help-block">
                    <strong>{{ $errors->first('main_image') }}</strong>
                </span>
            @endif
          </div>
      </div>
    </div>
  </div>
</div>

<div class="row">
    <div class="col-md-12">
        <div class="white-space">
            <div class="form-group">
                <label for="main_image">after image @isset($image) @else * @endisset</label>
                <div class="input-group">
                    <div class="input-group-addon"><i class="ti-gallery"></i></div>
                    <input type="file"  class="form-control" id="afterimage" name="afterimage">
                </div>
                @isset($image)
                    <img src="{{ $image->afterimage }}" alt="{{ $image->afterimage }}" class="thumb-main_image " style='width: 100px;height: 100px'>
                @endisset
                <div class="input-group">
                    @if ($errors->has('afterimage'))
                        <span class="help-block">
                    <strong>{{ $errors->first('afterimage') }}</strong>
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
          <label style="height:16px;"></label>
          <button type="submit" class="btn btn-success btn-block waves-effect waves-light mt-25">save</button>
      </div>
    </div>
  </div>
</div>
