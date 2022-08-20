<?php

namespace App\Console\Commands;

use App\Pharmacy;
use App\Product;
use Illuminate\Console\Command;

class ProductsCommand extends Command
{
    /**
     * The name and signature of the console command.
     *
     * @var string
     */
    protected $signature = 'products:search-cheapest {id}';

    /**
     * The console command description.
     *
     * @var string
     */
    protected $description = 'return cheapest 5 products';

    /**
     * Create a new command instance.
     *
     * @return void
     */
    public function __construct()
    {
        parent::__construct();
    }

    /**
     * Execute the console command.
     *
     * @return int
     */
    public function handle()
    {
        // $pharmacy = Pharmacy::whereHas('products',$this->argument('id'))->get();
        // $pharmacy = Pharmacy::whereHas('product', function ($query) {
        //     $query->where('product_id', $this->argument('id'));
        // })->with('product')->get();
        $products = Product::where('id',$this->argument('id'))->with('pharmacy')->get();
    
            foreach ($products as $p) {
                
                $this->line($p->name);
         
                foreach($p->pharmacy->take(5) as $pharmacy ){
                    $this->line('id:'.$pharmacy->id .'/'.'Name:'.$pharmacy->name.'/'.'price:'. $pharmacy->pivot->price);
                 
                }
               

    }
}
}