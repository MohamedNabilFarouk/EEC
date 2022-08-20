<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Pharmacy extends Model
{
    protected $fillable=[
        'name',
        'address',

    ];

    public function product(){
        return $this->belongsToMany(Product::class, 'products_pharmacies', 'pharmacy_id', 'product_id')->withPivot('price')->orderBy('pivot_price','asc');
    }
}
