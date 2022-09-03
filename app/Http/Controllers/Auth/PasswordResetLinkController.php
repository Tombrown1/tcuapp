<?php

namespace App\Http\Controllers\Auth;

use Carbon\Carbon;
use App\Models\User;
use Illuminate\Support\Str;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Password;

class PasswordResetLinkController extends Controller
{
    /**
     * Display the password reset link request view.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return view('auth.forgot-password');
    }

    /**
     * Handle an incoming password reset link request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     *
     * @throws \Illuminate\Validation\ValidationException
     */
    public function store(Request $request)
    {
        $request->validate([
            'email' => 'required|email|exists:users'
        ]);
        // return $request->email;

        $token = Str::random(40);

        DB::table('password_resets')->insert([            
            'email' => $request->email,
            'token' => $token,
            'created_at' => Carbon::now()
        ]);
        
        Mail::send('auth.verify-email',['token' => $token], function($message) use($request){
            $message->to($request->email);
            $message->Subject('Reset Password Notification');
        });
        return back()->with('message', 'We have e-mail you a password reset link, click on the link and enter your new password to reset!');

        // if( $user = User::Where('email', '=', $request->email)->first()){
        //     $gen_random = mt_rand(000000000, 999999999); 
        //     $user->resetPassword = $gen_random;
        //     $user->update();
        
        // }else{
        //     // $gen_random = "User Email Not Available";
        //     return  "User Email Not Available";

        // }
    

           
           
        

        // We will send the password reset link to this user. Once we have attempted
        // to send the link, we will examine the response then see the message we
        // need to show to the user. Finally, we'll send out a proper response.
        // $status = Password::sendResetLink(
        //     $request->only('email')
        // );

        // return $status == Password::RESET_LINK_SENT
        //             ? back()->with('status', __($status))
        //             : back()->withInput($request->only('email'))
        //                     ->withErrors(['email' => __($status)]);
    }
}
