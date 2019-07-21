<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Discover extends Model
{
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'ar_title', 'ar_details','en_title', 'en_details'
    ];

    /**
     * Get products for category
     *
     * @return response
     */

}
