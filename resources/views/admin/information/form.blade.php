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
@section('js')

    <script src="https://cdn.ckeditor.com/4.4.3/full/ckeditor.js"></script>
    <script>
        $(function () {
            // Replace the <textarea id="editor1"> with a CKEditor
            // instance, using default configuration.
            CKEDITOR.replace('editor1');
            CKEDITOR.replace('editor2');
        });
    </script>
@endsection
<div class="row">

    <div class="col col-md-6">
        <div class="white-box">
            <div class="form-group">
                <label for="en_title">{{ __('lang.en_title') }} *</label>
                <div class="input-group">
                    <div class="input-group-addon"><i class="fa fa-user"></i></div>
                    <input type="text" class="form-control" id="en_title" placeholder="{{ __('lang.en_title') }}" name="en_title" value="@if(old('en_title') != null){{ old('en_title') }}@elseif(isset($info)){{$info->en_title}}@endif" required="required">
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
                <label for="ar_title">{{ __('lang.ar_title') }} *</label>
                <div class="input-group">
                    <div class="input-group-addon"><i class="fa fa-user"></i></div>
                    <input type="text" class="form-control" id="en_title" placeholder="{{ __('lang.ar_title') }}" name="ar_title" value="@if(old('ar_title') != null){{ old('ar_title') }}@elseif(isset($info)){{$info->ar_title}}@endif" required="required">
                </div>
                <div class="input-group">
                    @if ($errors->has('en_title'))
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
    <div class="col col-md-6">
        <div class="white-box">
            <div class="form-group">
                <label for="number">{{ __('lang.number') }} *</label>
                <div class="input-group">
                    <div class="input-group-addon"><i class="fa fa-user"></i></div>
                    <input type="text" class="form-control" id="number" placeholder="{{ __('lang.number') }}" name="number" value="@if(old('number') != null){{ old('number') }}@elseif(isset($info)){{$info->number}}@endif" required="required">
                </div>
                <div class="input-group">
                    @if ($errors->has('number'))
                        <span class="help-block">
                    <strong>{{ $errors->first('number') }}</strong>
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
                <button type="submit" class="btn btn-success btn-block waves-effect waves-light mt-25">{{ __('lang.save') }}</button>
            </div>
        </div>
    </div>
</div>
