<?php

namespace App\Http\Controllers\Web\Landing;

use App\Category;
use App\Discover;
use App\ImageGallery;
use App\Information;
use App\Process;
use App\Setting;
use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use App\Banner;
use App\About;
use App\Product;
use App\News;
use Carbon\Carbon;

class HomeController extends Controller
{
// public function landing(Request $request){

//     $setting = Setting::first();
//    $banners=Banner::all();
//    $info=Information::paginate(4);

//     $projects=Product::orderBy('position','asc')->orderBy('id','desc')->paginate(8);
//     $discovers=Discover::orderBy('id','desc')->paginate(6);
//     //dd($smallprojects);
//    $setting=Setting::first();
//    //dd($setting);
//     $blogs=News::orderBy('id','desc')->paginate(3);
//     $processes=Process::orderBy('id','desc')->limit(4)->get();
//     //dd($process);
//     //dd($projects[1]);
//     $cats=Category::orderBy('id','desc')->paginate(4);
//     foreach ($cats as $cat){
//         $cat->full_image=asset('public/uploads/'.$cat->image);
//         $cat->image=asset('public/uploads/thumbs/'.$cat->image);

//     }
//     $photos=ImageGallery::all();
//     //dd($cats);
//     foreach ($photos as $ph){
//         $ph->main_image=asset('public/uploads/thumbs/'.$ph->main_image);
//         $ph->afterimage=asset('public/uploads/thumbs/'.$ph->afterimage);
//     }
//    foreach ($banners as $banner){
//        $banner->image=asset('public/uploads/'.$banner->image);
//    }
//     foreach ($blogs as $blog){
//         $blog->image=asset('public/uploads/thumbs/'.$blog->image);
//     }
//     return view('web.landing.index',compact('banners','setting','info',
//         'projects','page','blogs','cats','photos','discovers','processes'));
// }

    public function landing() {
    $lang = cookie_get('lang', 'en');
    return redirect()->route('home', $lang);
  }

  /**
   * Set language
   *
   * @return response
   */
  public function setLanguage($lang) {
    $locales = locales();

    if (array_key_exists($lang, $locales)) {
        cookie_set('lang', $lang);
    }

    $prev_path = url()->previous();

    $current_path = preg_replace('/en|ar/', $lang, $prev_path, 1);

    return redirect(url($current_path));
  }

  /**
   * landing page
   *
   * @return response
   */
  public function index($lang, Request $request) {
    $setting = Setting::first();
    $banners = Banner::all();
    foreach ($banners as $banner) {
      $banner->image = asset('public/uploads/thumbs/' . $banner->image);
    }

    $info=Information::limit(4)->get();
   $projects=Product::orderBy('position','asc')->orderBy('id','desc')->limit(8)->get();
   $discovers=Discover::orderBy('id','desc')->limit(8)->get();

    // $products = Product::limit(5)->inRandomOrder()->get();
    // foreach ($products as $product) {
    //   $product->image = asset('public/uploads/thumbs/' . $product->image);
    //   $product->en_name = clean_limit($product->en_name, 15);
    //   $product->en_name = clean_limit($product->en_name, 15);
    //   $product->en_details = clean_limit($product->en_details, 50);
    //   $product->en_details = clean_limit($product->en_details, 50);
    // }

      $blogs=News::orderBy('id','desc')->paginate(3);
    $processes=Process::orderBy('id','desc')->limit(4)->get();
    //dd($processes);
    //dd($projects[1]);
    $cats=Category::orderBy('id','desc')->paginate(4);
    foreach ($cats as $cat){
        $cat->full_image=asset('public/uploads/'.$cat->image);
        $cat->image=asset('public/uploads/thumbs/'.$cat->image);

    }
    $photos=ImageGallery::all();
   // dd($photos);
    foreach ($photos as $ph){
        $ph->main_image=asset('public/uploads/thumbs/'.$ph->main_image);
        $ph->afterimage=asset('public/uploads/thumbs/'.$ph->afterimage);
    }

    foreach ($blogs as $blog){
        $blog->image=asset('public/uploads/thumbs/'.$blog->image);
    }
    return view('web.landing.index',compact('banners','setting','info',
        'projects','page','blogs','cats','photos','discovers','processes'));


  }
}

