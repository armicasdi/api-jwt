<?php

namespace App\Http\Controllers;

use App\Producto;
use App\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;

class UserController extends Controller
{
    public function index(){
        $users = Producto::simplePaginate(10);

        return $users;
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'nombre' => 'required',
            'telefono' => 'required|integer',
            'usuario' => 'required|string|unique:users',
            'dob' => 'string',
            'email' => 'required|email|unique:users'
        ]);

        $hashed = Hash::make($request->get('password'));

        $user = new User([
            'nombre' => $request->get('nombre'),
            'telefono' => $request->get('telefono'),

            'usuario' => $request->get('usuario'),

            'dob' => $request->get('dob'),
            'email' => $request->get('email'),
            'password' => $hashed,
        ]);




        if ($user->save())
            return response()->json([
                'success' => true,
                'mensaje' => 'Usuario Guardado Correctamente',
                'product' => $user
            ]);
        else
            return response()->json([
                'success' => false,
                'message' => 'Usuario no guardado'
            ], 500);
    }


    public function search($search){
        $user = User::where('usuario', 'LIKE', '%'.$search.'%')->orWhere('nombre', 'LIKE', '%'.$search.'%')->get();

        if (!$user) {
            return response()->json([
                'success' => false,
                'message' => 'Usuario' . $search . ' no encontrado'
            ], 400);
        }else {
            return response()->json([
                'success' => true,
                'mensaje' => 'Usuario Encontrado',
                'usuario' => $user
            ]);
        }

    }


    public function update(Request $request, $id)
    {
        $user = User::find($id);

        if (!$user) {
            return response()->json([
                'success' => false,
                'message' => 'Usuario con id: ' . $id . ' no encontrado'
            ], 400);
        }


        $updated = $user->fill($request->all())
            ->save();

        if ($updated) {
            return response()->json([
                'success' => true
            ]);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Usuario no Actualizado'
            ], 500);
        }
    }

    public function destroy($id)
    {
        $user = User::find($id);

        if (!$user) {
            return response()->json([
                'success' => false,
                'message' => 'Usuario con id:  ' . $id . ' no encontrado'
            ], 400);
        }

        if ($user->delete()) {
            return response()->json([
                'success' => true
            ]);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Usuario no Borrado'
            ], 500);
        }
    }
}
