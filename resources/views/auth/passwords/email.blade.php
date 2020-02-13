@extends('layouts.auth')

@section('content')
    <div class=" w3l-login-form">
        <h2>{{ __('Reset Password') }}</h2>
        <form method="POST" action="{{ route('login') }}">
            @csrf

            <div class=" w3l-form-group">
                <div class="group">
                    {{-- <i class="fas fa-envelope"></i> --}}
                    <input id="email" type="text" class="form-control @error('email') is-invalid @enderror" placeholder="Email" name="email" value="{{ old('email') }}" required="required" autocomplete="email" autofocus />
                    @error('email')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
            </div>
            <button type="submit" class="btn btn-primary">
                {{ __('Kirim Link Reset ke email') }}
            </button>
        </form>
        <p class=" w3l-register-p"><a href="/register" class="register"> DAFTAR </a>atau<a href="/login" class="register"> LOGIN</a></p>
    </div>

@endsection