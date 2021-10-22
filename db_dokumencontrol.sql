/* ----------------------------------------------
/* Dokumen Kontrol Database SIRS Mulia
/* ahmadrahmadi1@gmail.com
/* ----------------------------------------------

/* ISOLASI UGD - Bed B */
/* V65 - Yenni, dr. Sp.KFR*/

/* -----------------REFERENSI PENJAMIN--------------- */
/* P016 - BPJS
/* P650 - BRI life
/* P669 - KEMENKES
/* P048 - ALLIANZ
/* P003 - INHEALTH, PT
/* P018 - KARYAWAN 
/* P052 - ASTRA OTOPARTS
/* P622 - SEKOLAH BOGOR RAYA
/* P115 - PT TASPEN
/* P698 - BTN SYARIAH 

/*---------------REFERENSI TINDAKAN-------------------------*/
/* UM551 - Dokter Sub Spesialis / Konsultan*/
/* OG025 - USG Transvaginal dengan print*/


/*---------------REFERENSI LABORATORIUM----------------------*/
/* LB157 - PCR SARS CoV-2 SAME DAY*/
/* LB153 - Rapid test Antigen*/
/* LB0052 - GLUKOSA DARAH PUASA/GDN*/
/* LB0053 - GLUKOSA DARAH SEWAKTU*/
/* RD0059 - Thorax PA*/
/* 010018 - DARAH RUTIN */
/* LB162 - PCR SARS CoV-2 H+1 */


/*----------------REFERENSI DOKTER-----------------------------*/
/* V76 - Ninta Karina Astila Sembiring, dr.*/
/* V61 - Gesa Gestana, dr.*/
/* D85 - Alvin Kosasih. dr,Sp.P*/
/* A07 - Alvidiani Agustina Damanik, .dr*/
/* D69 - Adisurya (USG), dr*/
/* D75 - Yenisa Rahma Pradiasty, dr*/
/* V15 - Mega Senja dr. ,Sp.P*/
/* D95 - Randika Hermanda, dr */
/* D09 - Apriani Rahmadhaniati, dr */ 
/* A06 - Muhammad Musafaro Mauludi, .dr *^

/*---------- KONTROL RAWAT JALAN ------------------------------*/
SELECT * FROM kunj WHERE no_kwit = 210928243;
SELECT * FROM antrian WHERE pasien LIKE '%00132380 - JETHRO ALARIX, An %';
SELECT * FROM dep_poli WHERE nomtri = '210630-634';
SELECT * FROM pasien WHERE pasien LIKE '%00131456 - SUKARSIH, Ny%';

SELECT MAX(no_kwit) FROM kunj; 210920263
SELECT * FROM kunj WHERE no_kwit = 211022007;
SELECT * FROM kunj WHERE id = '';
SELECT * FROM antrian WHERE notes = 'bayar' AND poli LIKE '%online%'; /*Search List Pasien Poli*/
SELECT * FROM antrian WHERE notes = 'bayar' AND poli LIKE '%ugd%'; /*Search List Pasien Ugd*/
SELECT * FROM antrian WHERE pasien LIKE '%00133124%'; /* Nomor Rekamedik */
SELECT * FROM antrian WHERE nomtri = '211020-078'; /*Nomtri*/
SELECT * FROM periksa WHERE pasien LIKE '%00027206%';
SELECT * FROM periksa WHERE nomtri = '211022-162';  ----- MEDICAL CHECKUP --- 
SELECT * FROM periksa WHERE pasien LIKE '%00131203%';
SELECT * FROM periksa2 WHERE nomtri = '210825-166';
SELECT * FROM periksa3 WHERE nomtri = '210901-110';
SELECT * FROM user WHERE login LIKE '%elba%';

SELECT * FROM omset_jasa_dokter WHERE nomtri = '210921-179';
SELECT * FROM omset_rajal WHERE nomtri = '210921-179';
/*Update Shift Kasir*/
SELECT * FROM kunj WHERE tgl = '2021-06-17' AND login LIKE '%%'; 

SELECT * FROM resep_luar WHERE no_kwit = '210705040';

SELECT * FROM kunj WHERE id =  '210814-361';
SELECT * FROM kunj WHERE no_kwit = 211016132;

