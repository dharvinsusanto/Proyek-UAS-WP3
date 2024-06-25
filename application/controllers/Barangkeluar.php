<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Barangkeluar extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        cek_login();

        $this->load->model('Admin_model', 'admin');
        $this->load->library('form_validation');
    }

    public function index()
    {
        $data['title'] = "Barang keluar";
        $data['barangkeluar'] = $this->admin->getBarangkeluar();
        $this->template->load('templates/dashboard', 'barang_keluar/data', $data);
    }

    private function _validasi()
    {
        $this->form_validation->set_rules('tanggal_keluar', 'Tanggal Keluar', 'required|trim');
        $this->form_validation->set_rules('barang_id', 'Barang', 'required');

        $input = $this->input->post('barang_id', true);
        $barang = $this->admin->get('barang', ['id_barang' => $input]);
        if (isset($barang) && is_array($barang) && array_key_exists('stok', $barang)) {
            $stok = $barang['stok'];
        } else {
            // Handle kasus di mana $barang tidak valid atau tidak memiliki key 'stok'
            $stok = 0; // Atau berikan nilai default lainnya yang sesuai dengan logika aplikasi Anda
        }
    
        $stok_valid = $stok + 1;

        //$stok = $this->admin->get('barang', ['id_barang' => $input])['stok'];
        //$stok_valid = $stok + 1;

        $this->form_validation->set_rules(
            'jumlah_keluar',
            'Jumlah Keluar',
            "required|trim|numeric|greater_than[0]|less_than[{$stok_valid}]",
           [
               'less_than' => "Jumlah Keluar tidak boleh lebih dari {$stok}"
            ]
        );
    }

    public function add()
    {
        $this->_validasi();
        if ($this->form_validation->run() == false) {
            $data['title'] = "Barang Keluar";
            $data['barang'] = $this->admin->get('barang', null, ['stok >' => 0]);

            // Mendapatkan dan men-generate kode transaksi barang keluar
            $kode = 'T-BK-' . date('ymd');
            $kode_terakhir = $this->admin->getMax('barang_keluar', 'id_barang_keluar', $kode);

            if (!is_null($kode_terakhir) && strlen($kode_terakhir) >= 5) {
                $kode_tambah = substr($kode_terakhir, -5, 5);
            } else {
                $kode_tambah = '00000';
            }
            $kode_tambah = (int)$kode_tambah + 1;
            $number = str_pad($kode_tambah, 5, '0', STR_PAD_LEFT);
            $data['id_barang_keluar'] = $kode . $number;

            // Mendapatkan dan men-generate kode transaksi barang keluar
            //$kode = 'T-BK-' . date('ymd');
            //$kode_terakhir = $this->admin->getMax('barang_keluar', 'id_barang_keluar', $kode);
            //$kode_tambah = substr($kode_terakhir, -5, 5);
            //$kode_tambah++;
            //$number = str_pad($kode_tambah, 5, '0', STR_PAD_LEFT);
            //$data['id_barang_keluar'] = $kode . $number;

            $this->template->load('templates/dashboard', 'barang_keluar/add', $data);
        } else {
            $input = $this->input->post(null, true);
            $insert = $this->admin->insert('barang_keluar', $input);

            if ($insert) {
                set_pesan('data berhasil disimpan.');
                redirect('barangkeluar');
            } else {
                set_pesan('Opps ada kesalahan!');
                redirect('barangkeluar/add');
            }
        }
    }

    public function delete($getId)
    {
        $id = encode_php_tags($getId);
        if ($this->admin->delete('barang_keluar', 'id_barang_keluar', $id)) {
            set_pesan('data berhasil dihapus.');
        } else {
            set_pesan('data gagal dihapus.', false);
        }
        redirect('barangkeluar');
    }
}

//<!-- <?php
//defined('BASEPATH') or exit('No direct script access allowed'); -->

// class Barangkeluar extends CI_Controller
// {
//     public function __construct()
//     {
//         parent::__construct();
//         cek_login();

//         $this->load->model('Admin_model', 'admin');
//         $this->load->library('form_validation');
//     }

//     public function index()
//     {
//         $data['title'] = "Barang keluar";
//         $data['barangkeluar'] = $this->admin->getBarangkeluar();
//         $this->template->load('templates/dashboard', 'barang_keluar/data', $data);
//     }

