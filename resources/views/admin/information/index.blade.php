@extends('admin.layouts.layout')

@section('title', 'information')

@include('admin/layouts/datatable')

@section('content')
<div class="row bg-title">
    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
        <h4 class="page-title">information</h4>
    </div>
    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
      <ol class="breadcrumb">
        <li><a href="{{ route('admin.dashboard') }}">dashboard</a></li>
        <li class="active">information</li>
      </ol>
    </div>
    <!-- /.col-lg-12 -->
</div>
<div class="row">
  <div class="col-12">
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
  </div>
</div>
<div class="row">
  <div class="col-sm-12">
      <div class="white-box">
          <a class="box-title m-b-1 btn btn-info btn-rounded" href="{{ route('information.create') }}"> add new</a>
          <div class="table-responsive">
              <table id="table" class="display nowrap" cellspacing="0" width="100%">
                  <thead>
                      <tr>
                          <th>#</th>
                          <th>ar_name</th>
                          <th>en_name</th>
                          <th>number</th>
                          <th>actions</th>
                      </tr>
                  </thead>
                  <tfoot>
                      <tr>
                        <th>#</th>
                          <th>ar_name</th>
                          <th>en_name</th>
                        <th>number</th>
                        <th>actions</th>
                      </tr>
                  </tfoot>
                  <tbody>
                    @foreach($information as $info)
                      <tr>
                          <td>{{ $loop->iteration }}</td>
                          <td>{{ $info->ar_title }}</td>
                          <td>{{ $info->en_title }}</td>
                          <td>{{ $info->number }}</td>
                          <td class="text-nowrap">
                              <a href="{{ route('information.edit', $info->id) }}" data-toggle="tooltip" data-original-title="Edit"> <i class="fa fa-pencil text-inverse m-r-10"></i> </a>
                              <a href="javascript:void(0)" class="delete_confirmation" data-toggle="modal" data-target="#myModal" data-action="{{ route('information.destroy', $info->id) }}">
                                 <i class="fa fa-close text-danger"></i>
                               </a>
                          </td>
                      </tr>
                    @endforeach
                  </tbody>
              </table>
          </div>
      </div>
  </div>
</div>
@include('admin.partials.confirm_modal')
@endsection
