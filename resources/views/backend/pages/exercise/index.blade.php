@extends('layouts.backend', ['title' => 'Excercise Page'])

@section('breadcrumb')
    <li class="breadcrumb-item active"><a href="">Exercise</a></li>
@endsection

@push('after-style')
    <style>
        .bmd-form-group {
            padding: 0;
        }
    </style>
@endpush

@section('content-backend')
    <div class="row">
        <div class="col-12">
            @php
                // dd($question);
            @endphp
            @if ($question)
                <div class="card m-b-30 pb-5">
                    <div class="card-body">
                        <div class="row px-5">
                            <div class="col-md-12 border-top border-bottom h5 py-3">
                                <p><b>Petunjuk Pengerjaan !!</b></p>
                                <i class="mdi mdi-information"></i>
                                {{ $category->instruction }}
                                <!-- Tambahkan kotak waktu di sini -->


                                <div class="float-right">
                                    <p id="countdown"></p> <!-- untuk timer -->
                                </div>
                            </div>
                        </div>

                        <div class="row my-5 text-center">
                            <div class="col-md-12 h5">
                                <p><b>Kategori : {{ $category->name }}</b></p>
                            </div>
                        </div>
                        <div class="row px-5">
                            <div class="col-md-8 ">
                                <div class="row col-md-12">
                                    <div class="card w-100 border">
                                        <div class="card-body">
                                            <div class="border shadow px-4 py-2 d-inline border-dark bg-danger">Soal</div>
                                            <div class="mx-4 mt-4 mb-5">{!! $question->question->question !!}</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="row col-md-12 mt-3">
                                    <div class="card w-100 border">
                                        <div class="card-body">
                                            <div class="border shadow px-4 py-2 d-inline border-dark bg-warning">Jawaban
                                            </div>
                                            <div class="mx-4 mt-4 mb-5 mt-5">
                                                <div class="row text-center">
                                                    @php $forjsb=[]; @endphp
                                                    <form action="{{ route('exercise.check') }}" id="exercise-check"
                                                        method="post" class="mx-auto">
                                                        @csrf
                                                        <input type="hidden" name="exercise_id"
                                                            value="{{ $question->id }}">
                                                        <input type="hidden" name="confidence" id="confidence">
                                                        <input type="hidden" name="started_at" id="startTime"
                                                            value="{{ \Carbon\Carbon::now() }}">
                                                        <input type="hidden" name="finished_at" id="endTime">
                                                        @php
                                                            // dd($question->question->answer);
                                                        @endphp
                                                        @foreach ($question->question->answers as $a)
                                                            @php array_push($forjsb,$a->id) @endphp
                                                            @if ($a->is_true)
                                                                <div class="col-md-12 mt-4">
                                                                    <input id="drop{{ $a->id }}" name="answer[]"
                                                                        readonly
                                                                        class="border text-primary shadow px-5 py-2 d-inline border-dark"
                                                                        required>
                                                                </div>
                                                            @endif
                                                        @endforeach
                                                        <button id="submit-check" type="submit" hidden></button>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-4">
                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="card w-100 border">
                                            <div class="card-body">
                                                <div class="border shadow px-4 py-2 d-inline-block border-dark bg-success">
                                                    Pilihan Jawaban</div>
                                                <div class="row text-center mt-4">
                                                    @php $forjsa=[]; @endphp
                                                    @foreach ($question->question->answers as $a)
                                                        @php array_push($forjsa,$a->id) @endphp

                                                        <div class="col-md-12 my-3">
                                                            <div id="ans{{ $a->id }}"
                                                                class="border shadow px-4 py-2 d-inline-block border-dark bg-light"
                                                                data-id="{{ $a->id }}"
                                                                data-answer="{{ $a->answer }}"
                                                                style="word-wrap: break-word; white-space: normal; width: 100%;">
                                                                {{ $a->answer }}</div>
                                                        </div>
                                                    @endforeach
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="mt-5">
                                            <div class="row justify-content-center text-center">
                                                <div class="col-md-5 col-sm-12">
                                                    <button id="submit" class="btn btn-primary">Check</button>
                                                </div>
                                                <div class="col-md-5 col-sm-12">
                                                    <button class="btn btn-warning"><a
                                                            href="{{ route('exercise.reset.all', ['id' => $category->id]) }}">Reset</a></button>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            @else
                <div class="jumbotron jumbotron-fluid">
                    <div class="container text-center">
                        <h1 class="display-4">Selamat semua soal latihan sudah terjawab dengan benar</h1>
                        {{-- <h3 class="display-4">Total Nilai Anda: {{ $nilai ?? 0 }} </h3> --}}
                        <p class="lead">Silahkan pilih kategori latihan lainya yang belum diselesaikan.</p>
                        <a href="{{ route('exercise.recovery') . '?id=' . $category->id }}">
                            <p class="lead text-primary">Kerjakan Ulang</p>
                        </a>
                    </div>
                </div>
            @endif
        </div> <!-- end col -->
    </div> <!-- end row -->

@endsection

