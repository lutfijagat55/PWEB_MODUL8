@extends('adminLayout/index')
@section('content')
<div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Form Tambah Data Mahasiswa</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form role="form" method="POST" action="/store">
              @csrf
                <div class="card-body">
                  <div class="form-group">
                    <label for="exampleInputEmail1">NPM</label>
                    <input type="text" class="form-control" id="npm" name="npm" >
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Name</label>
                    <input type="text" class="form-control" id="name" name="name" >
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Slug</label>
                    <input type="text" class="form-control" id="name" name="slug" >
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Class</label>
                    <input type="text" class="form-control" id="class" name="class">
                  </div>
                  <div class="form-group">
                    <label for="exampleInputEmail1">Address</label>
                    <input type="text" class="form-control" id="alamat" name="alamat">
                  </div>
                  <div class="form-group">
                        <label>Pilih Organisasi</label>
                        <select class="custom-select" id="organization_id" name="organization_id">
                            <option value="0">tidak berorganisasi</option>
                            @foreach ($org as $item)
                            <option value="{{$item->id}}">{{$item->name}}</option>
                            @endforeach
                        </select>
                      </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="submit" class="btn btn-primary">Submit</button>
                </div>
              </form>
            </div>
            <!-- /.card -->
@endsection