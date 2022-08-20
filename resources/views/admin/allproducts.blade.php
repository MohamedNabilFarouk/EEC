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
    <div class="container">

    <div class="row height d-flex justify-content-center align-items-center">

        <div class="col-md-8">
            <form action="{{route('search')}}" method='GET'>
                @csrf
          <div class="search">
            <i class="fa fa-search"></i>
            <input type="text" name='param' class="form-control" placeholder="ابحث باسم المنتج">
          </div>
        </div>
          <div class="col-md-2"> 
            <button class="btn btn-primary">بحث</button> 
        </form>

            <a href="{{ route('Allproducts') }}" class="btn btn-success">الكل</a> 

          </div>
          
        
      </div>
    </div>
@endsection
    @section('content')
    @include('admin.includes.messages')

<!--begin::Section-->
<div class="mb-17">
											<!--begin::Content-->
											<div class="d-flex flex-stack mb-5">
												<!--begin::Title-->
												<h3 class="text-black">Products</h3>
												<!--end::Title-->
												<!--begin::Link-->
												<!-- <a href="#" class="fs-6 fw-bold link-primary">View All Offers</a> -->
												<!--end::Link-->
											</div>
											<!--end::Content-->
											<!--begin::Separator-->
											<div class="separator separator-dashed mb-9"></div>
											<!--end::Separator-->
											<!--begin::Row-->
											<div class="row g-10">
                                                @foreach($products as $p)
												<!--begin::Col-->
												<div class="col-md-3">
													<!--begin::Hot sales post-->
													<div class="card-xl-stretch me-md-6">
														<!--begin::Overlay-->
														<a class="d-block overlay" data-fslightbox="lightbox-hot-sales" href="{{ route('details',$p->id) }}">
															<!--begin::Image-->
															<div class="overlay-wrapper bgi-no-repeat bgi-position-center bgi-size-cover card-rounded min-h-175px" style="background-image:url('{{$p->image}}')"></div>
															<!--end::Image-->
															<!--begin::Action-->
															<div class="overlay-layer card-rounded bg-dark bg-opacity-10">
																<!--begin::Svg Icon | path: icons/duotone/Interface/Eye.svg-->
																<span class="svg-icon svg-icon-2hx svg-icon-dark">

																</span>
																<!--end::Svg Icon-->
															</div>
															<!--end::Action-->
														</a>
														<!--end::Overlay-->
														<!--begin::Body-->
														<div class="mt-5">
															<!--begin::Title-->
															<a href="#" class="fs-4 text-dark fw-bolder text-hover-primary text-dark lh-base">{{$p->name}}</a>
															<!--end::Title-->
															<!--begin::Text-->
															<div class="fw-bold fs-5 text-gray-600 text-dark mt-3">{{ Str::limit($p->des,30)}}</div>
															<!--end::Text-->
															<!--begin::Text-->
															<div class="fs-6 fw-bolder mt-5 d-flex flex-stack">
																<!--begin::Label-->
																<span class="badge badge-white border-dashed fs-2 fw-bolder text-dark p-2">
																<!--end::Label-->
																<!--begin::Action-->
																<a href="{{ route('details',$p->id) }}" class="btn btn-primary er fs-6 px-8 py-4" >تفاصيل</a>
                                                                <!-- </form> -->
																<!--end::Action-->
															</div>
															<!--end::Text-->
														</div>
														<!--end::Body-->
													</div>
													<!--end::Hot sales post-->
												</div>
												<!--end::Col-->
                                                @endforeach

											</div>
											<!--end::Row-->
										</div>
										<!--end::Section-->
                                        {!! $products->render() !!}





@endsection
