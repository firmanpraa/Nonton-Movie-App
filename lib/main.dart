import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(ListViewSample());

class ListViewSample extends StatelessWidget {
  List<ItemObject> data = [
    ItemObject(
        "https://pbs.twimg.com/media/D9-0xtEU8AAubyV.jpg:large",
        "https://1.bp.blogspot.com/-L_B9Ll9weTs/XUZRa-q08xI/AAAAAAAAEPs/8O4QnKIHb3w6VpGz-dqMiLIFNE6rB-r8wCLcBGAs/s1600/Logo-HUT-RI-74-2019.png",
        "Perburuan (2019)",
        "Enam bulan setelah kegagalan PETA melawan Nippon, Hardo kembali ke kampung halamannya di Blora. Kehadirannya segera tercium oleh Nippon dan dia mulai dilacak dan dikejar."),
    ItemObject(
        "https://pbs-0.twimg.com/media/C9vmONZU0AAtk4v.jpg",
        "https://1.bp.blogspot.com/-L_B9Ll9weTs/XUZRa-q08xI/AAAAAAAAEPs/8O4QnKIHb3w6VpGz-dqMiLIFNE6rB-r8wCLcBGAs/s1600/Logo-HUT-RI-74-2019.png",
        "Kartini (2017)",
        "Film ini adalah kisah nyata perjuangan Kartini, pahlawan wanita yang paling populer di Indonesia. Di Indonesia awal tahun 1900 Masehi, Wanita tidak diperbolehkan memperoleh pendidikan yang tinggi, bahkan untuk para Ningrat sekalipun."),
    ItemObject(
        "https://pbs.twimg.com/media/CAivN9pUcAAC-qu.jpg",
        "https://1.bp.blogspot.com/-L_B9Ll9weTs/XUZRa-q08xI/AAAAAAAAEPs/8O4QnKIHb3w6VpGz-dqMiLIFNE6rB-r8wCLcBGAs/s1600/Logo-HUT-RI-74-2019.png",
        "Guru Bangsa Tjokroaminoto (2015)",
        "Oemar Said Tjokroaminoto (Reza Rahadian) yang lahir dari kaum bangsawan Jawa dengan latar belakang keislaman yang kuat, tidak diam saja melihat kondisi kemiskinan rakyat dan kesenjangan sosial selepas Tanam Paksa dan awal Politik Etis sekitar tahun 1900. "),
    ItemObject(
        "https://jatengkita.id/wp-content/uploads/2017/08/Jendral-Soedirman-Poster-404x600.jpg",
        "https://1.bp.blogspot.com/-L_B9Ll9weTs/XUZRa-q08xI/AAAAAAAAEPs/8O4QnKIHb3w6VpGz-dqMiLIFNE6rB-r8wCLcBGAs/s1600/Logo-HUT-RI-74-2019.png",
        "Jenderal Soedirman (2015)",
        "Film biopik yang menceritakan tentang kiprah salah satu tokoh pahlawan Indonesia, Soedirman - yaitu seorang jenderal yang begitu gigih berjuang dan berperang gerilya melawan penjajahan Belanda."),
    ItemObject(
        "https://m.media-amazon.com/images/M/MV5BN2ZlYmNiZWMtZTE3MC00NGE2LWE3OGMtM2QxOGM3YzllYmE3XkEyXkFqcGdeQXVyMjg4MzAyNzY@._V1_UY1200_CR108,0,630,1200_AL_.jpg",
        "https://1.bp.blogspot.com/-L_B9Ll9weTs/XUZRa-q08xI/AAAAAAAAEPs/8O4QnKIHb3w6VpGz-dqMiLIFNE6rB-r8wCLcBGAs/s1600/Logo-HUT-RI-74-2019.png",
        "Soekarno: Indonesia Merdeka (2013)",
        "Setelah pemerintah Hindia Belanda menangkap pemimpin perjuangan kemerdekaan Indonesia, Soekarno, dia memperjuangkan keadilan negara dengan menyampaikan sebuah pidato bersejarah dalam persidangannya."),
    ItemObject(
        "https://m.media-amazon.com/images/M/MV5BMTMzNzUwODI0N15BMl5BanBnXkFtZTcwNzEwNDk2Mw@@._V1_.jpg",
        "https://1.bp.blogspot.com/-L_B9Ll9weTs/XUZRa-q08xI/AAAAAAAAEPs/8O4QnKIHb3w6VpGz-dqMiLIFNE6rB-r8wCLcBGAs/s1600/Logo-HUT-RI-74-2019.png",
        "Darah Garuda (2010)",
        "Empat kadet muda mendapat sebuah tugas sangat rahasia. Mereka dalam misi untuk menggempur sebuah lapangan udara penting untuk melawan kezaliman yang telah dilakukan Jendral Van Mook pada Agustus 1947."),
  ];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Form Validation',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Film Spesial Kemerdekaan Indonesia',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child: Container(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return ItemListWithImage(data[index]);
              },
              itemCount: data.length,
            ),
          ),
        ),
      ),
    );
  }
}

class ItemObject {
  String img;
  String avatar;
  String title;
  String sub;

  ItemObject(this.img, this.avatar, this.title, this.sub);
}

class ItemListWithImage extends StatelessWidget {
  ItemObject itemObject;

  ItemListWithImage(this.itemObject);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {},
      child: Card(
        margin: EdgeInsets.all(5),
        child: Column(
          children: <Widget>[
            FadeInImage.assetNetwork(
                placeholder: 'assets/image/load.gif', image: itemObject.img),
            SizedBox(
              height: 15,
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(itemObject.avatar),
              ),
              title: Text(
                itemObject.title,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                children: <Widget>[
                  Text(
                    itemObject.sub,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Icon(
                        Icons.play_arrow,
                        color: Colors.red,
                        size: 30.0,
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.playlist_add,
                        color: Colors.red,
                        size: 30.0,
                      ),
                      SizedBox(width: 10),
                      Icon(
                        Icons.more_vert,
                        color: Colors.red,
                        size: 30.0,
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
