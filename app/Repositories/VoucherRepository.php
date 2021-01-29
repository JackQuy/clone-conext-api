<?php

namespace App\Repositories;

use App\Models\Voucher;

class VoucherRepository implements RepositoryInterface
{
    public function getAll()
    {
        return Voucher::all();
    }

    public function create(){}
    
    public function store($data)
    {
        return Voucher::create($data);
    }

    public function show($id){
        return Voucher::find($id);
    }

    public function edit($id){}

    public function update($data, $id)
    {
        return Voucher::where('id', $id)->update($data);
    }

    public function destroy($id)
    {
        return Voucher::where('id', $id)->delete();
    }
}