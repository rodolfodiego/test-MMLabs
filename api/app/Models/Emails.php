<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Emails extends Model
{
    use HasFactory;

    protected $table = 'emails';

    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'subject_email',
        'message_email',
        'created_at',
        'updated_at'
    ];

    public function emailaddress()
    {
        return $this->belongsToMany(EmailAddress::class, 'email_address_pivots','email_id','emails_address_id');
    }
}
