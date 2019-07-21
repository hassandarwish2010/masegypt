<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Setting extends Model
{
  /**
   * The attributes that are mass assignable.
   *
   * @var array
   */
    protected $fillable = [
        'phone', 'email', 'address', 'lat','twitter','lon', 'facebook', 'youtube','titleCat_ar','titleBAfter_ar','titleprocess_ar','titleDiscover_ar',
        'titleCat_en','titleBAfter_en','titleprocess_en','titleDiscover_en','instagram', 'linkedin','permalink','keywords','description','about_en','about_ar',
    ];
}
