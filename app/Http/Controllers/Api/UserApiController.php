<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Http\Resources\UserResource;
use App\Http\Resources\PostResource;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Validator;

class UserApiController extends Controller
{
    public function index(){
        $users = User::paginate();
        return UserResource::collection( $users );
    }

    public function posts( $id ){
        $author = User::find($id);
        $posts = $author->posts;
        return PostResource::collection( $posts );
    }
    public $successStatus = 200;
 
    public function login(){
        if(Auth::attempt(['email' => request('email'), 'password' => request('password')])){
            $user = Auth::user();
            $success['api_token'] =  $user->createToken('MyApp')->accessToken;
            return response()->json([
                'success' => $success,
                'token' => $success['api_token'] ,
                'user' => $user
            ], $this->successStatus);
        }
        else{
            return response()->json(['message'=>'Email atau password salah'], 401);
        }
    }

    public function register(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'name' => 'required',
            'email' => 'required|email|unique:users',
            'password' => 'required',
            'c_password' => 'required|same:password',
        ]);

        if ($validator->fails()) {
            return response()->json(['error'=>$validator->errors()], 401);            
        }

        $input = $request->all();
        $input['password'] = bcrypt($input['password']);
        $user = User::create($input);
        $success['api_token'] =  $user->createToken('MyApp')->accessToken;
        $success['name'] =  $user->name;
        $success['email'] =  $user->email;


        return response()->json(['success'=>$success], $this->successStatus);
    }

    public function details()
    {
        $user = Auth::user();
        return response()->json(['success' => $user], $this->successStatus);
    }
    public function getCurrentUser(Request $request)
    {
        $user = Auth::user();
        // add isProfileUpdated....
        $isProfileUpdated=false;
         if($user->isPicUpdated==1 && $user->isEmailUpdated){
             $isProfileUpdated=true;
             
         }
         $user->isProfileUpdated=$isProfileUpdated;
 
         return $user;
    }
    public function logout(){   
        if (Auth::check()) {
            Auth::user()->token()->revoke();
            return response()->json(['success' =>'logout_success'],200); 
        }else{
            return response()->json(['error' =>'api.something_went_wrong'], 500);
        }
    }
}
