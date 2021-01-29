<?php

namespace App\Http\Controllers;

use App\Repositories\ExpertiseRepository;
use Illuminate\Http\Request;

class ExpertiseController extends Controller
{
    protected $repository;
    public function __construct(ExpertiseRepository $repository)
    {
        $this->repository = $repository;
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()  //get
    {
        $data = $this->repository->getAll();
        return response()->json($data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)  //post
    {
        // $validate = $request->validate([
        //         'name' => 'required | unique:posts'
        //     ],[
        //         'name.required' => 'Không được để trống',
        //         'name.unique' => 'Name phải duy nhất',
        //     ]);
        // if(!empty($validate)) {
        //     return response()->json($validate, 400);
        // }
        $data = $this->repository->store($request->all());
        return response()->json($data, 200);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id) //Expertise $expertise
    {
        // Hiển thị ra thông tin 1 đối tượng, tự convert về giá trị riêng
        // return $expertise;
        return $this->repository->show($id);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        return $this->repository->update($request->all(), $id);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        return $this->repository->destroy($id);
    }
}
