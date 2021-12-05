<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Permission extends Model
{
    protected $table = 'u728505871_sitesud.permissions';
    public function roles() {
        return $this->belongsToMany(Role::class);
    }
}
