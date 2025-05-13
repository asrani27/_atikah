<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Laporan</title>
</head>

<body>

    <table width="100%">
        <tr>
            <td width="15%">
                <img src="data:image/jpeg;base64,{{ base64_encode(file_get_contents(public_path('logo/min.png'))) }}"
                    width="100px">
            </td>
            <td style="text-align: center;" width="60%">

                <font size="24px"><b>MADRASAH ALIYAH NEGERI 3 (MAN) HULU SUNGAI TENGAH<br />
                    </b></font>
                JL Gerilya Hasan Baseri Rt 6 Rw 2, Kel Birayang Kec. Batang Alai Selatan Kab Hulu Sungai tengah
                Kalimantan Selatan, 71831
            </td>
            <td width="15%">
            </td>
        </tr>
    </table>
    <hr>
    <h3 style="text-align: center">LAPORAN DATA RENCANA KEGIATAN
    </h3>
    <br />
    <table width="100%" border="1" cellpadding="5" cellspacing="0">
        <tr>
            <th>No</th>
            <th>Tgl Kegiatan</th>
            <th>Nama Kegiatan</th>
            <th>Tingkat</th>
            <th>Siswa</th>
            <th>Organisasi</th>
            <th>Penyelenggara</th>
            <th>Biaya</th>
            <th>Target</th>
            <th>Keterangan</th>
        </tr>
        @php
        $no =1;
        @endphp

        @foreach ($data as $key => $item)
        <tr>
            <td>{{$key + 1}}</td>
            <td>{{\Carbon\Carbon::parse($item->tanggal)->format('d M Y')}}</td>
            <td>{{$item->nama}}</td>
            <td>{{$item->tingkat}}</td>
            <td>{{$item->siswa == null ? '' : $item->siswa->nama}}</td>
            <td>{{$item->organisasi == null ? '' : $item->organisasi->nama}}</td>
            <td>{{$item->penyelenggara}}</td>
            <td>{{$item->biaya}}</td>
            <td>{{$item->target}}</td>
            <td>{{$item->keterangan}}</td>
        </tr>
        @endforeach
    </table>

    <table width="100%">
        <tr>
            <td width="60%"></td>
            <td></td>
            <td><br />Barabai, {{\Carbon\Carbon::now()->translatedFormat('d F Y')}}<br />
                Kepala Sekolah MAN 3 HST<br /><br /><br /><br />

                <u>-</u><br />
                NIP.xxxxxxxxx
            </td>
        </tr>
    </table>
</body>

</html>