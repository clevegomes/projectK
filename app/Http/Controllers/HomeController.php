<?php

namespace App\Http\Controllers;

use App\Http\Requests\CreateSubscriptionRequest;
use App\Subscription;
use Request;

class HomeController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {

        $subcount= Subscription::count();

        return view('pages.home')->with(['subscribedFlag'=>'null','subcount'=>$subcount]);
    }


    public function subscription(){

//        $subscriptionsList= Subscription::all('email');
        $subscriptionsList= Subscription::orderBy('id','desc')->get();

        return view('pages.subscription')
            ->with(['subscriptionsList'=>$subscriptionsList]);

    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(CreateSubscriptionRequest $request)
    {


        $email_id = $request->get('email_id');
        $subscription = Subscription::where('email',$email_id)->first();
        if($subscription){
            $subcount= Subscription::count();
            return view('pages.home')->with(['subscribedFlag'=>"fail",'subcount'=>$subcount]);

        }
        else{
//            $subscription->delete();
            $subscription = new Subscription();
            $subscription->email = $email_id;
            $subscription->save();
            $subcount= Subscription::count();

            return view('pages.home')->with(['subscribedFlag'=>"success",'subcount'=>$subcount]);
        }

    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
