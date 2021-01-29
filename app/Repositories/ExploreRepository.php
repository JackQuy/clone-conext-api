<?php

namespace App\Repositories;

use App\Models\Explore;

class ExploreRepository implements RepositoryInterface
{
    public function getAll()
    {
        // return "ahihihoho";
        return Explore::all();
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
        return Explore::create($data);
        // return $data;
    }

    public function show($id){
        return Explore::find($id);
    }

    public function edit($id){}

    public function update($data, $id)
    {
        return Explore::where('id', $id)->update($data);
    }

    public function destroy($id)
    {
        return Explore::where('id', $id)->delete();
    }
}