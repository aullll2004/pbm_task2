import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Travel Pack',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Travel Pack', style: TextStyle(color: Colors.white),),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 220, 126, 158),
        ),
        body: ListView(
          children: <Widget>[
            PlayerCard(
              Wisata: 'Gili Trawangan',
              Provinsi: 'Nusa Tenggara Barat',
              Deskripsi: 'Desa Gili Indah, Kecamatan Pemenang, Kabupaten Lombok Utara Nusa Tenggara Barat',
              rating: 4,
              destinationImage: AssetImage('assets/GettyImages-156466868-57be95b53df78cc16ebc92cf.jpg'), // Change to your asset path
            ),
            PlayerCard(
              Wisata: 'Mandalika',
              Provinsi: 'Nusa Tenggara Barat',
              Deskripsi: 'Kecamatan Sandubaya, Kota Mataram, Nusa Tenggara Barat',
              rating: 3,
              destinationImage: AssetImage('assets/sirkuit-mandalika-2.jpg'), // Change to your asset path
            ),
            PlayerCard(
              Wisata: 'Labuan Bajo',
              Provinsi: 'Nusa Tenggara Timur',
              Deskripsi: 'Kecamatan Komodo, Kabupaten Manggarai Barat, Provinsi Nusa Tenggara Timur',
              rating: 5,
              destinationImage: AssetImage('assets/labuan-bajo-1.jpg'), // Change to your asset path
            ),
          ],
        ),
      ),
    );
  }
}

class PlayerCard extends StatelessWidget {
  final String Wisata;
  final String Provinsi;
  final String Deskripsi;
  final int rating;
  final ImageProvider destinationImage;

  PlayerCard({
    required this.Wisata,
    required this.Provinsi,
    required this.Deskripsi,
    required this.rating,
    required this.destinationImage,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: <Widget>[
            CircleAvatar(
              backgroundImage: destinationImage,
              radius: 30.0,
            ),
            SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(Wisata, style: TextStyle(fontSize: 20.0)),
                  Text(Provinsi),
                  Text(Deskripsi),
                  Row(
                    children: List.generate(rating, (index) {
                      return Icon(
                        index < rating ? Icons.star : Icons.star_border,
                      );
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}