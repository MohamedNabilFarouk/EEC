<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    //
    protected $fillable=[
        'name',
        'des',
        'price',
        'image',
        'qty'
    ];

    public function getImageAttribute($value)
    {
        return asset('images/products/' . $value);
    } // end of get image attribute

    public function pharmacy(){
        return $this->belongsToMany(Pharmacy::class, 'products_pharmacies', 'product_id', 'pharmacy_id')->withPivot('price','qty')->orderBy('pivot_price','asc');
    }
}
