<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class SearchController extends Controller
{
    public function by_code($code)
    {

        $data = Product::where('code', $code)->first();
        // return response(empty($data));
        if ($data == null) return response()->json(["Message" => "No Data Found"], 404);

        // if (count($data) === 0) return response()->json(["Message" => "No Data Found"], 404);
        return response()->json(["Message" => "Get Product By Code",  "data" => $data], 200);
    }
}
