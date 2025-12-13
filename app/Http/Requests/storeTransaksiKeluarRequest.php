<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class storeTransaksiKeluarRequest extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     */
    public function authorize(): bool
    {
        return true;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, \Illuminate\Contracts\Validation\ValidationRule|array<mixed>|string>
     */
    public function rules(): array
    {
        return [
            'penerima' => 'required|string|max:255',
            'kontak' => 'required|string|max:255',
            'keterangan' => 'nullable|string',
            'items' => 'required|array|min:1',
        ];
    }

    public function messages()
    {
        return [
            'penerima.required' => 'Field Penerima harus diisi.',
            'kontak.required' => 'Field Kontak harus diisi.',
            'items.required' => 'Minimal harus ada satu produk yang di tambahakan dalam transaksi',
        ];
    }
}
