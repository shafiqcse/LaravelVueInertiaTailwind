<?php

namespace App\Http\Controllers;


use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Inertia\Inertia;

class HomeController extends Controller
{
    // Get all users
    public function index(Request $request)
    {
        $user = User::all(); // Fetch all users from the database
        return Inertia::render('Users', ['users'=> $user]); // Render the 'Users' view with the fetched users
    }

    // Show the home page
    function homePage(Request $request )
    {


        return inertia::render('Home', [
            'users' => User::when($request->search, function ($query) use ($request) {
                $query
                    ->where('name', 'like', '%' . $request->search . '%')
                    ->orWhere('email', 'like', '%' . $request->search . '%');
            })->paginate(5)->withQueryString(),

            'searchTerm' => $request->search,

            'can' => [
                'delete_user' =>
                    Auth::user() ?
                        Auth::user()->can('delete', User::class) :
                        null
            ]
        ]);

//        return Inertia::render('Home');
    }

    // Show the about page
    function aboutPage()
    {

        return inertia::render('About');
    }

    // Show the contact page
    function contactPage()
    {
        return inertia::render('Contact');
    }

    // Show the service page
    function servicePage()
    {
        return inertia::render('Service');
    }

    // Show the team page
    function teamPage()
    {
        return inertia::render('Team');
    }

    // Show the login page
    function loginPage()
    {
        return inertia::render('Login');
    }

    function registerPage()
    {
        return inertia::render('Register');
    }

    // Show the dashboard page
    function dashboardPage()
    {
        return inertia::render('Dashboard');
    }


}
