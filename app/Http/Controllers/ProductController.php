<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\Product;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Product::latest()->paginate(6);
        $data = Product::latest()->get();
        $count = count($data);
        return response()->json(["Message" => "Get All Data Product", "length" => $count, "data" => $data], 200);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {

        $uuid = Str::uuid();
        $data = Product::create([
            "uuid" => $uuid,
            "code" => "P-" . date("Y-m-d-h-i-s"),
            "category_id" => $request->category_id,
            "product_name" => $request->product_name,
            "price" => $request->price,
            "stock" => $request->stock,
            "description" => $request->description,
        ]);
        return response()->json($data, 201);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($uuid)
    {
        $data = Product::where('uuid', $uuid)->get();
        if (count($data) === 0) return response()->json(["Message" => "No Data Found"], 404);
        return response()->json([$data], 200);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
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
    public function update(Request $request, $uuid)
    {
        $data = Product::where('uuid', $uuid)->get();
        if (count($data) === 0) return response()->json(["Message" => "No Data Found"], 404);
        Product::where('uuid', $uuid)->update([
            "category_id" => $request->category_id,
            "product_name" => $request->product_name,
            "price" => $request->price,
            "stock" => $request->stock,
            "description" => $request->description,
        ]);
        return response()->json(["Message" => "Success Updated"], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($uuid)
    {
        $data = Product::where('uuid', $uuid)->get();
        if (count($data) === 0) return response()->json(["Message" => "No Data Found"], 404);
        Product::where('uuid', $uuid)->delete();
        return response()->json(["Message" => "Success Deleted"]);
    }
}
