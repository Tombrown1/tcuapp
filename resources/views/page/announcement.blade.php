@extends('page.page_master')
@section('title', 'View Announcement')
@section('content')


<!-- <section id="breadcrumbs" class="breadcrumbs">
      <div class="container">

        <div class="d-flex justify-content-between align-items-center">
          <h2>Gallery</h2>
          <ol>
            <li><a href="index.html">Home</a></li>
            <li>Team</li>
          </ol>
        </div>

      </div>
</section> -->


    <!-- ======= Portfolio Section ======= -->
    <id="portfolio" class="portfolio-area area-padding fix">
      <div class="container">
       
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="section-headline text-center">
                     <br><br><br><br><br>
                    <h2>Unit Announcement</h2>
                </div>
            </div>  
            <div class="col-md-8">
                            <div class="card mt-3">
                                <div class="card-body">
                                    <div class="card">
                                        <h3>{{$view_announce->title}}</h3> <br>
                                        <img src="{{asset('/storage/'.$view_announce->image)}}"  alt=""> <br>
                                        <p class="text-justify">{{$view_announce->message}}</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="col-md-4">
                            <div class="card mt-3">
                                <div class="card">
                                    <div class="card-header">
                                    <h3 class="d-flex">Category</h3>
                                    </div>
                                    <div class="card-body">
                                        <div class="card">
                                            @foreach($announce_cate as $announce_cat)
                                                <ul>
                                                    <li class="list-style">
                                                    <h5><a href="#">{{$announce_cat->name}}</a></h5>
                                                    </li>
                                                </ul>
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>          
        </div>  
      </div>
    <!-- End Portfolio Section -->

  

@endsection