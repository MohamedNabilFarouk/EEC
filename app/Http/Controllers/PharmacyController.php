<?php

namespace App\Http\Controllers;

use App\Pharmacy;
use App\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class PharmacyController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $pharmacy = Pharmacy ::paginate(10);

        return view('admin.pharmacy.index', compact('pharmacy'));
    }




    public function create()
    {
        $products = Product::all();
        return view('admin.pharmacy.create',compact('products'));
    }

    public function store(Request $request)
    {
        // dd($request->veg);
        $data = $request -> validate([
            'name' => 'required|string|max:100',
            'address' => 'string',

        ]);
        $data = $request->all();

        DB::beginTransaction();

     if($pharmacy = Pharmacy ::create($data)){

        session() -> flash('success', trans('added successfully'));
     }else{
       
        session() -> flash('success', trans('Error'));
     }


        return redirect() -> route('pharmacy.index');
    }


    /**
     * Display the specified resource.
     *
     * @param  \App\Pharmacy  $pharmacy
     * @return \Illuminate\Http\Response
     */
    public function show(Pharmacy $pharmacy)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Pharmacy  $pharmacy
     * @return \Illuminate\Http\Response
     */
    public function edit( $id)
    {
        $pharmacy = Pharmacy::findOrFail($id);
        $products = Product::with('pharmacy')->get();
        return view('admin.pharmacy.edit', compact('pharmacy','products'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Pharmacy  $pharmacy
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,  $id)
    {
        $data = $request -> validate([
            'name' => 'required|string|max:100',
            'address' => 'string',
        ]);

        $pharmacy = Pharmacy ::findOrFail($id);
        $data= $request->all();


        DB::beginTransaction();
      if($pharmacy -> update($data)){
        
        session() -> flash('success', trans('added successfully'));
     }else{
      
        session() -> flash('success', trans('Error'));
     }

        return redirect() -> route('pharmacy.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Pharmacy  $pharmacy
     * @return \Illuminate\Http\Response
     */
    public function destroy(Pharmacy $pharmacy)
    {

        if(isset($pharmacy)){
            DB::beginTransaction();

            $pharmacy->product()->detach();
            $pharmacy-> delete();

            DB::commit();

            session() -> flash('success', trans('deleted successfully'));
        }

        return redirect() -> route('pharmacy.index');
    }
}
