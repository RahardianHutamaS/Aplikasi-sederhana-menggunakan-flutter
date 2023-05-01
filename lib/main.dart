import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
               SizedBox(height: 20),
              Text(
                'Welcome to the Maron River',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
             Image.asset(
              'image/maron.jpg', // path gambar pada aplikasi
              width: 300, // lebar gambar
              height: 200, // tinggi gambar // skala gambar
              ),
              SizedBox(height: 50),
              Text(
                'Menikmati keindahan alam dari Sungai Maron, para pengunjung akan dimanjakan dengan suasana dan panorama mendamaikan Tempat wisata alam yang cocok untuk ngadem merelaksasi jiwa dan tubuh lelah akan suasana bising perkotaan.',
                style: TextStyle(fontSize: 17, fontFamily: 'Roboto Mono'),
                
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Go to next Page'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SecondPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SecondPage extends StatefulWidget {
  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20),
              Text(
                'Tourist Spot on the Maron River',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
              ),
              SizedBox(height: 10),
             Image.asset(
              'image/spote.jpg', // path gambar pada aplikasi
              width: 300, // lebar gambar
              height: 200, // tinggi gambar // skala gambar
              ),
              SizedBox(height: 50),
              Text(
                'Jangan lewatkan aktivitas terbaiknya yaitu susur Sungai Maron menggunakan perahu wisata bersama orang tercinta. Air jernih kebiruan dengan panorama hijau sepanjang perjalanan explore Sungai Maron akan mendamaikan jiwa penat. Banyak juga spot foto instagramable yang siap memanjakan aktivitas libur akhir pekan anda di Sungai Maron Pacitan Jawa Timur. Jangan sampai tempat piknik murah meriah di Pacitan satu ini terlewatkan dari list kunjungan wisata anda saat akhir pekan tiba.',
                 style: TextStyle(fontSize: 15, fontFamily: 'Roboto Mono'),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                child: Text('Go to next Page'),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => FourImages()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}


class FourImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Photo of the Beauty of the Maron'),
      ),
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 50,
              left: 20,
              child: Image.asset(
                'image/foto1.jpg',
                width: 150,
                height: 150,
              ),
            ),
            Positioned(
              top: 50,
              right: 20,
              child: Image.asset(
                'image/foto2.jpg',
                width: 150,
                height: 150,
              ),
            ),
            Positioned(
              bottom: 50,
              left: 20,
              child: Image.asset(
                'image/foto3.jpg',
                width: 150,
                height: 150,
              ),
            ),
            Positioned(
              bottom: 50,
              right: 20,
              child: Image.asset(
                'image/foto4.jpg',
                width: 150,
                height: 150,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
