<?php

namespace App\Repositories;

use App\Models\BusinessType;

class BusinessTypeRepository implements RepositoryInterface
{
    public function getAll()
    {
        // return "ahihihoho";
        return BusinessType::all();
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
        return BusinessType::create($data);
    }

    public function show($id){
        return BusinessType::find($id);
    }
    public function edit($id){}

    public function update($data, $id)
    {
        return BusinessType::where('id', $id)->update($data);
    }

    public function destroy($id)
    {
        return BusinessType::where('id', $id)->delete();
    }
}