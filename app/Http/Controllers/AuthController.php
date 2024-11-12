<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Inertia\Inertia;

class AuthController extends Controller
{


    public function registerUser(Request $request)
    {
        //validation
        $fields = $request->validate([
            'name' => ['required', 'max: 255'],
            'email' => ['required', 'email', 'max: 255', 'unique:users'],
            'password' => ['required', 'min:6', 'confirmed']
        ]);
        //store in database

        $user = User::create([
            'name' => $fields['name'],
            'email' => $fields['email'],
            'password' => bcrypt($fields['password'])
        ]);


        //login

        Auth()->login($user);

        //redirect

        return redirect()->route('users.show');

    }

    // Login the user
    public function login(Request $request)
    {
        // Validate the request
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        // Attempt to log the user in
        if (Auth::attempt($request->only('email', 'password'))) {
            // Authentication passed
            return redirect()->intended('/dashboard'); // Redirect to intended page or default
        }

        // Authentication failed
        return back()->withErrors([
            'email' => 'The provided email do not match our records.',
            'password' => 'The provided password do not match our records.',
        ]);
    }

    public function logout(Request $request)
    {
        // Logout
        Auth::logout();

        // invalidate session
        $request->session()->invalidate();

        // Regenerate CSRF token
        $request->session()->regenerateToken();

        // Redirect to Home
        return redirect()->route('home');
    }
}
