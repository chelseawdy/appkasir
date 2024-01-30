
-- Database Backup --
-- Ver. : 1.0.1
-- Host : Server Host
-- Generating Time : Jan 26, 2024 at 10:18:52:AM


CREATE TABLE `detailpenjualan` (
  `DetailID` int(11) NOT NULL AUTO_INCREMENT,
  `PenjualanID` int(11) NOT NULL,
  `ProdukID` int(11) NOT NULL,
  `JumlahProduk` int(11) NOT NULL,
  `Harga` decimal(10,2) NOT NULL,
  PRIMARY KEY (`DetailID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO detailpenjualan VALUES
("3","2","20","1","29000.00"),
("4","2","10","1","16500.00"),
("5","3","15","1","19000.00"),
("6","3","7","1","21900.00"),
("7","4","8","1","7000.00"),
("8","4","18","1","15000.00"),
("9","5","14","1","19500.00"),
("10","5","6","1","13300.00"),
("11","5","7","1","21900.00"),
("12","6","3","1","3000.00"),
("13","6","6","1","13300.00"),
("14","6","11","1","7200.00");

CREATE TABLE `keranjang` (
  `KeranjangID` int(10) NOT NULL AUTO_INCREMENT,
  `ProdukID` int(10) NOT NULL,
  `Jumlah` int(10) NOT NULL,
  `id_user` int(10) NOT NULL,
  PRIMARY KEY (`KeranjangID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;


CREATE TABLE `pelanggan` (
  `PelangganID` int(11) NOT NULL AUTO_INCREMENT,
  `NamaPelanggan` varchar(255) NOT NULL,
  `Alamat` text NOT NULL,
  `NomorTelepon` varchar(15) NOT NULL,
  PRIMARY KEY (`PelangganID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO pelanggan VALUES
("3","umum","umum","456789009876"),
("4","nasywa","jalan merpati","085857972058"),
("5","risma","jalan dalung","0994637826223"),
("6","dikta","tabanan","234567654356"),
("7","vny","jalan resimuka","0987654567865");

CREATE TABLE `penjualan` (
  `PenjualanID` int(11) NOT NULL AUTO_INCREMENT,
  `TanggalPenjualan` date NOT NULL,
  `TotalHarga` decimal(10,2) NOT NULL,
  `PelangganID` int(11) NOT NULL,
  PRIMARY KEY (`PenjualanID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO penjualan VALUES
("2","2024-01-18","45500.00","6"),
("3","2024-01-25","40900.00","5"),
("4","2024-01-11","22000.00","7"),
("5","2024-01-23","54700.00","4"),
("6","2024-01-26","23500.00","6");

CREATE TABLE `produk` (
  `ProdukID` int(11) NOT NULL AUTO_INCREMENT,
  `Barcode` varchar(25) NOT NULL,
  `NamaProduk` varchar(255) NOT NULL,
  `Harga` decimal(10,2) NOT NULL,
  `Stok` int(11) NOT NULL,
  PRIMARY KEY (`ProdukID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO produk VALUES
("2","8992907110017","Sari Roti Tawar","15000.00","20"),
("3","8996001600269","Le Minerale","3000.00","20"),
("4","8998009010231","Ultra Milk Coklat","6000.00","24"),
("5","8998866202725","Susu Milku Coklat","4000.00","12"),
("6","8992702000018","Indomilk Susu Kental Manis Putih","13300.00","20"),
("7","89686596465","LAYS RMPT LAUT 68G","21900.00","10"),
("8","89686598025","CHITATO SP PANGGANG 35G","7000.00","12"),
("9","7891000071823","NESCAFE CLASSIC","7000.00","12"),
("10"," 8886001100909","Energen Coklat 34 Gr Hgr","16500.00","16"),
("11","8997004301184"," OISHI UDANG PEDAS 70GR","7200.00","6"),
("12","8886015203115","GOOD TIME DOUBLE CHIP 80G","10500.00","4"),
("13","8888166336568","NISSIN CRISPY CRAKERS 225G","13300.00","10"),
("14","8992761136017","COCA COLA 1500mL","19500.00","30"),
("15","8998866607353","DAIA PUTIH BAG 900g","19000.00","30"),
("16","8993200661343","CIMORY JAMBU","11900.00","20"),
("17","8991906101170","DJARUM R BLACK CAPUCINO","32000.00","50"),
("18","8999999029333","SUNSILK NOURIS 80ML","15000.00","20"),
("19","8992753100309","FRISIAN FLAG GOLD PCK 6Ã—4","16000.00","20"),
("20","8998989300391","GUDANG GARAM SURYA PRO MILD","29000.00","30"),
("21","711844115057","ABC KECAP ASIN BTL 133m","7500.00","20");

CREATE TABLE `user` (
  `id_user` int(10) NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `hak_akses` int(1) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO user VALUES
("1","nasywa ramadhani","admin","admin","1"),
("2","nasywa ramadhani","admin","admin","1"),
("5","Dikta","admin","nasywa","2");