<?php

namespace App\Http\Requests\Admin;

use Illuminate\Foundation\Http\FormRequest;

class SettingRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return auth()->check();
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array
     */
    public function rules()
    {
        return [
            'phone' => 'max:191',
            'email' => 'email|max:191|nullable',
            'address' => 'max:191',
            'lat' =>'numeric',
            'lon' =>'numeric',
            'facebook' => 'url|required',
            'instagram' => 'url|required',
            'youtube' => 'url|required',
            'twitter' => 'url|required',
            'linkedin' => 'url|required',
            'titleDiscover_en'=>'required',
            'titleDiscover_ar'=>'required',
            'titleBAfter_en'=>'required',
            'titleBAfter_ar'=>'required',
            'titleCat_en'=>'required',
            'titleCat_ar'=>'required',
            'titleprocess_ar'=>'required',
            'titleprocess_en'=>'required',
            'permalink' => 'required',
            'keywords' => 'required',
            'description' => 'required',
             'about_en' => 'required',
          'about_ar' => 'required',




        ];
    }
}
