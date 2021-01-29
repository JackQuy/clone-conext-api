<?php

namespace App\Repositories;

interface RepositoryInterface
{
    public function getAll();
    public function create();
    public function store($id);
    public function show($id);
    public function edit($id);
    public function update($data, $id);
    public function destroy($id);

}