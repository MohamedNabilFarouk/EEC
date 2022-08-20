@extends('admin.layouts.app')
@section('toolbar')
<div class="toolbar" id="kt_toolbar">
    <!--begin::Container-->
    <div id="kt_toolbar_container" class="container-fluid d-flex flex-stack">
        <!--begin::Page title-->
        <div class="d-flex align-items-center me-3">
            <!--begin::Title-->
            <h1 class="d-flex align-items-center text-dark fw-bolder my-1 fs-3">{{__('Dashboard')}}
            <!--begin::Separator-->
            
            <span class="h-20px border-gray-200 border-start ms-3 mx-2"></span>
            <!--end::Separator-->
            <!--begin::Description-->
            <small class="text-muted fs-7 fw-bold my-1 ms-1"></small>
            <!--end::Description--></h1>
            <!--end::Title-->
        </div>
        <!--end::Page title-->

        
    </div>
    <!--end::Container-->
    </div>
@endsection
    @section('content')
    @include('admin.includes.messages')


<!-- SECTION -->
<div class="section" >
    <!-- container -->
    <div class="container">
        <!-- row -->
        <div class="row  ">
           <!-- Product main img -->
					<div class="col-md-5 col-md-push-1 ">
						<div id="product-main-img">


							<div class="product-preview">
								<img src="{{asset($product->image)}}" alt="" style="width: 70%;">
							</div>


						</div>
					</div>

            <!-- Product details -->
            <div class="col-md-5">
                <div class="product-details trans">
                    <h2 class="product-name">{{$product->name}}</h2>
                    <div>
                        <div class="product-rating">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-o"></i>
                        </div>
                        {{-- <a class="review-link" href="#">10 Review(s) | Add your review</a> --}}
                    </div>
                    {{-- <div>
                        <h3 class="product-price"> {{$product->price}}  جنية</h3>
                      
                    </div> --}}
                    <p>{{$product->des}}</p>
                    <span class="label label-lg label-light-primary label-inline">{{ $product->qty ?? 0 }} قطعة</span>
                    


                </div>
            </div>

        </div>
        <!-- /row -->
    </div>
    <!-- /container -->

    <br>

      <!--begin::Body-->
      <div class="card-body py-3">
        <!--begin::Table container-->
        <div class="table-responsive rounded">
            <!--begin::Table-->
            <table class="table table-hover align-middle gs-0 gy-4">
                <!--begin::Table head-->
                <thead>
                    <tr class="text-center border-3 fw-bolder text-muted bg-light">
                        <th class="ps-4 min-w-325px rounded-start">الصيدلية</th>
                        <th class="ps-4 min-w-325px rounded-start">العنوان</th>
                        <th class="ps-4 min-w-325px rounded-start">السعر</th>

                    </tr>
                </thead>
                <!--end::Table head-->
                <!--begin::Table body-->
                <tbody>
                @foreach($product->pharmacy as $p)
                    <tr class="text-center border-3 m-auto align-middle">
                        <td class="px-3">
                            <a href="#" class="text-dark fw-bolder text-hover-primary d-block mb-1 fs-6">{{$p->name}}</a>
                        </td>
                        <td class="px-3">
                            <a href="#" class="text-dark fw-bolder text-hover-primary d-block mb-1 fs-6">{{$p->address}}</a>
                        </td>
                        <td class="px-3">
                            <a href="#" class="text-dark fw-bolder text-hover-primary d-block mb-1 fs-6">{{$p->pivot->price}}</a>
                        </td>

                    </tr>
                    @endforeach

                </tbody>
                <!--end::Table body-->
            </table>
            <!--end::Table-->
        </div>
        <!--end::Table container-->
    </div>
    <!--begin::Body-->
</div>
<!-- /SECTION -->






@stop
