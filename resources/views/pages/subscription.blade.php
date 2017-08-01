@extends('layout')
@section('centre-content')
    <div class="container">
        <div class="row">
            <div class="col-xl-9 push-xl-3 col-lg-9 push-lg-3 col-md-12 col-sm-12 col-xs-12">
                <div class="ui-block">
                    <div class="ui-block-title">
                        <h6 class="title">Subcriptions for  Beta Testing</h6>
                        <h6> Counter:{{$subscriptionsList->count()}}</h6>
                        <a href="" class="more"><svg class="olymp-three-dots-icon"><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#olymp-three-dots-icon"></use></svg></a>
                    </div>

                    <ul class="notification-list friend-requests">
                        @foreach($subscriptionsList as $subscription)
                            <li>
                                <div class="author-thumb">
                                    <img src="img/avatar45-sm.jpg" alt="author">
                                </div>
                                <div class="notification-event">
                                    <a  class="h6 notification-friend">
                                        {{$subscription->email}}
                                    </a>
                                </div>
                                <div class="post__date">
                                    <time class="published notification-link"  >
                                         ( {{Carbon\Carbon::parse($subscription->created_at)->format('d M Y')}} )
                                    </time>
                                </div>
                            </li>

                        @endforeach

                    </ul>

                </div>

            </div>

            <div class="col-xl-3 pull-xl-9 col-lg-3 pull-lg-9 col-md-12 col-sm-12 col-xs-12 responsive-display-none">
                <div class="ui-block">
                    <div class="your-profile">
                        <div class="ui-block-title ui-block-title-small">
                            <h6 class="title">Your PROFILE</h6>
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </div>






@endsection