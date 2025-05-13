@extends('layouts.app')

@section('content')
<div class="row">
    <div class="col-12">
        <div class="card">
            <div class="card-header">
                <h3 class="card-title">Data Laporan</h3>

                <div class="card-tools">

                </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body table-responsive">
                <form method="get" action="/laporan/pilih" target="_blank">
                    @csrf

                    <select class="form-control" name="jenis" required>
                        <option value="">-jenis laporan-</option>
                        <option value="1">Profil</option>
                        <option value="2">Rencana Kegiatan</option>
                        <option value="3">Prestasi</option>
                        <option value="4">Monitoring</option>
                    </select>
                    <br />
                    <button type="submit" class="btn btn-flat btn-sm btn-primary"><i class="fa fa-print"></i>
                        Print</button>

                </form>

            </div>
            <!-- /.card-body -->
        </div>
    </div>
</div>

@endsection