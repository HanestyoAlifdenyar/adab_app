import 'package:flutter/material.dart';

class DataAdab {
  final String title;
  final String description;
  final String image;
  final MaterialColor matertialColor;

  DataAdab({this.title, this.description, this.image, this.matertialColor});

  List<DataAdab> createDataAdab() {
    List _dataAdab = List<DataAdab>();
    return _dataAdab
      ..add(DataAdab(
          title: 'Adab Memakan Makanan',
          description:
              'Makan makan-lah yang halal dan baik serta tidak mengandung unsur haram'
              'Meniatkan tujuan untuk menguatkan bada, agar dapat melakukan ibadah'
              'Hendaknya merasa ridho dengan makanan apa saja yang telah terhidangkan dan tidak mencelanya',
          image:
              'https://www.javatravel.net/wp-content/uploads/2020/01/Tempat-Makan-Serang.jpg',
          matertialColor: Colors.green))
      ..add(DataAdab(
          title: 'Adab Meminum Minuman',
          description: 'Sebaiknya sebelum minum duduklah terlebi dahulu'
              'Minumlah air mineral terlebi dahulu/air yang tidak berwarna'
              'Minumlah dengan 3 kali tegukan jangan lah minum seperti unta',
          image:
              'https://static.republika.co.id/uploads/webp/inpicture_slide/0-73086600-1577090045-sumber_instagram_yesss-coco_2.webp',
          matertialColor: Colors.lightGreen))
      ..add(DataAdab(
          title: 'Adab Tidur',
          description:
              'Tidak tidur sebelum waktu isya dan tidak memperbanyak canda setelahnya'
              'Hendaknya tidur dalam keadaan sudah berwudhu terlebih dahulu'
              'Hendaknya tidur menghadap kekanan',
          image: 'https://jernih.co/wp-content/uploads/tidur-2.jpg',
          matertialColor: Colors.green))
      ..add(DataAdab(
          title: 'Adab Bertamu',
          description: 'Memenuhi undangan jika di undang'
              'Tidak masuk sebelum di izinkan'
              'Sebaik-nya berdiri jangan di depan pintu, berdirilah di samping kanan atau kiri pintu',
          image:
              'https://1.bp.blogspot.com/-rJO_0u9Apxk/WdO7QpZ305I/AAAAAAAAFOE/Nvdt49-LtzoBUr-4aPU9W0pVQKaTUJRbQCLcBGAs/w1200-h630-p-k-no-nu/4%2BNilai%2BPositif%2BBertamu%2Bdan%2BOrang%2Byang%2BKedatangan%2BTamu%2Bdalam%2BIslam.jpg',
          matertialColor: Colors.lightGreen))
      ..add(DataAdab(
          title: 'Adab Buang Hajat',
          description: 'Buang hajat tempat yang tertutup'
              'Membaca doa sebelum buang hajat'
              'Masukla menggunkana kaki kiri karena toilet adalah tempat kotor',
          image:
              'https://akcdn.detik.net.id/visual/2019/07/23/0a849250-4829-42c2-aa08-3e4665b1fc8e_169.jpeg?w=650',
          matertialColor: Colors.green))
      ..add(DataAdab(
          title: 'Adab Dalam Menuntut Ilmu',
          description:
              'Niat Lillahi taala Saat kita hendak menuntut ilmu, niat utama kita harus karena Allah'
              'Selalu berdoa saat menuntut ilmu'
              'Bersungguh-sungguh dalam menuntut ilmu',
          image:
              'https://i2.wp.com/www.hidayatullah.com/files/2020/06/WhatsApp-Image-2020-06-27-at-12.40.58.jpeg?resize=630%2C&ssl=1',
          matertialColor: Colors.lightGreen))
      ..add(DataAdab(
          title: 'Adab Berbicara',
          description: 'Berbicara harus jelas dan benar'
              'Seimbang dan menjauhi bertele-tele'
              'Menggunakan bahasa yang halus dan lembut',
          image:
              'https://www.alterra.id/wp-content/uploads/2019/11/The-power-of-ngobrol-1024x571.png',
          matertialColor: Colors.green))
      ..add(DataAdab(
          title: 'Sabar',
          description: 'Bersabar dalam menjalankan ketaatan kepada allah'
              'Bersabar untuk tidak melakukan hal hal yang diharamakan allah'
              'Bersabar dalam menghadapi takdir takdir allah yang di alaminya',
          image:
              'https://assets.pikiran-rakyat.com/crop/0x0:0x0/x/photo/2020/04/10/1623834411.png',
          matertialColor: Colors.lightGreen))
      ..add(DataAdab(
          title: 'Adab Berpakaian dan Berhias',
          description: 'Gunakan pakaian yang halal'
              'Tidak menyerupai lawan jenis'
              'Memulai dari sebelah kanan',
          image:
              'https://static.sneakerdistrict.nl/images2/Nike-NSW-Swoosh-T-Shirt-Light-Orewood-Brown-3-1600.jpg',
          matertialColor: Colors.green))
      ..add(DataAdab(
          title: 'Jujur',
          description: 'Jujur dalam niat dan kehendak'
              'Jujur dalam ucapan'
              'Jujur dalam tekad dan memenuhi janji',
          image: 'https://gkdi.org/blog/wp-content/uploads/2019/02/jujur-.jpg',
          matertialColor: Colors.lightGreen));
  }
}
