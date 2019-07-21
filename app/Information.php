<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Information extends Model
{
  /**
   * The attributes that are mass assignable.
   *
   * @var array
   */
  protected $fillable = [
      'ar_title', 'number','en_title',
  ];


}
