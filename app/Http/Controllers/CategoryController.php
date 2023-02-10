<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use App\Models\Category;

class CategoryController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data = Category::all();
        $count = count($data);
        return response()->json(["Message" => "Get All Data Category", "length" => $count, "data" => $data], 200);
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
        $slug = Str::slug($request->category_name, '-');
        $data = Category::create([
            "uuid" => $uuid,
            "code" => "K-" . date("Y-m-d"),
            "slug" => $slug,
            "category_name" => $request->category_name,
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
        $data = Category::where('uuid', $uuid)->get();
        if (count($data) === 0) return response()->json(["Message" => "No Data Found"], 404);
        return response()->json(["Message" => "Get Category By UUID",  "data" => $data], 200);
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
        $data = Category::where('uuid', $uuid)->get();
        if (count($data) === 0) return response()->json(["Message" => "No Data Found"], 404);
        $slug = Str::slug($request->category_name, '-');
        Category::where('uuid', $uuid)->update([
            "category_name" => $request->category_name,
            "slug" => $slug,
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
        $data = Category::where('uuid', $uuid)->get();
        if (count($data) === 0) return response()->json(["Message" => "No Data Found"], 404);
        Category::where('uuid', $uuid)->delete();
        return response()->json(["Message" => "Success Deleted"]);
    }
}
