<!doctype html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Kroble</title>


    <!-- Styles -->
    <link href="{{ asset('css/all.css')}}" rel="stylesheet" type="text/css" />

</head>
<body>

@yield('sidebar-left')
@yield('sidebar-right')
@yield('top-menu')
@yield('content')

@section('footer')
<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
            (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-75123115-1', 'auto');
    ga('send', 'pageview');

</script>
@show
</body>


</html>