@push('after-script')
    <?php if(Isset($forjsa) && isset($forjsb)) : ?>
    <script src="https://code.jquery.com/ui/1.13.1/jquery-ui.js"></script>
    <script>
        <?php foreach($forjsa as $fs) : ?>
        $("#ans<?= $fs ?>").draggable({
            revert: "invalid",
            cursor: "move"
        });
        <?php endforeach ?>
        <?php foreach($forjsb as $fsb) : ?>

        $('#drop<?= $fsb ?>').droppable({
            drop: function(event, ui) {
                let id = ui.draggable.data('id');
                let answer = ui.draggable.data('answer');

                $(this)
                    .addClass("bg-primary")

                $(this)
                    .attr('value', answer)

                $(this)
                    .attr('name', 'answer[' + id + ']')
            },
            out: function(event, ui) {
                $(this)
                    .attr('value', '')
                $(this)
                    .removeClass("bg-primary")
                $(this)
                    .attr('name', '')
            }
        })
        <?php endforeach ?>
    </script>



    <?php endif ?>

    <script>
        $('#submit').on('click', function(e) {
            e.preventDefault();

            Swal.fire({
                title: 'Apakah kamu yakin dengan jawaban kamu?',
                html: '<img src="../assets_backend/images/ques.png" alt="Image description" style="width: 50%; height: auto;"/>',
                showDenyButton: true,
                confirmButtonText: `Yakin`,
                denyButtonText: `Tidak Yakin`,
                customClass: {
                    confirmButton: 'btn-custom',
                    denyButton: 'btn-customi'
                },
                allowOutsideClick: false,
                showCloseButton: true
            }).then((result) => {
                if (result.isConfirmed) {
                    // Jika pengguna memilih 'Yakin', set nilai 'confidence' menjadi 'Yakin'
                    $('#confidence').val('Yakin');
                } else if (result.isDenied) {
                    // Jika pengguna memilih 'Tidak Yakin', set nilai 'confidence' menjadi 'Tidak Yakin'
                    $('#confidence').val('Tidak Yakin');
                }
                if (result.dismiss !== Swal.DismissReason.close) {
                    $('#submit-check').click();
                }
            })
        })
    </script>

    <script>
        // Step 1: Record the start time
        var startTime = new Date();

        $('#submit').on('click', function(e) {
            e.preventDefault();
            // When the page loads
            var startTime = Date.now();

            // When the form is submitted
            var endTime = Date.now();

            // Calculate the duration in seconds
            var duration = (endTime - startTime) / 1000;
            document.getElementById('duration').value = duration;
            $('#timeSpent').val(timeSpent);

        });
    </script>


    //js untuk timer
    <script>
        $(document).ready(function() {
            // Cek apakah waktu mulai sudah ada di localStorage
            var startTime = localStorage.getItem('startTime');
            // var startTime = Date.now();


            // Jika tidak, set waktu mulai ke sekarang dan simpan di localStorage
            if (!startTime) {
                startTime = Date.now();
                localStorage.setItem('startTime', startTime);
            } else {
                // Jika ada, ubah kembali ke integer
                startTime = parseInt(startTime);
            }

            // Set the duration for the entire category
            var duration = <?php echo $duration; ?>; // Nilai time_limit dari database dalam milidetik


            //total jumlah time yg diperlukan untuk menjawab semua soal
            var totalDuration = duration;

            // Calculate the remaining time
            var remainingTime = duration - (Date.now() - startTime);


            // Start the countdown
            countdown = setInterval(function() {
                // Calculate the minutes and seconds from remainingTime
                var minutes = Math.floor((remainingTime % (1000 * 60 * 60)) / (1000 * 60));
                var seconds = Math.floor((remainingTime % (1000 * 60)) / 1000);

                // Display the result in the element with id="countdown"
                document.getElementById('countdown').innerHTML = minutes + "m " + seconds + "s ";

                // If the count down is finished, write some text
                if (remainingTime < 0) {
                    clearInterval(countdown);
                    // Hapus waktu mulai dari localStorage
                    localStorage.removeItem('startTime');

                    // Tampilkan pesan bahwa waktu habis
                    document.getElementById('countdown').innerHTML = "Waktu Habis";

                    window.location.href = "{{ route('exercise.reset.all') . '?id=' . $category->id }}";
                }

                totalDuration -= remainingTime;

                remainingTime -= 1000;

                if (remainingTime < 0) {
                    localStorage.removeItem('startTime');
                    document.getElementById('countdown').innerHTML = "Waktu Habis";

                    $.ajax({
                        url: "{{ route('exercise.check') }}",
                        type: "POST",
                        data: {
                            _token: "{{ csrf_token() }}",
                            totalDuration: totalDuration
                        },
                        success: function(response) {
                            // Lakukan tindakan yang diperlukan setelah nilai totalDuration berhasil dikirim
                            window.location.href =
                                "{{ route('exercise.reset.all') . '?id=' . $category->id }}";
                        },
                        error: function(xhr, status, error) {
                            console.error(error);
                        }
                    });
                }
            }, 1000);
            // if (remainingTime < 0) {
            //     clearInterval(countdown);
            //     // Hapus waktu mulai dari localStorage
            //     localStorage.removeItem('startTime');
            //     // Tampilkan pesan bahwa waktu habis
            //     document.getElementById('countdown').innerHTML = "Waktu Habis";

            //     // Kirim nilai totalDuration ke server menggunakan AJAX
            //     $.ajax({
            //         url: "{{ route('exercise.check') }}",
            //         type: "POST",
            //         data: {
            //             _token: "{{ csrf_token() }}",
            //             totalDuration: totalDuration
            //         },
            //         success: function(response) {
            //             // Lakukan tindakan yang diperlukan setelah nilai totalDuration berhasil dikirim
            //             window.location.href =
            //                 "{{ route('exercise.reset.all') . '?id=' . $category->id }}";
            //         },
            //         error: function(xhr, status, error) {
            //             console.error(error);
            //         }
            //     });
            // }

        });
    </script>


    <style>
        .btn-custom {
            width: 130px;
            height: 50px;
        }

        .btn-customi {
            width: 130px;
            height: 50px;
            padding: 10px 20px;
            margin: 10px;
            background-color: #007BFF;
            color: white;
            white-space: nowrap !important;
            text-align: left !important;
            border-radius: 5px;
            border: none;
            font-size: 14px;
        }
    </style>
@endpush