//     private function _validasi()
// {
//     $this->form_validation->set_rules('tanggal_keluar', 'Tanggal Keluar', 'required|trim');
//     $this->form_validation->set_rules('barang_id', 'Barang', 'required');

//     if ($this->form_validation->run() == FALSE) {
//         return false;
//     } else {
//         $input = $this->input->post('barang_id', true);
//         $stok = $this->admin->get('barang', ['id_barang' => $input])['stok'];
//         $stok_valid = $stok + 1;

//         $this->form_validation->set_rules(
//             'jumlah_keluar',
//             'Jumlah Keluar',
//             "required|trim|numeric|greater_than[0]|less_than[{$stok_valid}]",
//             [
//                 'less_than' => "Jumlah Keluar tidak boleh lebih dari {$stok}"
//             ]
//         );
//         return $this->form_validation->run();
//     }
// }

    // private function _validasi()
    // {
    //     $this->form_validation->set_rules('tanggal_keluar', 'Tanggal Keluar', 'required|trim');
    //     $this->form_validation->set_rules('barang_id', 'Barang', 'required');

    //     $input = $this->input->post('barang_id', true);
    //     $stok = $this->admin->get('barang', ['id_barang' => $input])['stok'];
    //     $stok_valid = $stok + 1;

    //     $this->form_validation->set_rules(
    //         'jumlah_keluar',
    //         'Jumlah Keluar',
    //         "required|trim|numeric|greater_than[0]|less_than[{$stok_valid}]",
    //         [
    //             'less_than' => "Jumlah Keluar tidak boleh lebih dari {$stok}"
    //         ]
    //     );
    // }

    // public function add()
    // {
    //     $this->_validasi();
    //     if ($this->form_validation->run() == false) {
    //         $data['title'] = "Barang Keluar";
    //         $data['barang'] = $this->admin->get('barang', null, ['stok >' => 0]);

    //         // Mendapatkan dan men-generate kode transaksi barang keluar
    //         $kode = 'T-BK-' . date('ymd');
    //         $kode_terakhir = $this->admin->getMax('barang_keluar', 'id_barang_keluar', $kode);
    //         $kode_tambah = !is_null($kode_terakhir) && strlen($kode_terakhir) >= 5 ? substr($kode_terakhir, -5, 5) : '00000';
    //         $kode_tambah = (int)$kode_tambah + 1;
    //         $number = str_pad($kode_tambah, 5, '0', STR_PAD_LEFT);
    //         $data['id_barang_keluar'] = $kode . $number;

    //         $this->template->load('templates/dashboard', 'barang_keluar/add', $data);
    //     } else {
    //         // Mendapatkan dan men-generate kode transaksi barang keluar
    //         $kode = 'T-BK-' . date('ymd');
    //         $kode_terakhir = $this->admin->getMax('barang_keluar', 'id_barang_keluar', $kode);
    //         $kode_tambah = !is_null($kode_terakhir) && strlen($kode_terakhir) >= 5 ? substr($kode_terakhir, -5, 5) : '00000';
    //         $kode_tambah = (int)$kode_tambah + 1;
    //         $number = str_pad($kode_tambah, 5, '0', STR_PAD_LEFT);
    //         $data['id_barang_keluar'] = $kode . $number;

    //     // //Tambahkan proses penyimpanan data barang keluar di sini
    //     // $data_barang_keluar = [
    //     //     'id_barang_keluar' => $data['id_barang_keluar'],
    //     //     'tanggal_keluar' => $this->input->post('tanggal_keluar', true),
    //     //     'barang_id' => $this->input->post('barang_id', true),
    //     //     'jumlah_keluar' => $this->input->post('jumlah_keluar', true),
    //     //     // Tambahkan kolom lain yang diperlukan
    //     // ];

    //     // $this->admin->insert('barang_keluar', $data_barang_keluar);

    //     //Redirect atau lakukan tindakan lain yang diperlukan setelah penyimpanan
    //     }
    // }

    // public function add()
    // {
    //     $this->_validasi();
    //     if ($this->form_validation->run() == false) {
    //         $data['title'] = "Barang Keluar";
    //         $data['barang'] = $this->admin->get('barang', null, ['stok >' => 0]);

    //         // Mendapatkan dan men-generate kode transaksi barang keluar
    //         $kode = 'T-BK-' . date('ymd');
    //         $kode_terakhir = $this->admin->getMax('barang_keluar', 'id_barang_keluar', $kode);
    //         $kode_tambah = substr($kode_terakhir, -5, 5);
    //         $kode_tambah++;
    //         $number = str_pad($kode_tambah, 5, '0', STR_PAD_LEFT);
    //         $data['id_barang_keluar'] = $kode . $number;

    //         $this->template->load('templates/dashboard', 'barang_keluar/add', $data);
    //     } else {
    //         // Mendapatkan dan men-generate kode transaksi barang keluar
    //         $kode = 'T-BK-' . date('ymd');
    //         $kode_terakhir = $this->admin->getMax('barang_keluar', 'id_barang_keluar', $kode);

    //         if (!is_null($kode_terakhir) && strlen($kode_terakhir) >= 5) {
    //             $kode_tambah = substr($kode_terakhir, -5, 5);
    //         } else {
    //             $kode_tambah = '00000';
    //         }
    //         $kode_tambah = (int)$kode_tambah + 1;
    //         $number = str_pad($kode_tambah, 5, '0', STR_PAD_LEFT);
    //         $data['id_barang_keluar'] = $kode . $number;

    //         $input = $this->input->post(null, true);
    //         $insert = $this->admin->insert('barang_keluar', $input);
    //     }
    // }

    // public function add()
    // {
    //     $this->_validasi(); // Validasi formulir

    //     if ($this->form_validation->run() == false) {
    //         $data['title'] = "Barang Keluar";
    //         $data['barang'] = $this->admin->get('barang', null, ['stok >' => 0]);

    //         // Mendapatkan dan men-generate kode transaksi barang keluar
    //         $kode = 'T-BK-' . date('ymd');
    //         $kode_terakhir = $this->admin->getMax('barang_keluar', 'id_barang_keluar', $kode);
    //         $kode_tambah = !is_null($kode_terakhir) ? (int)substr($kode_terakhir, -5) + 1 : 1;
    //         $number = str_pad($kode_tambah, 5, '0', STR_PAD_LEFT);
    //         $data['id_barang_keluar'] = $kode . $number;

    //         $this->template->load('templates/dashboard', 'barang_keluar/add', $data);
    //     } else {
    //         $input = $this->input->post(null, true);
    //         $insert = $this->admin->insert('barang_keluar', $input);

    //         if ($insert) {
    //             // Redirect atau tampilkan pesan sukses jika data berhasil disimpan
    //             redirect('barang_keluar'); // Ganti 'barang_keluar' dengan URL tujuan
    //         } else {
    //             // Tampilkan pesan kesalahan jika data gagal disimpan
    //             $this->session->set_flashdata('error', 'Gagal menyimpan data barang keluar.');
    //             redirect('barang_keluar/add'); // Redirect kembali ke halaman tambah
    //         }
    //     }
    // }

    // private function _validasi()
    //     {
    //         // Atur aturan validasi formulir sesuai kebutuhan Anda
    //         $this->form_validation->set_rules('field_name', 'Label', 'required|other_rules');
    //     }


        //     $kode = 'T-BK-' . date('ymd');
        //     $kode_terakhir = $this->admin->getMax('barang_keluar', 'id_barang_keluar', $kode);

        //     if (!is_null($kode_terakhir) && strlen($kode_terakhir) >= 5) {
        //         $kode_tambah = substr($kode_terakhir, -5, 5);
        //     } else {
        //         $kode_tambah = '00000';
        //     }
        //     $kode_tambah = (int)$kode_tambah + 1;
        //     $number = str_pad($kode_tambah, 5, '0', STR_PAD_LEFT);
        //     $data['id_barang_keluar'] = $kode . $number;
        //     $input = $this->input->post(null, true);
        //     $insert = $this->admin->insert('barang_keluar', $input);

        //     if ($insert) {
        //         set_pesan('data berhasil disimpan.');
        //         redirect('barangkeluar');
        //     } else {
        //         set_pesan('Opps ada kesalahan!');
        //         redirect('barangkeluar/add');
        //     }
        // }
    // public function delete($getId)
    // {
    //     $id = encode_php_tags($getId);
    //     if ($this->admin->delete('barang_keluar', 'id_barang_keluar', $id)) {
    //         set_pesan('data berhasil dihapus.');
    //     } else {
    //         set_pesan('data gagal dihapus.', false);
    //     }
    //     redirect('barangkeluar');
    // }
// }
