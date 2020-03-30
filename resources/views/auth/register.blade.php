@extends('layouts.auth')

@section('content')
    <div class=" w3l-login-form">
        <h2>{{ __('Daftar') }}</h2>
        <form method="POST" action="{{ route('register') }}">
            @csrf

            <div class=" w3l-form-group">
                <div class="group">
                    {{-- <i class="fas fa-user"></i> --}}
                    <input id="name" type="text" class="form-control @error('name') is-invalid @enderror" placeholder="Nama Lengkap" name="name" value="{{ old('name') }}" required autocomplete="name" autofocus>

                    @error('name')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
            </div>
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
                    <input id="password" type="password" class="form-control @error('password') is-invalid @enderror" placeholder="Password" name="password" required autocomplete="new-password"/>
                    
                    @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
            </div>
            <div class=" w3l-form-group">
                <div class="group">
                    {{-- <i class="fas fa-unlock"></i> --}}
                    <input id="password-confirm" type="password" class="form-control" placeholder="Ulangi Password" name="password_confirmation" required autocomplete="new-password"/>
                </div>
            </div>
            
            <button type="submit" class="btn btn-primary">
                {{ __('DAFTAR') }}
            </button>
        </form>
        <p class=" w3l-register-p">Sudah punya akun?<a href="/login" class="register"> LOGIN</a></p>
    </div>

@endsection