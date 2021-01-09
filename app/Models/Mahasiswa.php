<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\organization;

class Mahasiswa extends Model
{
    use HasFactory;
    protected $table = 'mahasiswa';
    protected $fillable = [
        'npm',
        'name',
        'slug',
        'class',
        'alamat',
        'organization_id',
    ];
    public function organization()
    {
        return $this->belongsTo(organization::class);
    }
}
