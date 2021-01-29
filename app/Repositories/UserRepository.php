<?php

namespace App\Repositories;

use App\Models\User;

class UserRepository implements RepositoryInterface
{
    public function getAll()
    {
        // return "ahihihoho";
        return User::all();
    }
    public function create(){}

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    
    public function store($data)
    {
        return User::create($data); //post
    }

    public function show($id)
    {
        return User::find($id); //post/$id
    }
    public function edit($id){}

    public function update($data, $id)
    {
        return User::where('id', $id)->update($data);
    }

    public function destroy($id)
    {
        return User::where('id', $id)->delete();
    }
}