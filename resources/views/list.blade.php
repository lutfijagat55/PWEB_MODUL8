@extends('adminLayout/index')
@section('content')
<div class="container">
<div class="row">
tabel mahasiswa
<table class="table table-striped table-dark">
    <thead>
      <tr>
        <th scope="col">#</th>
        <th scope="col">npm</th>
        <th scope="col">name</th>
        <th scope="col">class</th>
        <th scope="col">organization</th>
        <th scope="col">alamat</th>
        <th>Action</th>
      </tr>
    </thead>
    <tbody>
        @foreach ($mahasiswa as $item)
        <tr>
        <th scope="row">{{$loop->iteration}}</th>
            <td>{{$item->npm}}</td>
            <td>{{$item->name}}</td>
            <td>{{$item->class}}</td>
            <td>{{$item->organization->name}}</td>
            <td>{{$item->alamat}}</td>
            <td><a href="/list/detaill/{{$item->slug}}" class="btn btn-primary btn-sm">edit</a></td>
            <td>
              <form action="/list/delete/{{$item->slug}}" method="POST">
              @method('delete')
              @csrf
              <button type="submit" class="btn btn-danger btn-sm">delete</button>
              </form>
            </td>
        </tr>         
        @endforeach
    </tbody>
  </table>
</div>
  <div class="row">
    <a href="/createmhs" class="btn btn-success btn-sm">create</a>
  </div>
    <div class="row">
        {{$mahasiswa->links('adminLayout.pagination')}}
    </div>
  </div>
@endsection