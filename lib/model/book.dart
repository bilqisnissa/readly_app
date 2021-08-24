import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Book{
  int bookId;
  String bookName;
  int bookPrice;
  String bookDescriptions;
  String bookImage;
  String bookAuthor;
  Color bookColor;
  
  Book({required this.bookId,
  required this.bookName,
  required this.bookPrice,
  required this.bookDescriptions,
  required this.bookImage,
  required this.bookAuthor,
  required this.bookColor});
}


var bookList = [
  Book(
      bookId: 1,
      bookName: 'Wingit',
      bookPrice: 85000,
      bookDescriptions:
      'Dunia mistis ini memang selalu jadi idaman ya. Terbukti dengan Wingit yang masih memegang title best seller-nya ini. Walaupun bulu kuduk merinding saat membacanya, tapi tetap banyak pembaca yang penasaran dengan kisah 7 hantu yang pernah Sara Wijayanto dengan timnya temukan.',
      bookImage:
      'https://i.ibb.co/PcwDbD1/image.png',
      bookAuthor: 'Sara Wijayanto',
      bookColor: Colors.white),
  Book(
      bookId: 2,
      bookName: 'Kisah Tanah Jawa',
      bookPrice: 69000,
      bookDescriptions:
      'Buku ini menjadi lanjutan dari investigasi sejarah, mitos dan kisah-kisah mistis di pulau Jawa dari kelompok yang beranggotakan Genta, Om Hao (Hari), serta Mada Zidan. Kisah Tanah Jawa: Tikungan Maut menceritakan kisah kecelakaan tragis bus study tour di tikungan maut Paiton, Jawa Timur. Kalau ingin mengetahui kisah mistis lainnya, yang diselidiki oleh tim Kisah Tanah Jawa di daerah pulau Jawa,',
      bookImage:
      'https://i.ibb.co/N9PqGd1/image.png',
      bookAuthor: '@kisahtanahjawa',
      bookColor: Colors.white),
  Book(
      bookId: 3,
      bookName: 'The Star and I',
      bookPrice: 79000,
      bookDescriptions:
      'Tentang Olivia Mitchell yang berada di New York untuk bekerja sebagai aktris teater dan ingin mencari tahu keberadaan orang tua kandungnya. Dibantu sahabat masa kecil, Rex Rankin, Olivia mencari fakta atas masa lalunya dan juga berhasil mendapatkan jawaban atas perasaan hatinya.',
      bookImage:
      'https://i.ibb.co/ZH6qGcp/image.png',
      bookAuthor: 'Ilana Tan',
      bookColor: Colors.white),
  Book(
      bookId: 4,
      bookName: 'Pulang - Pergi',
      bookPrice: 71200,
      bookDescriptions:
      'Ia diancam harus segera mengawini Maria, putri penguasa shadow economy di Rusia, Otets, yang berhasil dikalahkannya dalam duel pistol dan berhak menikahinya. Namun, Bujang membujuk Salonga, guru dan sahabatnya untuk menunda pernikahan itu.',
      bookImage:
      'https://i.ibb.co/5j2j4BR/image.png',
      bookAuthor: 'Tere Liye',
      bookColor: Colors.white),
  Book(
      bookId: 5,
      bookName: 'Laut Bercerita',
      bookPrice: 80000,
      bookDescriptions:
      'Buku ini menceritakan tentang keluarga yang kehilangan anggotanya, sekumpulan sahabat yang merasakan kekosongan di dada, sekelompok orang yang gemar menyiksa dan lancar berkhianat, sejumlah keluarga yang mencari kejelasan makam anaknya, dan tentang cinta yang tak akan luntur.',
      bookImage:
      'https://i.ibb.co/8mJ2qwt/image.png',
      bookAuthor: 'Leila S. Chudori',
      bookColor: Colors.white),
  Book(
      bookId: 6,
      bookName: 'Rapijali',
      bookPrice: 79200,
      bookDescriptions:
      'Mengisahkan remaja bernama Ping yang tinggal bersama sang kakek di tepi Sungai Cijulang dan rumahnya yang penuh alat musik. Ia mempunyai bakat istimewa dalam bermusik. Namun, diam-diam Ping menyimpan kegelisahan tentang masa depannya yang buram. Hidupnya juga jungkir balik ketika ia harus pindah ke Jakarta dan tinggal bersama keluarga calon Gubernur.',
      bookImage:
      'https://i.ibb.co/wdkHwC2/image.png',
      bookAuthor: 'Dee Lestari',
      bookColor: Colors.white),
  Book(
      bookId: 7,
      bookName: 'Matahari',
      bookPrice: 93000,
      bookDescriptions:
      'The Xtrada 6 is designed for riders who want to ride on a wide variety of terrain. The ALX super light 6061 hydro formed aluminum frame uses heat treated, hydro formed and butted tubing to give an optimal strength to weight ratio. The tapered head tube provides stable, front-end precision and the new Boost hub spacing on this frame allows for a stiffer wheel with more tyre clearance. The Boost system has also allowed for shorter chain stays, which makes the back of the bike a lot easier to flick around corners.The Xtrada 6 utilises Polygon’s new Wheel Fit Size System whereby each frame size is paired with the wheel size that best fits the rider and sets them up for optimal efficiency and power transfer. Frame S, M, L feature 27.5” wheels and frame M, L, XL come with 29” wheels. The Xtrada 6 is a true cross country mountain bike with a geometry built for speed and stability coupled with tough, trail-ready components. It is perfect for hitting the local single track or an all-day mountain adventure.',
      bookImage:
      'https://i.ibb.co/zb9P2vK/image.png',
      bookAuthor: 'Tere Liye',
      bookColor: Colors.white),
  Book(
      bookId: 8,
      bookName: 'Rotasi & Revolusi',
      bookPrice: 74000,
      bookDescriptions:
      'Novel berjudul Rotasi dan Revolusi bercerita tentang dunia perkuliahan yang penuh dengan ambisi, cinta dan tugas di perkuliahan serta organisasi. Saya rasa Crowdstroia, as a writer, bisa menggambarkan kehidupan di masa kuliah secara baik. Pembaca pasti akan merasa relate dengan apa yang diceritakan di novel Rotasi dan Revolusi ini. Apalagi jika pembacanya adalah seorang mahasiswa. Crowdstroia memang tidak diragukan lagi kemampuannya. Dia merupakan author—sebutan untuk penulis cerita di Wattpadd—yang telah memiliki reputasi sangat baik. Followers atau pengikutnya yang banyak, hingga saat ini mencapai 155 ribu.',
      bookImage:
      'https://i.ibb.co/8Y3Pymw/image.png',
      bookAuthor: 'Polygon',
      bookColor: Colors.white),
  Book(
      bookId: 9,
      bookName: 'Fantastic Beast',
      bookPrice: 149000,
      bookDescriptions:
      'Hewan-hewan Fantastis dan Dimana Mereka Bisa Ditemukan adalah buku karangan J. K. Rowling untuk disumbangkan kepada organisasi sosial Comic Relief. Sekitar 20% dari harga jual buku tersebut disumbangkan secara langsung ke anak-anak tidak mampu di berbagai tempat di dunia.',
      bookImage:
      'https://i.ibb.co/tp8Z802/image.png',
      bookAuthor: 'JK Rowling',
      bookColor: Colors.white),
  Book(
      bookId: 10,
      bookName: 'Harry Potter' ,
      bookPrice: 60000,
      bookDescriptions:
      'Yang ingin diketahui pertama kali tentu saja kabar mengenai karakter-karakter favorit kita. Harry Potter setelah menikah dengan Ginny Weasley, adik Ron, punya tiga anak yaitu James, Albus dan Lily. Harry bekerja di Kementerian Sihir sebagai Kepala Departemen Pelaksanaan Hukum Sihir. Hermione jadi Menteri Sihir dan bersuamikan Ron yang kini mengelola toko lelucon. Mereka punya anak bernama Rose. Musuh bebuyutan Harry di sekolah sihir Hogwarts, Draco Malfoy punya anak bernama Scorpius.',
      bookImage:
      'https://i.ibb.co/6Wm7cTQ/image.png',
      bookAuthor: 'JK Rowling',
      bookColor: Colors.white),
];