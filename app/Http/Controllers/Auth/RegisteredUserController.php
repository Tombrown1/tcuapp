<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Models\UserDetail;
use App\Providers\RouteServiceProvider;
use Illuminate\Auth\Events\Registered;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rules;

class RegisteredUserController extends Controller
{
    /**
     * Display the registration view.
     *
     * @return \Illuminate\View\View
     */
    public function create()
    {
        return view('auth.register');
    }

    /**
     * Handle an incoming registration request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\RedirectResponse
     *
     * @throws \Illuminate\Validation\ValidationException
     */
    public function store(Request $request)
    {
        $request->validate([
            'surname' => ['required', 'string', 'max:255'],
            'fname' => ['required', 'string', 'max:255'],
            'lname' => ['required', 'string', 'max:255'],
            'email' => ['required', 'string', 'email', 'max:255', 'unique:users'],
            'password' => ['required', 'min:8'],
            // 'password' => ['required', 'confirmed', Rules\Password::defaults()],
            'gender' => ['required'],
            
        ]);

        // return $request;
       
        $fullname = $request->surname.' '. $request->fname.' '. $request->lname;
        $name = explode(" ", $request->fname);
        $username = $name[0].rand(4,99999);
        // $password = $username;
        // return $name[0];
        $user = User::create([
            'username' => $username,
            'name' => $fullname,
            'email' => $request->email,
            'gender' => $request->gender,
            'password' => Hash::make($request->password),
            'role' => 0,
            
        ]);
            // return $user;
        if($user->save()){
            $userdetail = new UserDetail;
            $userdetail->user_id = $user->id;
            $userdetail->created_by = $user->id;
            $userdetail->surname = $request->surname;
            $userdetail->firstname = $request->fname;
            $userdetail->lastname = $request->lname;
            $userdetail->gender = $user->gender;
            $userdetail->email = $user->email;
            
            $userdetail->save();
        }
        

        

        event(new Registered($user));

        Auth::login($user);

        return redirect(RouteServiceProvider::HOME);
        // return redirect(RouteServiceProvider::USER);
    }
}
