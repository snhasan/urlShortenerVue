<?php

namespace App\Http\Controllers;
use App\Models\ShortendURLs;

use Illuminate\Http\Request;
use Illuminate\Support\Str;
use Response;
use Carbon\Carbon;

class URLShortenerController extends Controller
{
    public function urlShort(Request $request){

        $this->validate($request, [
            'link' => 'required|url'
        ]);

        $curl = curl_init();

        curl_setopt_array($curl, array(
        CURLOPT_URL => "https://safebrowsing.googleapis.com/v4/threatMatches:find?key=AIzaSyCyNXpmvlnrdaj7zJTkgk5KMkxu4zpy8Fw",
        CURLOPT_RETURNTRANSFER => true,
        CURLOPT_ENCODING => "",
        CURLOPT_MAXREDIRS => 10,
        CURLOPT_TIMEOUT => 30,
        CURLOPT_HTTP_VERSION => CURL_HTTP_VERSION_1_1,
        CURLOPT_CUSTOMREQUEST => "POST",
        CURLOPT_POSTFIELDS => '  {
        "client": {
            "clientId":      "urlshortener-346716",
            "clientVersion": "1.5.2"
        },
        "threatInfo": {
            "threatTypes":      ["MALWARE", "SOCIAL_ENGINEERING"],
            "platformTypes":    ["WINDOWS"],
            "threatEntryTypes": ["URL"],
            "threatEntries": [
                {"url": ${#request->link}}
                ]
            }
        }',
        CURLOPT_HTTPHEADER => array(
            "cache-control: no-cache",
            "content-type: application/json",
            "postman-token: b05b8d34-85f2-49cf-0f8e-03686a71e4e9"
        ),
        ));

        $response = curl_exec($curl);
        $err = curl_error($curl);

        curl_close($curl);

        if ($err) {
            return response()->json([ 'success' => false, 'message' => 'link could not be varified!', 'data' => null]);
        } 

        $check_url = ShortendURLs::where('mainlink',$request->link)->first();

        if($check_url){

            return response()->json([ 'success' => true, 'message' => 'link shortend successfully!', 'data' =>  $check_url]);
        }

        $letter = array_merge(range('a','z'),range('A','Z'));
        $randInt = rand(0,9);
        $hash = $letter[rand(0,51)].$randInt.Str::random(4);

        $url = new ShortendURLs();

        $url->mainlink       = $request->link;
        $url->hash           = $hash;
        $url->created_at     = Carbon::now()->timestamp;

        try{
            
            $url->save();

            return response()->json([ 'success' => true, 'message' => 'link shortend successfully!', 'data' =>  $url]);
            
        }catch (\Exception $exception)
        {

            return response()->json([ 'success' => false, 'message' => 'link could not be shortend successfully!', 'data' => null]);

        }        
        
    }

    public function redirectURL($hash)
    {
        $url = ShortendURLs::where('hash',$hash)->first();
    
        if($url)
        {
            return redirect()->to($url->mainlink);
        }

        return redirect()->back();
        }

    


}
