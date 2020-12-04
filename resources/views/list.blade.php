@extends('adminLayout/index')
@section('content')
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
      </tr>
    </thead>
    <tbody>
        @foreach ($mahasiswa as $item)
        <tr>
        <th scope="row">{{$loop->iteration}}</th>
            <td>{{$item->npm}}</td>
            <td>{{$item->name}}</td>
            <td>{{$item->class}}</td>
            <td>{{$item->organization}}</td>
            <td>{{$item->alamat}}</td>
            
          </tr>         
        @endforeach
    </tbody>
  </table>
@endsection