/*----------- REFERENSI LABORATORIUM ----------- */
/* LB0050 - Trigliserida*/
/* LB153 - Rapid test Antigen*/
/* 060048 - UREUM 48.000*/
/* 010018 - DARAH RUTIN	110.000*/
/* LB0053 - GLUKOSA DARAH SEWAKTU*/
/* LB0044 - CREATININ*/
/* LB0049 - Total Cholesterol*/
/* LB0048 - Chol. LDL Direct*/
/* LB0043 - Asam urat */
/* LB0007 - LED */
/* 010139 - Darah Lengkap */

/*--------------KONTROL LABORATORIUM----------------*/
SELECT * FROM lab WHERE kwit = '210703009'; 
SELECT * FROM antrian_lab WHERE nomtri = '211016-065'; /*1. dapat nomtri, status proses (masih antri) */
SELECT MAX(kwit) FROM lab_poli; 211004032
SELECT * FROM lab_poli WHERE kwit = '0'; /*2. Ambil kuitansi paling akhir poliklinik */
SELECT * FROM lab_poli WHERE nomtri = '211016-065'; /*2. */
SELECT * FROM lab1_poli WHERE kwit = '211016006'; /*3. Inputan Pemeriksaan Poliklinik */
SELECT * FROM lab2_poli WHERE kwit = '211005003'; /*4. Inputan Pemeriksaan Poliklinik Radiologi */
SELECT * FROM detil_lab_poli WHERE nomtri = '211005-164'; /*5. Inputan Sudah di Proses*/
SELECT * FROM detil_lab WHERE nomtri = '211005-164'; /*Inputan UGD & Langsung Ke Laboratorium */ 
SELECT * FROM detil_lab WHERE id_inap = '44789'; /*Inputan detil Ranap */

/*----------- Pasien Langsung Ke Laboratorium dan Radiologi ----------------*/
SELECT * FROM antrian WHERE tgl LIKE '%2020-11%' AND notes = 'proses' AND poli = 'RADIOLOGI';
SELECT * FROM antrian WHERE pasien LIKE '%00034586%';
SELECT * FROM lab WHERE nomtri = '211005-164'; /*Cari Pasien*/
SELECT * FROM lab WHERE kwit = '211005003'; /*Cari Pasien*/
SELECT * FROM lab_2 WHERE kwit = '211005003'; /*Inputan Pemeriksaan Lab dan Rad , input langsung dari pendaftaran*/
SELECT * FROM detil_lab WHERE nomtri = '211021-063'; /*Hasil Inputan UGD & Langsung Ke Laboratorium */ 

SELECT * FROM kunj_lab WHERE kwit = 211016005; /*Data transaksi laboratorium */

SELECT * FROM antrian WHERE nomtri = '210928-159';
SELECT * FROM antrian_rad WHERE tgl LIKE '%2021-06%' AND notes = 'proses';
SELECT * FROM rad_poli WHERE tgl LIKE '%2021-04%';

SELECT * FROM kunj_lab WHERE kwit = '211016005';
SELECT * FROM antrian WHERE pasien LIKE '%00107373%';

/*----------------REFERENSI DOKTER-----------------------------*/
/* V76 - Ninta Karina Astila Sembiring, dr.*/
/* V61 - Gesa Gestana, dr.*/
/* D85 - Alvin Kosasih. dr,Sp.P*/
/* A07 - Alvidiani Agustina Damanik, .dr*/
/* D69 - Adisurya (USG), dr*/
/* D75 - Yenisa Rahma Pradiasty, dr*/
/* V15 - Mega Senja dr. ,Sp.P*/
/* D95 - Randika Hermanda, dr */
/* D09 - Apriani Rahmadhaniati, dr */ 

/*----------------KONTROL RADIOLOGI------------*/
SELECT * FROM antrian WHERE pasien LIKE '%00030497%';
SELECT * FROM rad WHERE pasien LIKE '%00030497%'; /*?????*/
SELECT * FROM antrian_rad WHERE nomtri = '211016-128'; /*1. untuk antri, notes (proses) */
SELECT * FROM antrian_rad GROUP BY notes;
SELECT max(kwit) FROM rad_poli; 211001013 /*Kwitansi Terahir*/
SELECT * FROM rad_poli WHERE kwit = '210930029'; /*2. Untuk antri [Ambil Kuitansi Paling Akhir] */
SELECT * FROM rad_poli WHERE nomtri = '211016-128';
SELECT * FROM rad1_poli WHERE kwit = '211016014'; /*3. untuk antri */
SELECT * FROM rad2_poli WHERE kwit = '190316051'; /*4. untuk antri */
SELECT * FROM detil_rad_poli WHERE nomtri = '210827-113';
SELECT * FROM rad_2 WHERE kwit = '210925004'; /*?????*/
SELECT * FROM omset_radiologi_igd WHERE nomtri = '210329-501'; /*Hapus omset*/

