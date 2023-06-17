.pragma library



function validatePesanCredentials(tanggal, bulan, tahun, menit, jam, alamat, jenis, jumlah, kerusakan, detail, jangkawaktu){
    var ret
    if(tanggal === "" || bulan === "" || tahun===""|| menit===""|| jam===""|| alamat==="" ||jenis===""|| jumlah==="" || kerusakan==="" || detail==="" || jangkawaktu===""){
        ret = 1
    }
    else {
        ret =0
    }
    return ret
}

function validatePemesananCredentials(merek, jenis, jumlah, kerusakan, detail, jangkawaktu){
    var ret
    if(merek===""|| jenis===""||jumlah===""|| kerusakan===""|| detail===""|| jangkawaktu==="" ){
        ret = 1
    }
    else{
        ret =0
    }
    return ret
}


