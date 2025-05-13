@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Data siswa</h3>

                <div class="card-tools">
                    <a href="/superadmin/siswa/add" class='btn btn-sm btn-info'>Tambah Data</a>
                </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body table-responsive">
                <table class="table table-hover text-nowrap table-sm table-bordered">
                    <thead class="bg-info">
                        <tr>
                            <th>No</th>
                            <th>NIS</th>
                            <th>Nama</th>
                            <th>Tempat Lahir</th>
                            <th>Tanggal Lahir</th>
                            <th>Jkel</th>
                            <th>Telp</th>
                            <th>Nama Ayah</th>
                            <th>Nama ibu</th>
                            <th>Aksi</th>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($data as $key => $item)
                        <tr style="font-size:14px">
                            <td>{{$key + 1}}</td>
                            <td>{{$item->nis}}</td>
                            <td>{{$item->nama}}</td>
                            <td>{{$item->tempat_lahir}}</td>
                            <td>{{\Carbon\Carbon::parse($item->tanggal_lahir)->format('d M Y')}}</td>
                            <td>{{$item->jkel == 'L' ? 'laki-laki': 'perempuan'}}</td>
                            <td>{{$item->telp}}</td>
                            <td>{{$item->ayah}}</td>
                            <td>{{$item->ibu}}</td>
                            <td class="text-right">
                                <a href="/superadmin/siswa/edit/{{$item->id}}" class="btn btn-sm btn-success"><i
                                        class="fa fa-edit"></i></a>
                                <a href="/superadmin/siswa/delete/{{$item->id}}" class="btn btn-sm btn-danger"
                                    onclick="return confirm('Yakin ingin dihapus?');"><i class="fa fa-trash"></i></a>
                            </td>
                        </tr>
                        @endforeach

                    </tbody>
                </table>
            </div>
            <!-- /.card-body -->
        </div>
    </div>
</div>

@endsection