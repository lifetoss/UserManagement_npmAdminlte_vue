<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Contracts\Auth\MustVerifyEmail;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Laravel\Passport\HasApiTokens;  //laravel passport of api auth
//composer require laravel/passport
//php artisan migrate
//php artisan passport:install
// and then add code on ur file user.phh and authServiceProvider , config/auth
// run this command php artisan vendor:publish --tag=passport-components
// it wil build Vue components and we can access that
// passport on resources and these are Vue component
// and copy some code on app.js
// and it is use on developer.vue
// do same thing for jwt 
// imp => bt u use jwt for laravel api this is best

class User extends Authenticatable
{
    use HasApiTokens, Notifiable;   //laravel passport of api auth

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'name', 'email', 'password', 'bio', 'photo', 'type'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];
}
