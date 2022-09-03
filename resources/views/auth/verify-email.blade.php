<x-guest-layout>
    <x-auth-card>
        <x-slot name="logo">
            <a href="/" class="d-flex justify-content-center mb-4">
                <!-- <x-application-logo width=64 height=64 /> -->
                <img src="{{asset('backend/assets/logos/main_logo2.jpg')}}" width=64 height=64 alt="">
            </a>
        </x-slot>
        <div class="card-body">
        <header class="text-center">
       <h4>Thanks for signing up! Before getting started, could you verify your email address by clicking on the link we just emailed to you? If you didn\'t receive the email, we will gladly send you another</h4>

        </header>
        @if (session('status') == 'verification-link-sent')
            <div class="alert alert-success" role="alert">
                {{ __('A new verification link has been sent to the email address you provided during registration.') }}
            </div>
        @endif
        <a href="http://127.0.0.1:8000/reset-password/{{$token}}">Click Here</a>

            <br>

        <!-- <div class="mt-4 d-flex justify-content-between">
            <form method="POST" action="{{ route('verification.send') }}">
                @csrf

                <div>
                    <x-button>
                    {{ __('Resend Verification Email') }}
                    </x-button>
                </div>
            </form>

            <form method="POST" action="{{ route('logout') }}">
                @csrf

                <button type="submit" class="btn btn-link">
                    {{ __('Log out') }}
                </button>
            </form>
        </div> -->
        </div>
    </x-auth-card>
</x-guest-layout>
