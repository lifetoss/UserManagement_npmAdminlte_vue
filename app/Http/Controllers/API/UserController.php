<?php

namespace App\Http\Controllers\API;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\User;   // mvc we have to add this line of code use App\User;
use Illuminate\Support\Facades\Hash;    // using Hash fuciton on psw so we have to call it

class UserController extends Controller
{
    
    /**
     * Create a new controller instance.
     *
     * @return void
     *  this is for jwt laravel api
     */
    public function __construct()
    {
        $this->middleware('auth:api');  // this wil protect leaking our information from outside
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // showing record from database
        //return User::all();
        return User::latest()->paginate(8);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // validation
        $this->validate($request,[
            'name' => 'required|string|max:191',
            'email' => 'required|string|email|max:191|unique:users',
            'type' => 'required|string|max:20',
            'password' => 'required|string|min:6'
        ]);
        // checking weather it is working or not
        //return['message'=>'i have your data'];
        //return $request->all(); // it is show all data
        return User:: create([
            'name' => $request['name'],
            'email' => $request['email'],
            'type' => $request['type'],
            'bio' => $request['bio'],
            'photo' => $request['photo'],
            'password' => Hash::make($request['name']),

        ]);

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $user = User::findOrFail($id);
        //'password' => 'sometime|min:6'     sometime if user give password or not both is fine
        $this->validate($request,[
            'name' => 'required|string|max:191',
            'email' => 'required|string|email|max:191|unique:users,email,'.$user->id,
            'password' => 'sometimes|min:6'
        ]);
        $user->update($request->all());       
        return ['message'=> 'updated the user info'];
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $user = User::findOrFail($id);
        //delete user
        $user->delete();
        return['message','user deleted'];
    }
}
