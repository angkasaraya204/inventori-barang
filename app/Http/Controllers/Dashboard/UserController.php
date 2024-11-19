<?php

namespace App\Http\Controllers\Dashboard;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function admin (Request $request) {
        // $admins = User::paginate(10);
        if($request->has('search')){
            $admins = User::where('name', 'LIKE', "%{$request->search}%")->paginate(10);
        } else {
            $admins = User::paginate(10);
        }
        return view('dashboard.admin.index', ['admins'=>$admins]);
    }

    public function createAdmin () {
       return view('dashboard.admin.input');
    }

    public function deleteAdmin($id) {
        $user = User::findOrFail($id);
        $deletedUser = $user->delete();

        if($deletedUser){
            session()->flash('message', 'berhasil menghapus data');
            return response()->json(['message'=> 'success'],200);
        }
    }

    public function storeAdmin (Request $request) {
        $this->validate($request, [
                'name'=>['required'],
                'email'=>['required'],
                'password'=>['required'],
                'role'=>['required']
        ]);

        $userCreated = User::create([
            'name'=>$request->name,
            'email'=>$request->email,
            'password'=>Hash::make($request->password),
            'role'=>$request->role
        ]);

        if($userCreated){
            return redirect('/role')->with('message','data berhasil ditambahkan');
        }
    }

    public function editAdmin ($id) {
        $admin = User::findOrFail($id);
        return view('dashboard.admin.update', ['admin'=>$admin]);
    }

    public function updateAdmin (Request $request, $id) {
    $this->validate($request, [
            'name'=>['required'],
            'email'=>['required'],
            'role'=>['required']
    ]);

    $admin = User::findOrFail($id);

    if($request->has('password')) {
        $password = Hash::make($request->password);
    } else {
        $password = $admin->password;
    }

    $updated = $admin->update([
        'name'=>$request->name,
        'email'=>$request->email,
        'password'=>$password,
        'role'=>$request->role
    ]);

    if($updated){
        return redirect('/role')->with('message','data berhasil diubah');
    }
    }
}
