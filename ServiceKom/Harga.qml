import QtQuick 2.0
import QtQuick.Controls 2.2
import "backend.js" as Backend

Page {
        function harga(jumlah,kerusakan,jenis){
            if (jenis=="laptop"&&kerusakan=="hardware"){
                jumlahHarga= 500000*jumlah
            }
            else if(jenis=="laptop"&&kerusakan=="software"){
                jumlahHarga= 1500000*jumlah
            }
            else if (jenis=="komputer"&&kerusakan=="software"){
                jumlahHarga= 300000*jumlah
            }
            else if(jenis=="komputer"&& kerusakan=="hardware"){
                jumlahHarga=100000*jumlah
            }
        }
    }


