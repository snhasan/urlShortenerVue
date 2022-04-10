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
