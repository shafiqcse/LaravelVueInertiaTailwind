<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Inertia\Inertia;

class DashboardController extends Controller
{
    public function index()
    {
        // Retrieve the authenticated user
        $user = Auth::user();

        // Pass the user data to the Inertia view
        return Inertia::render('Dashboard', [
            'user' => $user,
        ]);
    }
}
