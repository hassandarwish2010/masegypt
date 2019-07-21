<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/
Route::get('/', 'Web\Landing\HomeController@landing')->name('landing');

// set cookie language
Route::get('/set-language/{lang}', 'Web\Landing\HomeController@setLanguage')->name('set.language')->where('lang', 'ar|en');

// Routes with lang prefix
Route::group([
    'prefix' => '{lang}',
    'where' => ['lang' => '(en|ar)'],
    'middleware' => 'lang'
], function() {
    // Landing page in lang
    Route::get('/', 'Web\Landing\HomeController@index')->name('home');


    // About pages
    Route::get('/about/{permalink}', 'Web\About\AboutController@index')->name('about');

    // Products for category page
    Route::get('/products/{cat}', 'Web\Categories\ProductsController@index')->name('products');

    // Product page
    Route::get('/product/{permalink}', 'Web\Products\ProductsController@index')->name('product');
// Product all
    Route::get('/project/{permalink}', 'Web\Products\ProductsController@index')->name('products');
    // News page
    Route::get('/blogs', 'Web\Blog\BlogController@index')->name('news');

    // New page
    Route::get('blog/{permalink}', 'Web\Blog\BlogController@new')->name('new');

    // Jobs page
    Route::get('/jobs', 'Web\Jobs\JobsController@index')->name('jobs');

    // Job page
   // Route::get('/job/{job_id}', 'Web\Jobs\JobsController@job')->name('job');
//cat
    Route::get('/category/{id}', 'Web\Products\ProductsController@landing')->name('cats');
   //get contact
    Route::get('/contact-us', 'Web\Contacts\ContactsController@GetForm')->name('getcontact');

    // Contact page
    Route::get('/contact', 'Web\Contacts\ContactsController@index')->name('contact');
    // thank
    //Route::get('/thanks', 'Web\Contacts\ContactsController@thanks')->name('contact');
    Route::post('thanks', 'Web\Contact\ContactController@submit')->name('thanks');


});
//User routes
//Main landing page


 //Main Blog page
//Route::get('Blog', 'Web\Blog\BlogController@index')->name('blogs');
//Route::get('Blog/{permalink}', 'Web\Blog\BlogController@new')->name('new');
//Main about page
//Route::get('Blog', 'Web\Blog\BlogController@index')->name('blogs');
//Route::get('about/{permalink}', 'Web\About\AboutController@index')->name('about');
// Contact page
//Route::get('/contact', 'Web\Contacts\ContactsController@index')->name('contact');

Route::Post('/send-mail', 'Web\Contacts\ContactsController@SendMail')->name('sendmail');

// Route::get('refreshcaptcha', 'Web\Contact\ContactController@refreshCaptcha');
// project page
//Route::get('/category/{id}', 'Web\Products\ProductsController@landing')->name('cats');
//Route::get('/project/{permalink}', 'Web\Products\ProductsController@index')->name('product');












//Admin routes
Route::prefix('admin-panel')->group(function () {
  //Auth routes
  Route::get('/', 'Auth\LoginController@showLoginForm')->name('home.login');
  Route::get('login', 'Auth\LoginController@showLoginForm')->name('login');
  Route::post('login', 'Auth\LoginController@login');
  Route::post('logout', 'Auth\LoginController@logout')->name('logout');

  // Password Reset Routes...
  Route::get('password/reset', 'Auth\ForgotPasswordController@showLinkRequestForm')->name('password.request');
  Route::post('password/email', 'Auth\ForgotPasswordController@sendResetLinkEmail')->name('password.email');
  Route::get('password/reset/{token}', 'Auth\ResetPasswordController@showResetForm')->name('password.reset');
  Route::post('password/reset', 'Auth\ResetPasswordController@reset');


  Route::middleware('auth')->group(function () {
    //Dashboard
    Route::get('/dashboard', 'Admin\DashboardController@index')->name('admin.dashboard');
    Route::get('/', 'Admin\DashboardController@index')->name('admin.home');

    //Admins
    Route::resource('/admins', 'Admin\AdminsController', ['except' => ['show']]);

    //Categories
    Route::resource('/categories', 'Admin\CategoriesController', ['except' => ['show']]);
      //discovers
      Route::resource('/discovers', 'Admin\DiscoversController', ['except' => ['show']]);
    //Products
    Route::resource('/products', 'Admin\ProductsController', ['except' => ['show']]);
    //information
    Route::resource('/information', 'Admin\InformationController', ['except' => ['show',]]);

    //Products gallery
    Route::get('/product-gallery/{product_id}/show', 'Admin\ProductGalleryController@show')->name('show.product.gallery');
    Route::get('/product-gallery/{product_id}/create', 'Admin\ProductGalleryController@create')->name('create.product.gallery');
    Route::post('/product-gallery/{product_id}/store', 'Admin\ProductGalleryController@store')->name('store.product.gallery');
    Route::delete('/product-gallery/{image_id}/destroy', 'Admin\ProductGalleryController@destroy')->name('destroy.product.gallery');
      //images_gallery
      Route::resource('/images-gallery', 'Admin\ImageGalleryController', ['except' => ['show']]);

      //Banners
    Route::resource('/banners', 'Admin\BannersController', ['except' => ['show']]);

    //Agents
    Route::resource('/agents', 'Admin\AgentsController', ['except' => ['show']]);

    //Jobs
    Route::resource('/jobs', 'Admin\JobsController', ['except' => ['show']]);

    //Jobs apply
    Route::resource('/applies', 'Admin\AppliesController', ['except' => ['create, store, edit, update']]);

    //News
    Route::resource('/news', 'Admin\NewsController', ['except' => ['show']]);
//Process
      Route::resource('/processes', 'Admin\ProcessController', ['except' => ['show']]);
    //Settings
    Route::get('/setting', 'Admin\SettingController@index')->name('setting.index');
    Route::put('/setting', 'Admin\SettingController@update')->name('setting.update');

    //Mails
    Route::resource('{status}/mails', 'Admin\MailsController', ['except' => ['create', 'edit', 'update', 'store']]);
    Route::post('/mails/{mail_id}/reply', 'Admin\MailsController@reply')->name('mails.reply');

    //Pages
    Route::resource('/about', 'Admin\AboutController', ['except' => ['show']]);

    // Profile page
    Route::get('/profile', 'Admin\ProfileController@get')->name('admin.get.profile');
    Route::post('/profile', 'Admin\ProfileController@save')->name('admin.profile.save');
  });
});
