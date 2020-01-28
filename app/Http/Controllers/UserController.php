<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;

class UserController extends Controller
{
    //GET ALL
    public function index(){
        $users = User::paginate(12);
        return view('users.index')->withUsers($users);
    
    }
}
