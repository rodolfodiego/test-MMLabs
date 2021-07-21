<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use App\Models\EmailAddress;
use App\Models\Emails;
use App\Models\EmailAddressPivot;
use Illuminate\Http\Request;

class EmailController extends Controller
{
    public function getemails()
    {
        $emails = Emails::get();

        foreach($emails as $email){
            $email->emailaddress = $email->emailaddress()->get();
        }

        return  response()->json(['response'=> 'ok','emails' => $emails]);

    }

    public function getemailssearch(Request $request){

        $characters = '%' . $request->characters . '%';

        $emails = Emails::where('message_email', 'like', $characters)
                        ->orWhere('subject_email', 'like', $characters)->get();

        foreach($emails as $email){
            $email->emailaddress = $email->emailaddress()->get();
        }

        $emailsaddress = EmailAddress::where('email_address', 'like', $characters)->get();

        if(false){
            foreach($emailsaddress as $emailaddress){
                foreach($emails as $email){
                    if($email->emailaddress->id != $emailaddress->id ){
                        $email->emailaddress = $email->emailaddress()->get();
                    }
                }
            }
        }

        return  response()->json(['response'=> 'ok','emails' => $emails]);
    }

    public function saveemail(Request $request)
    {

        $existingemailaddress = EmailAddress::where(['email_address'=>$request->recipients])->first();

        if($request->id ){
            Emails::where('id', $request->id)->update([
                'subject_email' =>  $request->subjectEmail,
                'message_email' =>  $request->message,
            ]);
            return  response()->json(['response'=> 'ok']);

        }


        if($existingemailaddress){
            $idemailaddress = $existingemailaddress->id;

        }else{
            $emailaddress = new EmailAddress();
            $emailaddress->email_address =  $request->recipients;
            $emailaddress->save();

            $idemailaddress = $emailaddress->id;
        }


        $email = new Emails();
        $email->subject_email =  $request->subjectEmail;
        $email->message_email = $request->message;
        $email->save();

        $emailaddresspivot = new EmailAddressPivot();
        $emailaddresspivot->emails_address_id =  $idemailaddress;
        $emailaddresspivot->email_id = $email->id;
        $emailaddresspivot->save();

        return  response()->json(['response'=> 'ok']);

    }

    public function deleteemail(Request $request){

        Emails::where(['id'=> $request->idemail])->delete();
        return  response()->json(['response'=> 'ok']);

    }
}
