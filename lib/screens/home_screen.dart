import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Container(
          padding: EdgeInsets.all(20),
          child: Text(
            'Vücut Kitle İndeksi Hesaplama',
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        backgroundColor: Color(0xFF458642),
        centerTitle: true,
      ),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: deviceHeight / 3.9,
            backgroundColor: Colors.transparent, // Transparan olarak ayarlanır
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              background: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30.0),
                  bottomRight: Radius.circular(30.0),
                ),
                child: Container(
                  color: Color(0xFF458642),
                  child: Align(
                    alignment: Alignment.bottomCenter, // Metni aşağı hizalar
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Text(
                        'Ben bir ...',
                        style: TextStyle(
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate([
              SizedBox(
                height: deviceHeight / 2, // İçeriğin üst kısmına boşluk ekler
                child: Center(
                  child: Wrap(
                    spacing: 50.0, // Aralarındaki boşluk
                    runSpacing: 50.0, // Satırlar arasındaki boşluk
                    alignment: WrapAlignment.center,
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color(0xFF458642), // Yeşil çerçeve rengi
                          border: Border.all(
                            color: Color(0xFF458642), // Çerçeve rengi
                            width: 4, // Çerçeve kalınlığı
                          ),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/user1.png',
                            width: 90,
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          //color: Color(0xFF458642), // Yeşil çerçeve rengi
                          border: Border.all(
                            color: Color(0xFF458642), // Çerçeve rengi
                            width: 4, // Çerçeve kalınlığı
                          ),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'assets/images/user2.png',
                            width: 90,
                            height: 90,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
