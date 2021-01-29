<?php

namespace App\Repositories;

use App\Models\Expertise;

class ExpertiseRepository implements RepositoryInterface
{
    public function getAll()
    {
        // return "ahihihoho";
        return Expertise::all();
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
        return Expertise::create($data); //post
    }

    public function show($id)
    {
        return Expertise::find($id); //post/$id
    }
    public function edit($id){}

    public function update($data, $id)
    {
        return Expertise::where('id', $id)->update($data);
    }

    public function destroy($id)
    {
        return Expertise::where('id', $id)->delete();
    }
}