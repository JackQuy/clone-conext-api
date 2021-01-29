<?php

namespace App\Repositories;

use App\Models\Event;
use Illuminate\Http\Request;

class EventRepository implements RepositoryInterface
{
    public function getAll()
    {
        return Event::all();
    }

    public function create(){}
    
    public function store($data)
    {
        return Event::create($data);
    }

    public function show($id){
        return Event::find($id);
    }

    public function edit($id){}

    public function update($data, $id)
    {
        return Event::where('id', $id)->update($data);
    }

    public function destroy($id)
    {
        return Event::where('id', $id)->delete();
    }
}