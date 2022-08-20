@extends('admin.layouts.app')
{{-- @dd($pharmacy) --}}

@section('toolbar')
    <div class="toolbar" id="kt_toolbar">
        <!--begin::Container-->
        <div id="kt_toolbar_container" class="container-fluid d-flex flex-stack">
            <!--begin::Page title-->
            <div class="d-flex align-items-center me-3">
                <!--begin::Title-->
                <h1 class="d-flex align-items-center text-dark fw-bolder my-1 fs-3">الصيدلية
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
            <form method="post" action="{{ route('pharmacy.update', $pharmacy->id) }}" enctype="multipart/form-data">
                @csrf
                @method('put')

                <div class="form-group mb-10">
                    <label for="exampleFormControlInput1" class="required form-label">الاسم</label>
                    <input type='text' name="name" class="form-control" value="{{ $pharmacy->name }}" />
                </div>


                <div class="form-group mb-10">
                    <label for="exampleFormControlInput1" class="required form-label">العنوان</label>
                    <input type='text' name="address" class="form-control" value="{{ $pharmacy->address }}" />
                </div>


                {{-- <div class="form-group mb-10">
                    <label for="exampleFormControlInput1" class="required form-label">المنتجات</label>
                    <select class="form-select" name='product[]' aria-label="Select example" multiple>
                        @foreach ($products as $c)

                        <option @foreach($pharmacy->product as $p) @if($c->id == $p->id) selected @endif  @endforeach value="{{ $c->id }}">{{ $c->name }}</option>

                        @endforeach
                    </select>
                </div> --}}



                <div class="text-right mb-5">
                    <input type="submit" name="add" class="btn btn-success" value="تعديل">
                </div>
            </form>
        </div>
    </div>
    <!-- // END drawer-layout__content -->
    </div>
@stop
