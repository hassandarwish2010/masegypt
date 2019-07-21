<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ImageGallery extends Model
{
    //captins
     protected $table = 'photogallery';

       protected $fillable = [
       'main_image', 'ar_title','en_title','afterimage'
  ];
}