SELECT * FROM kunj_lab WHERE kwit = 210928012; /*Data transaksi laboratorium */


211016068
531797
211015-515

00075303 - LIM KIM FA, Ny


211016064
531794
211016-104
P016 - BPJS
00014598 - WIDIARINI, Ny
/*----------------KONTROL RESEP OBAT------------------*/
SELECT * FROM antrian WHERE nomtri = '211016-271'; 00064742 - GORIB BACHRI, Tn
SELECT * FROM kunj WHERE no_kwit = 211016132; 
SELECT * FROM periksa WHERE nomtri = '211015-515'; 210816034
SELECT * FROM periksa WHERE pasien LIKE '%00064742%';
SELECT * FROM kunj WHERE id = '210729-114';
SELECT max(no_kwit) FROM bebas; 211016068
SELECT MAX(no_rsp) FROM bebas;  526639
SELECT * from bebas WHERE no_kwit = 211016064; /* 1. Buat kuitansi baru dari terakhir kuitansi */
SELECT * FROM bebas_2 WHERE no_kwit = '211016064'; 210923162 210923-427 /* 2. Obat Rajal */
SELECT * FROM bebas_2 WHERE nomtri = '211015-515'; /* Obat Rajal */
SELECT * FROM rwy_stock WHERE uraian LIKE '%210923162%'; /* Stok obat pasien umum */
SELECT * FROM rwy_stock_bpjs WHERE uraian LIKE '%210923174%'; /* Stok obat pasien umum */

SELECT * FROM resep_luar_bpjs WHERE no_kwit = '210802003';
SELECT * FROM resep_luar2_bpjs WHERE no_kwit = '210802003';
SELECT * FROM resep_luar WHERE no_kwit = '210927010';

SELECT * FROM luar WHERE no_kwit = 210927010; /*Item obat bebas*/

SELECT * FROM rwy_stock WHERE uraian LIKE '%210610036%';

/*--------------- KONTROL UGD ---------------------------*/
SELECT MAX(no_kwit) FROM kunj;
SELECT * FROM kunj WHERE no_kwit = 211019165;

/*--------------- REFERENSI ALKES --------------------*/
/* Alkes000137 - Nasal Canula Dewasa 10560 */
/* AMA0015 - Masker N 95 , 247500 */
/* Alkes000135 - Masker Karet 3 Play , 13200 */
/* ASA0001 - SARUNG TANGAN NON STERIL */
/* BKA0002 - Kaca Mata Google 118800 */
/* ALKES000279 - BHP IGD D */

/* ALKES00522 - APD (Coverall) 3 316800 */
/* ALKES00523 - APD (Face Shield) 3  79200*/
/* ALKES00526 - APD (Sepatu Boot) 3 600001*/
/* BKA0002 - Kaca Mata Google 3 118800*/
/* ALKES00531 - APD (Topi Karet) 3 5544*/

SELECT * FROM ugd_alkes WHERE alkes LIKE '%MASKER n%';
SELECT * FROM ugd_alkes WHERE nomtri = '210930-232';

/*----------------REFERENSI DOKTER-----------------------------*/
/* V76 - Ninta Karina Astila Sembiring, dr.*/
/* V61 - Gesa Gestana, dr.*/
/* D85 - Alvin Kosasih. dr,Sp.P*/
/* A07 - Alvidiani Agustina Damanik, .dr*/
/* D69 - Adisurya (USG), dr*/
/* D75 - Yenisa Rahma Pradiasty, dr*/
/* V15 - Mega Senja dr. ,Sp.P*/
/* D95 - Randika Hermanda, dr */
/* D09 - Apriani Rahmadhaniati, dr */ 

