@extends('layouts.auth')

@section('content')
    <div class=" w3l-login-form">
        <h2>{{ __('Login') }}</h2>
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
            <div class=" w3l-form-group">
                <div class="group">
                    {{-- <i class="fas fa-unlock"></i> --}}
                    <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" placeholder="Password" name="password" required autocomplete="current-password"/>
                    
                    @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
            </div>
            <button type="submit" class="btn btn-primary">
                {{ __('Login') }}
            </button>

            @if (Route::has('password.request'))
                <a class="btn btn-link" href="{{ route('password.request') }}">
                    {{ __('Lupa Password?') }}
                </a>
            @endif
        </form>
        <p class=" w3l-register-p">Belum punya akun?<a href="/register" class="register"> DAFTAR</a></p>
    </div>

@endsection