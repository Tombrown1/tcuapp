@section('title', 'Console Subunit')  
@extends('layouts.admin_master')

@section('admin')

            <!-- dashboard inner -->
            <div class="midde_cont">
                  <div class="container-fluid">
                     <div class="row column_title">
                        <div class="col-md-12">
                           <div class="page_title">
                              <h2>Manage Console Unit Members</h2>
                           </div>
                        </div>
                     </div>

                    <div class="col-md-12">
                           <div class="white_shd full margin_bottom_30">
                             
                   
                              <div class="table_section padding_infor_info">
                                 <div class="table-responsive-sm">
                                    <table class="table">
                                       <thead>
                                          <tr>
                                             <td>#</td>
                                             <th>Firstname</th>                                             
                                             <th>Lastname</th>                                             
                                             <th>Posted By</th>
                                             <th>Phone</th>
                                             <th>Gender</th>
                                             <th>Time Posted</th>
                                             <th>End Date</th>                                          
                                          </tr>
                                       </thead>
                                       <tbody>
                                          @unless($console_posted_member->isEmpty())
                                          @foreach($console_posted_member as $console_posted)
                                          <tr>
                                             <td>{{ $loop->index + 1}}</td>
                                             <td>{{App\Models\UserDetail::find($console_posted->member_id)->firstname}}</td>
                                             <td>{{App\Models\UserDetail::find($console_posted->member_id)->lastname}}</td>
                                             <td>{{App\Models\User::find($console_posted->user_id)->name}}</td>
                                             <td>{{App\Models\UserDetail::find($console_posted->member_id)->work_phone}}</td>
                                             <td>{{App\Models\UserDetail::find($console_posted->member_id)->gender}}</td>
                                             <td>{{$console_posted->created_at->diffForHumans()}}</td>
                                             <td>{{$console_posted->end_date}}</td>
                                                                             
                                          </tr>
                                          @endforeach
                                          @else
                                             <tr>
                                                <td></td>
                                                <td><p>No Record Found for Console Subunit</p></td>
                                             </tr>
                                          @endunless
                                       </tbody>
                                    </table>
                                 </div>
                              </div>
                           </div>
                        </div>
                        

      
           

@endsection