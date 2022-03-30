@php
  $images = DB::table('galleries')->get();
@endphp

@section('title', 'Gallery')
@extends('page.page_master')

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
<br> <br>

    <!-- ======= Portfolio Section ======= -->
    <div id="portfolio" class="portfolio-area area-padding fix">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <div class="section-headline text-center">
              <h2>TCU CATCH UP MOMENT</h2>
            </div>
          </div>
        </div>
        <!-- <div class="row wesome-project-1 fix"> -->
          <!-- Start Portfolio -page -->
          <!-- <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active">All</li>
              <li data-filter=".filter-app">Cable Subunit</li>
              <li data-filter=".filter-card">Camera Subunit</li>
              <li data-filter=".filter-web">Console Subunit</li>
              <li data-filter=".filter-web">Sales and Production Subunit</li>
            </ul>
          </div> -->
        <!-- </div> -->

        <div class="row awesome-project-content portfolio-container">

          <!-- portfolio-item start -->
            @foreach($images as $image)
              <div class="col-md-4 col-sm-4 col-xs-12 portfolio-item filter-app portfolio-item">
              <div class="single-awesome-project">
                <div class="awesome-img">
                  <a href="#"><img src="{{asset($image->image)}}" alt="" /></a>
                  <div class="add-actions text-center">
                    <div class="project-dec">
                      <a class="portfolio-lightbox" data-gallery="myGallery" href="{{asset($image->image)}}">
                        <h4>Business City</h4>
                        <span>Web Development</span>
                      </a>
                    </div>
                  </div>
                </div>
              </div>
            </div>
            @endforeach
          <!-- portfolio-item end -->
        </div>
      </div>
    </div><!-- End Portfolio Section -->

  

@endsection