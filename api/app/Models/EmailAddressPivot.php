<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EmailAddressPivot extends Model
{
    use HasFactory;

    protected $table = 'email_address_pivots';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'emails_address_id',
        'email_id',
        'created_at',
        'updated_at'
    ];
}
