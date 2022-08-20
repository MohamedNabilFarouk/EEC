<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use App\Pharmacy;
use Illuminate\Http\Request;
use App\Product;
use App\Traits\imagesTrait;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Storage;
class productController extends Controller
{
    use imagesTrait;

    public function index()
    {

        $products = Product ::paginate(10);

        return view('admin.product.index', compact('products'));
    }




    public function create()
    {
        $pharmacies = Pharmacy::all();
        return view('admin.product.create',compact('pharmacies'));
    }

    public function store(Request $request)
    {
        // dd($request->arr);
        $data = $request -> validate([
            'name' => 'required|string|max:100',
            'des' => 'string',
            // 'image' => 'required',
            // 'price' => 'required',
            // 'qty'=>'required',
            // 'pharmacy'=>'required',

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
        session() -> flash('success', trans('added successfully'));
     }else{
        DB::rollback();
        session() -> flash('success', trans('Error'));
     }


        return redirect() -> route('product.index');
    }

    public function show($id)
    {
        $product = Product:: with('pharmacy')->findOrFail($id);
        return view('admin.product-details',compact('product'));
    }

    public function edit($id)
    {
        $product = Product ::find($id);
$pharmacies = Pharmacy::with('product')->get();
        return view('admin.product.edit', compact('product','pharmacies'));
    }

    public function update(Request $request, $id)
    {
        $data = $request -> validate([
            'name' => 'required|string|max:100',
            'des' => 'string',

            // 'price' => 'required',
            // 'qty' => 'required',

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
        session() -> flash('success', trans('added successfully'));
     }else{
        DB::rollback();
        session() -> flash('success', trans('Error'));
     }

        return redirect() -> route('product.index');
    }

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

        session() -> flash('success', trans('deleted successfully'));
        return redirect() -> route('product.index');
    }

    public function search(Request $request){
        $products = Product::where('name','like','%'.$request->param .'%')->orderBy('id','desc')->paginate(20);
        return view('admin.allproducts',compact('products'));
    }

public function allproducts(){
    $products = Product ::paginate(8);
    return view('admin.allproducts',compact('products'));
}



}
