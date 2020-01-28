<html lang="en">

<head>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/css/bootstrap.min.css" rel="stylesheet">
</head>

<body>
    <main role="main" class="container">
        <div class="row">
            <div class="col-12">
                <h3 class="text-center">Laporan Data Penduduk</h3>
                <h1 class="text-center">Desa Kertajaya</h1>
            </div>
        </div>
        <hr/>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th scope="col">No.</th>
                    <th scope="col">Nama Lengkap</th>
                    <th scope="col">NIK</th>
                    <th scope="col">Tempat Lahir</th>
                </tr>
            </thead>
            <tbody>
                @php $i=1 @endphp
                @foreach($penduduk as $p)
                <tr>
                    <td>{{ $i++ }}</td>
                    <td>{{$p->nama}}</td>
                    <td>{{$p->nik}}</td>
                    <td>{{$p->tempatlahir}}</td>
                </tr>
                @endforeach
            </tbody>
        </table>
        <div class="row">
            <div class="col-12">
                <div class="card-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vel mi sed est imperdiet tempus. Praesent ac ipsum lectus. In vel posuere nulla, eget mattis mi. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Vivamus nec ex sed risus feugiat sagittis. Vivamus egestas id neque auctor vulputate. Donec tincidunt, leo ut malesuada mattis, felis dolor lacinia enim, sit amet fermentum est turpis id augue. Vivamus rutrum aliquam ornare. Proin leo dolor, porta ut libero nec, ultricies tincidunt elit. Vivamus pharetra lacus augue, ut sagittis velit pellentesque vitae.</p>
                </div>
            </div>
        </div>
    </main>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.3/js/bootstrap.min.js"></script>
</body>

</html>