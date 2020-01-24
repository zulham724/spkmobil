@extends('layouts.vegefoods')
@section('content')
<div class="hero-wrap hero-bread" style="background-image: url({{  asset('vegefoods/files/suzuki-wallpaper.jpg') }});">
    <div class="w-100" style="background-color: rgba(0,0,0,.6);">
      <div class="row no-gutters slider-text align-items-center justify-content-center">
        <div class="col-md-9 ftco-animate text-center">
          <p class="breadcrumbs"><span><a href="{{  asset('vegefoods/index.php') }}">Home</a></span> > <span>Profil</span></p>
          <h1 class="mb-0 bread">Profil</h1>
        </div>
      </div>
    </div>
  </div>

  <section class="ftco-section contact-section bg-light">
    <div class="container">
      <div class="row">
        <div class="col-md-12 order-md-last d-flex">
          <div class="bg-white contact-form text-center">
            <div class="position-absolute m-2" style="right:1rem;">
              {{-- <a class="btn btn-sm btn-primary icon-pencil" href="#" data-toggle="modal" data-target="#profilModal" title="Edit Profil"></a> --}}
            </div>
          <img class="img-thumbnail my-3" width="200" src="/storage/{{Auth::user()->avatar}}">
            <p class="h3 text-uppercase">{{  Auth::user()->name }}</p>
            <p class="h3">{{  Auth::user()->email }}</p>
          </div>
        </div>
      </div>
      <div class="row d-flex my-5 contact-info">
        
      </div>
    </div>
  </section>

  <div class="modal" id="profilModal">
    <div class="modal-dialog modal-md">
      <div class="modal-content">
        <form id="form-profil" method="post" action="{{  asset('vegefoods/front/auth/process.php') }}" enctype="multipart/form-data">
          <!-- Modal Header -->
          <div class="modal-header">
            <h4 class="modal-title">EDIT PROFIL</h4>
            <button type="button" class="close" data-dismiss="modal">&times;</button>
          </div>
          <!-- Modal body -->
          <div class="modal-body">
            <div class="form-group mb-2">
              <label>Nama Lengkap</label>
              {{-- <input type="text" id="nama" name="nama" class="form-control form-control-sm" placeholder="Nama Lengkap" value="{{  $user['nama_user'] }}" required autofocus> --}}
            </div>
            <div class="form-group mb-2">
              <label>Email</label>
              {{-- <input type="email" id="email" name="email" class="form-control form-control-sm" placeholder="Email" value="{{  $user['email'] }}" required> --}}
            </div>
            <div class="form-group mb-2">
              <label>Password</label>
              <input type="password" id="password" name="password" class="form-control form-control-sm" placeholder="Password">
              <small>Kosongi jika tidak ingin mengganti password.</small>
            </div>
            <div class="form-group mb-2">
              <label>Foto</label>
              {{-- <input type="hidden" class="file-upload-base64" name="foto_src"> --}}
              {{-- <input type="file" name="file" class="file-upload-default" accept="image/*" style="display: none;"> --}}
              {{-- <img class="img-thumbnail mb-2 image-preview" src="{{  asset('vegefoods/uploads/user/'.$user['foto']) }}" style="max-height: 150px; {{  $user['foto'] == '' ? 'display:none' : 'display:block'; }}"> --}}
              <div class="input-group col-xs-12">
                {{-- <input type="text" class="form-control form-control-sm file-upload-info" id="foto" name="foto" value="{{  $user['foto'] }}" readonly placeholder="Foto Profil"> --}}
                <span class="input-group-append">
                  <button class="file-upload-browse btn btn-primary btn-xs" type="button">Upload</button>
                </span>
              </div>
            </div>
            <div class="form-group mb-2">
              <label>Alamat</label>
              {{-- <textarea class="form-control" name="alamat" id="alamat" placeholder="Alamat">{{  $user['alamat'] }}</textarea> --}}
            </div>
            <div class="form-group mb-2">
              <label>No Telp</label>
              {{-- <input type="text" id="no_telepon" name="no_telepon" class="form-control form-control-sm" placeholder="Nomor Telepon" value="{{  $user['no_telepon'] }}"> --}}
            </div>
            <div class="form-group mb-2">
              <label>No KTP</label>
              {{-- <input type="text" id="no_ktp" name="no_ktp" class="form-control form-control-sm" placeholder="Nomor KTP" value="{{  $user['no_ktp'] }}"> --}}
            </div>
          </div>
          <!-- Modal footer -->
          <div class="modal-footer">
            {{-- <input type="hidden" name="id" id="id" value="{{  $user['id_user'] }}"> --}}
            <input type="hidden" name="edit_profil" value="1">
            <button type="submit" id="submit-profil" class="btn btn-primary">Simpan</button>
          </div>
        </form>
      </div>
    </div>
  </div>
@endsection
