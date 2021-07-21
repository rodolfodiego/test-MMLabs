<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class EmailAddress extends Model
{
    use HasFactory;

    protected $table = 'email_addresses';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'email_address',
        'created_at',
        'updated_at'
    ];

    public function emails()
    {
        return $this->belongsToMany(Emails::class, 'email_address_pivots','emails_address_id','email_id');
    }
}