/*-----------REFERENSI INPUTAN------------------*/
/* UG003 - Dokter Spesialis (Konsul On Call) */
SELECT * FROM ugd_vis WHERE nomtri = '211022-003';
SELECT * FROM omset_igd_visit WHERE nomtri = '211018-192';

SELECT * FROM ugd_tind WHERE tind1 LIKE '%oks%';
/* RI115 - Oksigen 2-5 Liter / Menit Durasi 6 Jam */
/* UG124 - Oksigen 11-20 Liter / Menit < 6 Jam */
/* UG130 - Oksigen 11-20 Liter / Menit 6-12 Jam */
/* UG136 - Oksigen 11-20 Liter / Menit > 12 Jam ( 1 Hari ) */
/* UG122 - Oksigen 5 Liter / Menit < 6 Jam */
/* UG128 - Oksigen 5 Liter / Menit 6-12 Jam */
/* UG134 - Oksigen 5 Liter / Menit > 12 Jam ( 1 Hari ) */

/* UG109 - Observasi Isolasi IGD > 6Jam */
/* UG069 - Injeksi Obat */

/*----------------REFERENSI DOKTER-----------------------------*/
/* V76 - Ninta Karina Astila Sembiring, dr.*/
/* V61 - Gesa Gestana, dr.*/
/* D85 - Alvin Kosasih. dr,Sp.P*/
/* A07 - Alvidiani Agustina Damanik, .dr*/
/* D69 - Adisurya (USG), dr*/
/* D75 - Yenisa Rahma Pradiasty, dr*/
/* V15 - Mega Senja dr. ,Sp.P*/
/* D95 - Randika Hermanda, dr */
/* D09 - Apriani Rahmadhaniati, dr */ 

SELECT * FROM ugd_tind WHERE nomtri = '211018-078'; 210930-269
SELECT * FROM omset_igd_tind WHERE nomtri = '210929-138';

SELECT * FROM ugd_lab WHERE nomtri = '211021-063';
SELECT * FROM lab WHERE nomtri = '210702-026';
SELECT * FROM omset_radiologi_igd WHERE nomtri = '210716-180';

/*--------------KONTROL lIST OBAT-----------------------------*/
SELECT * FROM ugd_cygna WHERE nomtri = '210721-271';
SELECT * FROM ugd_resep WHERE nomtri = '211017-044'; 
SELECT * FROM ugd_r WHERE no_kwit = 210716042; 
SELECT * FROM ugd_r WHERE nomtri = '210716-415';
SELECT * FROM ugd2_r WHERE no_kwit = 210923018; /*----- Item Obat -----*/
SELECT * FROM rwy_stock WHERE uraian LIKE '%210923018%';
SELECT * FROM retur WHERE no_kwit = '1711127309';
SELECT * FROM resep_luar WHERE no_kwit = 210923018;

/*------- Alkes Rajal & UGD --------- */
SELECT * FROM stock_poli WHERE nm_brg LIKE '%LEUKOMED%';

/*Nota Rajal */
SELECT * FROM kunj WHERE id =  '210814-361';
SELECT * FROM kunj WHERE no_kwit = 211014022;

/*---------------KONTROL RAWAT INAP----------------*/
SELECT * FROM inap tbl1 WHERE id_pas = (
	SELECT t2.id_pas FROM (
		SELECT id, id_rwt, tgl, jml, sum(sat) AS sat, sum(total) AS total FROM inap_alkes a 
		WHERE nomtri = (SELECT nomtri FROM kunj_inap WHERE kwit = '211017013')
		AND id_rwt != 0
		GROUP BY id_rwt
	) t1 LEFT JOIN inap t2
	ON t1.id_rwt = t2.id
	GROUP BY t2.id_pas
);

SELECT * FROM inap WHERE id_pas = 39805; /*Seacrching Pasien*/
SELECT * FROM inap WHERE masuk = '2021-06-22 20:23:01';
SELECT * FROM inap WHERE id = 45121; 

