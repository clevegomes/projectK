@extends('app')

<div class="main-header main-landing">

    <div class="content-bg-wrap">
        <div class="content-bg bg-landing"></div>
    </div>
    <div class="container">
        <div class="row">
            <div class="col-lg-6 offset-lg-3 col-md-12 offset-md-0 col-sm-12 col-xs-12">
                <div class="main-header-content">
                    <a href="/" class="logo">
                        <img src="img/logo-landing.png" alt="Kroble">
                        <h6 class="logo-title"> Entrepreneurs. Services. Ecosystem</h6>

                    </a>
                    <pre class="tab"> </pre>
                    <h1>
                        World's First Global SocioCommerce Ecosystem!

                    </h1>




                    <pre class="tab"> </pre>


                    <p>We included all you may need to make it the best marketplace for 220+ services! Things like profile pages, newsfeed,
                        friend groups, statistics, birthdays, community badges, events calendar, full music player and
                        unique iconography! Its One of its kind! We are sure you would love it :-)
                    </p>


                    @if ($subscribedFlag == 'success')


                        <a data-scroll href="/"   class="btn btn-purple btn-sm">
                            Hurray! Welcome Onboard. Beta Testing is Coming Soon
                        </a>


                    @elseif($subscribedFlag == 'fail')
                          <a data-scroll href="/"   class="btn btn-purple btn-md">
                              Woho! You are already in our Beta Testing invite list.
                          </a>

                    @else

                        @if($errors->any())
                            <ul class="btn btn-primary btn-sm">
                                @foreach($errors->all() as $error)
                                    <li>{{ $error }}</li>
                                @endforeach
                            </ul>
                        @endif
                    <div class="ui-block ">

                        {!! Form::open() !!}
                        <div class="ui-block-content ">

                            <div class="row ">
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                    <div>
                                        {!! Form::email('email_id',null,['class' => 'form-control btn-sm','placeholder'=>"Email Id"]) !!}
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-xs-12">

                                    <div>
                                        <button class="btn btn-purple btn-sm">Invite for Beta Testing</button>
                                    </div>
                                </div>
                            </div>
                        </div>
                        {!! Form::close() !!}
                    </div>
                    @endif

                </div>
            </div>
        </div>
    </div>

    <img class="img-bottom" src="img/group-bottom.png" alt="friends">
    <img class="img-rocket" src="img/rocket.png" alt="rocket">
</div>