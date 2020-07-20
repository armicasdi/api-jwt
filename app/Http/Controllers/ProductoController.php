<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Producto;
use Tymon\JWTAuth\Exceptions\JWTException;
use Tymon\JWTAuth\JWTAuth;

class ProductoController extends Controller
{
    public function index(){
        $productos = Producto::simplePaginate(10);

        return $productos;
    }

    public function search($search){
        $producto = Producto::where('SKU', 'LIKE', '%'.$search.'%')->orWhere('nombre', 'LIKE', '%'.$search.'%')->get();

        if (!$producto) {
            return response()->json([
                'success' => false,
                'message' => 'Producto' . $search . ' no encontrado'
            ], 400);
        }else {
            return response()->json([
                'success' => true,
                'mensaje' => 'Producto Encontrado',
                'producto' => $producto
            ]);
        }

    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'nombre' => 'required',
            'cantidad' => 'required|integer',
            'precio' => 'required|integer',
            'descripcion' => 'string',
            'imagen' => 'url',
        ]);

        $producto = new Producto();
        $producto->SKU = $request->SKU;
        $producto->nombre = $request->nombre;
        $producto->cantidad = $request->cantidad;
        $producto->precio = $request->precio;
        $producto->descripcion = $request->descripcion;
        $producto->imagen = $request->imagen;

        if ((new \App\Producto)->save($producto->toArray()))
            return response()->json([
                'success' => true,
                'mensaje' => 'Producto Guardado Correctamente',
                'product' => $producto
            ]);
        else
            return response()->json([
                'success' => false,
                'message' => 'Producto no guardado'
            ], 500);
    }


    public function update(Request $request, $id)
    {
        $producto = Producto::find($id);

        if (!$producto) {
            return response()->json([
                'success' => false,
                'message' => 'Producto con id:  ' . $id . ' no encontrado'
            ], 400);
        }

        $updated = $producto->fill($request->all())
            ->save();

        if ($updated) {
            return response()->json([
                'success' => true
            ]);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Producto no Actualizado'
            ], 500);
        }
    }

    public function destroy($id)
    {
        $producto = Producto::find($id);

        if (!$producto) {
            return response()->json([
                'success' => false,
                'message' => 'Producto con id:  ' . $id . ' no encontrado'
            ], 400);
        }

        if ($producto->delete()) {
            return response()->json([
                'success' => true
            ]);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Producto no Borrado'
            ], 500);
        }
    }


}