/* BBH0020 - BHP E 1 100001 100001 */
/* ALKES00523 - APD (Face Shield) 4 19800 0 79200 */
/* ALKES00526 - APD (Sepatu Boot) 4 200000 0 800000 */
/* BKA0002 - Kaca Mata Google 4 396000 0 158400 */
/* ALKES00550 - APD Coverall Isolasi Topaz 4 48000 0 192000 */
/* ALKES00549 - APD Topi Karet Isolasi Topaz 4 840 0 3360 */
/* ALKES00552 - Masker Bedah 3 Play Isolasi Topaz 4 576 0 2304 */
/* ALKES00553 - Masker N 95 Isolasi Topaz 4 75000 0 300000 */
/* AAP0001 - Apron Disposible 4 3630 0 14520 */
/* ALKES00551 - SARUNG TANGAN NON STERIL Isolasi Topaz 10 3000 0 30000 */
/* ALKES00562 - APD (FACE SHIELD) */
/* ALKES00563 - APD (SEPATU BOOT) */
/* ALKES00568 - KACA MATA GOOGLE */
SELECT * FROM inap_alkes WHERE id_rwt = 45068;

SELECT * FROM inap_alkes WHERE alkes LIKE '%sarung%';
/* ALKES00553 - Masker N 95 Isolasi Topaz 75000, 3, 300000 */
SELECT * FROM inap_alkes WHERE alkes LIKE '%sarung t%' AND id_rwt = 44224; 
SELECT * FROM inap_alkes WHERE tgl = '2021-06-24 17:00:00' AND id_rwt = 43022; /*42884*/

/* RI170 - Jasa Dokter Spesialis kamar Topaz ( Konsul On Call ) */
/* A04 - Margareth Cecilia, .dr */
/* D32 - Nancy Sovira., dr, Sp.P */

/*----------------REFERENSI DOKTER-----------------------------*/
/* V76 - Ninta Karina Astila Sembiring, dr.*/
/* V61 - Gesa Gestana, dr.*/
/* D85 - Alvin Kosasih. dr,Sp.P*/
/* A07 - Alvidiani Agustina Damanik, .dr*/
/* D69 - Adisurya (USG), dr*/
/* D75 - Yenisa Rahma Pradiasty, dr*/
/* V15 - Mega Senja dr. ,Sp.P*/
/* D95 - Randika Hermanda, dr */
/* D09 - Apriani Rahmadhaniati, dr */ 
/* D01 - Nerina Mayakartifa. dr,Sp.PD, M.Sc, FINASIM */

SELECT * FROM inap_vis WHERE visit LIKE '%konsul on%';
SELECT * FROM inap_vis WHERE id_rwt = 45401;
SELECT * FROM inap_pasien WHERE kwit = ''; /*Ambil nomtri*/
SELECT * FROM omset_visit_ranap WHERE nomtri = '211018-288';

/*RI122 - Oksigen 2-5 Liter / Menit > 12 Jam ( 1 Hari )*/
SELECT * FROM inap_jasa WHERE jasa1 LIKE '%oksigen%';
SELECT * FROM inap_jasa WHERE id_rwt = 45458;
SELECT * FROM inap_pasien WHERE kwit = ''; /*Ambil nomtri , masih ranap*/
SELECT * FROM omset_jasa_ranap WHERE nomtri = '211020-090';

/* RI136 - Resusitasi Jantung & Paru (RJP) */
/* RI071 - EKG 12 CHANNEL */
SELECT * FROM inap_tind WHERE id_rwt = 45478;
SELECT * FROM inap_pasien WHERE kwit = ''; /*Ambil nomtri , masih ranap*/
SELECT * FROM omset_tindakan_ranap WHERE nomtri = '211021-047';

SELECT * FROM inap_lab WHERE id_rwt = 45033;  44721
SELECT * FROM antrian WHERE pasien LIKE '%00130061%' AND notes = 'rawat';
SELECT * FROM omset_lab_ranap WHERE nomtri = '210624-568';

SELECT MAX(no_kwit) from inap_resep;
SELECT * from inap_resep WHERE id_pas = 39117;
SELECT * FROM bebas2_depo WHERE no_kwit = 140921003; /*Item Obat*/
SELECT * FROM bebas2_depo WHERE nomtri = '210625-003';
SELECT * FROM bebas_depo WHERE no_kwit = '210913066';
SELECT * FROM rwy_stock_depo WHERE uraian LIKE '%140920005%';
SELECT * FROM rwy_stock_depo WHERE kode = 'U0001292' ; Bpjs00544
SELECT * FROM luar WHERE no_kwit = 210927010;

