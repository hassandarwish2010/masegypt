@extends('layouts.layout')
@section('meta')


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

        </div>
      </div>
      </div>
    </div>
  </div>
</section>
<section id="contact" class="divider bg-lighter div_contact" >
  <div class="container-fluid pt-0 pb-0">
    <div class="section-content">
      <div class="row">
          <div class="col-xs-12 btn text-center thnk " >
             @lang('site.thanks')
          </div>
        </div>
      </div>
    </div>
  </section>
 

</div>

@endsection

