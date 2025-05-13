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
    <h3 style="text-align: center">LAPORAN DATA PRESTASI
    </h3>
    <br />
    <table width="100%" border="1" cellpadding="5" cellspacing="0">
        <tr>
            <th>No</th>
            <th>Nama Kegiatan</th>
            <th>Prestasi Diperoleh</th>
            <th>Keterangan</th>
        </tr>
        @php
        $no =1;
        @endphp

        @foreach ($data as $key => $item)
        <tr>
            <td>{{$key + 1}}</td>
            <td>{{$item->rencana == null ? '' : $item->rencana->nama}}</td>
            <td>{{$item->prestasi}}</td>
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