/*Nota Ranap*/
SELECT * FROM kunj_inap WHERE kwit = '211017013';

/* ------------------ Masih Ranap ------------------ */
SELECT * FROM antrian WHERE pasien LIKE '%00120688%';
SELECT * FROM inap WHERE id_pas = 0;
SELECT * FROM inap_jasa WHERE id_rwt = 
SELECT * FROM inap_vis WHERE id_rwt = 44239;
SELECT * FROM inap_lab WHERE id_rwt = 42090;
SELECT * FROM inap_tind WHERE id_rwt = 42290;
SELECT * FROM inap_pasien WHERE pasien LIKE '%00133006%';
SELECT * FROM inap_pasien WHERE id = 42;
SELECT * FROM inap_pasien WHERE nomtri = '210714-301';

SELECT * FROM kamar WHERE kamar LIKE '%Isolasi Topaz%'; 

/* Update nama pasien ranap dan rajal */

/*----------------REFERENSI DOKTER-----------------------------*/
/* V76 - Ninta Karina Astila Sembiring, dr.*/
/* V61 - Gesa Gestana, dr.*/
/* D85 - Alvin Kosasih. dr,Sp.P*/
/* A07 - Alvidiani Agustina Damanik, .dr*/
/* D69 - Adisurya (USG), dr*/
/* D75 - Yenisa Rahma Pradiasty, dr*/
/* V15 - Mega Senja dr. ,Sp.P*/
/* D95 - Randika Hermanda, dr */
/* D09 - Apriani Rahmadhaniati, dr */ 

SELECT * FROM antrian WHERE pasien LIKE '%00136742%'; 210816-001
SELECT * FROM inap WHERE id_pas = 38493; 
SELECT * FROM inap_pasien WHERE pasien LIKE '%00136742%';
SELECT * FROM inap_lab WHERE id_rwt = 43932;
SELECT * FROM inap_resep WHERE pasien LIKE '%00136742%';
SELECT * FROM bebas_depo WHERE pasien LIKE '%00136742%';
SELECT * FROM kunj_inap WHERE pasien LIKE '%00136742%';
SELECT * FROM ugd_lab WHERE nomtri = '210816-001';
SELECT * FROM ugd_resep WHERE pasien LIKE '%00136742%';
SELECT * FROM ugd_r WHERE pasien LIKE '%00136742%';
SELECT * FROM kunj WHERE pasien LIKE '%00136742%';

/*Update DPJP pasien ranap*/
/* V36 - Win dr. Sp.OG */
SELECT * FROM antrian WHERE pasien LIKE '%00135613%';
SELECT * FROM inap_pasien WHERE pasien LIKE '%00135613%';
SELECT * FROM inap_vis WHERE id_rwt = 44942;

/*Tukar Kamar*/
43379 38023 519 /*Topaz 16 - b */
43217 37879 511 /*Topaz 12 - b */
SELECT * FROM inap WHERE id = 43379;
SELECT * FROM inap_resep WHERE id_pas = 38773;
SELECT * FROM inap_lab WHERE id_rwt = 43379;

SELECT * FROM tariflab WHERE kode = 'LB162';
SELECT * FROM tarif WHERE kode = 'MC009';
SELECT * FROM tariflab WHERE golongan = 'LAIN-LAIN';

SELECT * FROM kredit WHERE kode = 'P035'; P035 - TIRTA

SELECT pasien, poli, asuransi, tgl FROM antrian 
WHERE poli = 'RAWAT INAP' 
AND asuransi = 'P016 - BPJS'
AND tgl >= '2021-01-01' 
AND tgl <= '2021-08-31';

SELECT pasien, poli, asuransi, tgl FROM antrian 
WHERE poli = 'RAWAT INAP' 
AND asuransi != 'P016 - BPJS'
AND asuransi != ''
AND tgl >= '2021-01-01' 
AND tgl <= '2021-08-31';

SELECT pasien, poli, asuransi, tgl FROM antrian 
WHERE poli = 'RAWAT INAP' 
AND asuransi = ''
AND tgl >= '2021-01-01' 
AND tgl <= '2021-08-31'; 

SELECT * FROM INFORMATION_SCHEMA.PROCESSLIST WHERE HOST LIKE '%192.168.223.233%';