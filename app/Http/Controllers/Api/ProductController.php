<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use App\Product;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;

class ProductController extends Controller
{
    //
    public function index()
    {
        //
        $products = product::with('pharmacy')->get();
        return response()->json(['success'=>'true','data'=>$products]);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */


    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $data = $request -> validate([
            'name' => 'required|string|max:100',
            'des' => 'string',
             'image' => 'required|mimes:png,jpg',
           
          
        ]);
        $data = $request->all();
        if ($request -> has('image')) {
            $image = $this -> saveImages($request -> image, 'images/products');
            $data['image'] = $image;
        }
        DB::beginTransaction();

     if($product = Product ::create($data)){
      
foreach($request->arr as $r){
    $product->pharmacy()->attach($r['pharmacy'],['price' => $r['price'] , 'qty' => $r['qty'] ]);
}

        
        DB::commit();
        return response()->json(['success'=>'true']);

     }else{
        DB::rollback();
        return response()->json(['success'=>'false']);
     }


    }

    

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        $product = Product::with('pharmacy')->findOrFail($id);
        return response()->json(['success'=>'true','data'=>$product]);
    }




    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $data = $request -> validate([
            'name' => 'required|string|max:100',
            'des' => 'string',

           

        ]);

        $product = Product ::find($id);
        $data= $request->all();


        if ($request -> has('image')) {
            if($product -> image != 'default.png'){
                Storage ::disk('public_uploads') -> delete('products/' . $product -> image);
            }
            $image = $this -> saveImages($request -> image, 'images/products');
            $data['image'] = $image;
        }
        DB::beginTransaction();
      if($product -> update($data)){


        $product->pharmacy()->detach();
        foreach($request->arr as $r){
           
            $product->pharmacy()->attach($r['pharmacy'],['price' => $r['price'] , 'qty' => $r['qty'] ]);
        }
        DB::commit();
        return response()->json(['success'=>'true']);
     }else{
        DB::rollback();
        return response()->json(['success'=>'false']);
     }

       
    }


    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Student  $student
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $product = Product ::find($id);

        DB::beginTransaction();

        if($product -> image != 'default.png'){
            Storage ::disk('public_uploads') -> delete('products/' . $product -> image);
        }
        $product->pharmacy()->detach();
        $product-> delete();

        DB::commit();

        return response()->json(['success'=>'true']);
    }

    public function search(Request $request){
        $products = Product::where('name','like','%'.$request->param .'%')->with('pharmacy')->orderBy('id','desc')->get();
        return response()->json(['success'=>'true','data'=> $products]);
    }

}
