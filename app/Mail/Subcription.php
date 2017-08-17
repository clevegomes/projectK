<?php

namespace App\Mail;

use App\Subscription;
use Illuminate\Bus\Queueable;
use Illuminate\Mail\Mailable;
use Illuminate\Queue\SerializesModels;
use Illuminate\Contracts\Queue\ShouldQueue;

class Subcription extends Mailable
{
    use Queueable, SerializesModels;

    public $subs;

    /**
     * Create a new message instance.
     *
     * @return void
     */
    public function __construct()
    {
//        Subscription $subs
//        this.$subs = $subs;
        $this->to('gomescleve@gmail.com','Cleve Gomes');

    }

    /**
     * Build the message.
     *
     * @return $this
     */
    public function build()
    {
            return $this->view('emails.subcriptions');
    }
}
