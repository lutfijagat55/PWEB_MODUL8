<?php

namespace App\Http\Controllers;

use Illuminate\Support\Str;
use App\Models\Dosen;
use App\Models\Mahasiswa;
use App\Models\Organization;
use Illuminate\Http\Request;
use PhpParser\Mode\Expr\New_;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function detaill (Mahasiswa $mahasiswa)
    {
        // dd($mahasiswa);
        $org = Organization::all();
        return view('editmhs', compact('mahasiswa', 'org'));
    }
    public function update (Mahasiswa $mahasiswa)
    {
        $mhs = request()->all();
        // dd($mhs);
        $mahasiswa->update($mhs);
        return back();
    }
    public function delete(Mahasiswa $mahasiswa)
    {
        $mahasiswa->delete();
        return redirect('/list');
    }
    public function index()
    {
        return view('dashboard');
    }
    public function list()
    {
        $mahasiswa = Mahasiswa::paginate(5);
        // dd($mahasiswa);
        return view('list', compact('mahasiswa'));
    }
    public function Dosen()
    {
        $Dosen = Dosen::all();
        // dd('$Dosen');
        return view('Dosen', compact('Dosen'));
    }
    public function create()
    {
        $org = Organization::all();
        return view('createmhs', compact('org'));
    }
    public function store(Request $request)
    {
        $post = new Mahasiswa;
         
        $post->organization_id = $request->organization_id;
        $post->name = $request->name; 
        $post->npm = $request->npm; 
        $post->slug = Str::slug($request->npm); 
        $post->class = $request->class; 
        $post->alamat = $request->alamat; 

        $post->save();
        return redirect('/list');
    }
}
