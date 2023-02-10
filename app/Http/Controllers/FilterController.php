<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class FilterController extends Controller
{
    public function product_filter($count)
    {
        $data = Product::latest()->paginate($count);
        if (count($data) === 0) return response()->json(["Message" => "No Data Found"], 404);
        return response()->json(["Message" => "Get Product By Filter",  "data" => $data], 200);
    }
}
