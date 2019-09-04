import 'package:flutter/material.dart';


class CustomGriView extends StatefulWidget {
  @override
  _CustomGriViewState createState() => _CustomGriViewState();
}

class _CustomGriViewState extends State<CustomGriView> {

  //deklarasi data list
  List<Container> daftarWisata = new List();

  var itemDaftarWisata = [

    {"nama" : "Wisata 1", "gambar" : "satu.jpg", "keterangan":"Keterangan Foto 1"},
    {"nama" : "Wisata 2", "gambar" : "dua.jpg", "keterangan":"Keterangan Foto 2"},
    {"nama" : "Wisata 3", "gambar" : "tiga.jpg", "keterangan":"Keterangan Foto 3"},
    {"nama" : "Wisata 4", "gambar" : "empat.jpg", "keterangan":"Keterangan Foto 4"},
    {"nama" : "Wisata 5", "gambar" : "lima.jpeg", "keterangan":"Keterangan Foto 5"},
    {"nama" : "Wisata 6", "gambar" : "enam.jpg", "keterangan":"Keterangan Foto 6"}
  ];

  _buatDataList() async{

    for(var i=0; i<itemDaftarWisata.length; i++){
      final dataWisata = itemDaftarWisata[i];

      final String gambarWisata = dataWisata["gambar"];

      daftarWisata.add(new Container(

        padding: EdgeInsets.all(10),
        child: Card(
          child: new InkWell(
            onTap: (){},
            child: new Column(
              children: <Widget>[
                new Hero(
                  tag: dataWisata["nama"],
                  child: new Image.asset("gambar/$gambarWisata",
                    height: 85.0,
                    width: 85.0,
                    fit: BoxFit.contain,
                  ),
                ),
                new Padding(padding: EdgeInsets.all(10.0)),
                new Text(dataWisata['nama'], style: TextStyle(fontSize: 14.0,
                    fontWeight: FontWeight.bold),),
              ],
            ),
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _buatDataList();//memanngil method yang sudah d buat
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'Custom Grid View'
        ),
        backgroundColor: Colors.pink,
      ),
      body: new GridView.count(crossAxisCount: 2,
        children: daftarWisata,

      ),


    );
  }
}
