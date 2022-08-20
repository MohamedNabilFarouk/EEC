@extends('admin.layouts.app')


@section('toolbar')
    <div class="toolbar" id="kt_toolbar">
        <!--begin::Container-->
        <div id="kt_toolbar_container" class="container-fluid d-flex flex-stack">
            <!--begin::Page title-->
            <div class="d-flex align-items-center me-3">
                <!--begin::Title-->
                <h1 class="d-flex align-items-center text-dark fw-bolder my-1 fs-3">المنتجات
                    <!--begin::Separator-->
                    <span class="h-20px border-gray-200 border-start ms-3 mx-2"></span>
                    <!--end::Separator-->
                    <!--begin::Description-->
                    <small class="text-muted fs-7 fw-bold my-1 ms-1">تعديل</small>
                    <!--end::Description-->
                </h1>
                <!--end::Title-->
            </div>
            <!--end::Page title-->

        </div>
        <!--end::Container-->
    </div>
@endsection

@section('content')

    @include('admin.includes.messages')

    <div class="container-fluid page__container p-2">

        <div class="card rounded card-form__body card-body shadow-lg">
            <form method="post" action="{{ route('product.update', $product->id) }}" enctype="multipart/form-data">
                @csrf
                @method('put')

                <div class="form-group mb-10">
                    <label for="exampleFormControlInput1" class="required form-label">الاسم</label>
                    <input type='text' name="name" class="form-control" value="{{ $product->name }}" />
                </div>


                <div class="form-group mb-10">
                    <label for="exampleFormControlInput1" class="required form-label">التفاصيل</label>
                    <input type='text' name="des" class="form-control" value="{{ $product->des }}" />
                </div>




                <input type="hidden" value="{{count($product->pharmacy)}}" id="count">

{{-- @dd($product->pharmacy) --}}
                @foreach($product->pharmacy as $key=>$p)

                    <div class="row">

                        <div class="col-3">
                            <label>الصيدلية</label>
                            <select class="form-select" name='arr[{{$key}}][pharmacy]' aria-label="Select example">
                                @foreach ($pharmacies as $c)
                                <option  @if($c->id == $p->id) selected @endif  value="{{ $p->id }}">{{ $p->name }}</option>
                                @endforeach
                            </select>
                        </div>
                        <div class="col-3">
                            <label>qty</label>
                            <input type="text" class="form-control"  name="arr[{{$key}}][qty]" placeholder="Size" value="{{$p->pivot->qty}}">

                        </div>
                        <div class="col-3">
                            <label>Price</label>
                            <input type="text" class="form-control"  name="arr[{{$key}}][price]"placeholder="L.E." value="{{$p->pivot->price}}">
                        </div>
                    </div>
                @endforeach

                <input type="button" class="btn btn-dark float-md-right bt-sm" id='more' onclick="add_more_field();" value="اضف سعر صيدلية اخري +" width="10px">

                <div id="price_field">

                </div>







                <div class="form-group">
                    <label for="exampleFormControlInput1" class="required form-label">الصورة </label>
                    <input class="image_name" type="file" name="image" value="">
                </div>



                <div class="text-right mb-5">
                    <input type="submit" name="add" class="btn btn-success" value="تعديل">
                </div>
            </form>
        </div>
    </div>
    <!-- // END drawer-layout__content -->
    </div>
@stop
<script>
    var counter=0
    function add_more_field(){
             $('#price').hide();
        counter+=1;
        html='<div class="row" id="row'+counter+'">\
                <div class="col-3">\
                    <label>الصيدلية</label>\
                    <select class="form-select" name="arr['+counter+'][pharmacy]" aria-label="Select example"> @foreach ($pharmacies as $c) <option value="{{ $c->id }}">{{ $c->name }}</option> @endforeach </select>\
                </div>\
                <div class="col-3">\
                    <label>الكمية</label>\
                    <input type="text" class="form-control"  name="arr['+counter+'][qty]" placeholder="الكمية">\
                </div>\
                <div class="col-3">\
                    <label>السعر</label>\
                    <input type="text" class="form-control" name="arr['+counter+'][price]" placeholder="جنية">\
                </div>\
    </div>'
        $('#price_field').append(html);
    }
</script>