import 'package:flutter/material.dart';
import 'package:vucut_kitle_index/screens/years_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isMale1 = false;
  bool _isMale2 = false;

  String? _selectedGender;

  void _handleContinue() {
    setState(() {
      if (_isMale1) {
        _selectedGender = 'Kadın';
      } else if (_isMale2) {
        _selectedGender = 'Erkek';
      }
    });
    print('Seçilen cinsiyet $_selectedGender');
  }

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
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: deviceHeight / 3.9,
                  backgroundColor:
                      Colors.transparent, // Transparan olarak ayarlanır
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
                          alignment:
                              Alignment.bottomCenter, // Metni aşağı hizalar
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
                SliverPadding(
                  padding: EdgeInsets.only(
                      top: 90.0), // SliverAppBar ile SliverList arasında boşluk
                  sliver: SliverList(
                    delegate: SliverChildListDelegate([
                      SizedBox(
                        height: deviceHeight /
                            2, // İçeriğin üst kısmına boşluk ekler
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(
                                          0xFF458642), // Yeşil çerçeve rengi
                                      border: Border.all(
                                        color:
                                            Color(0xFF458642), // Çerçeve rengi
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
                                  SizedBox(
                                      height:
                                          8), // Resim ile checkbox arasında boşluk
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Kadın'),
                                      Checkbox(
                                        value: _isMale1,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            _isMale1 = value!;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              SizedBox(width: 30), // İki kolon arasında boşluk
                              Column(
                                children: [
                                  Container(
                                    width: 100,
                                    height: 100,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Color(
                                          0xFF458642), // Yeşil çerçeve rengi
                                      border: Border.all(
                                        color:
                                            Color(0xFF458642), // Çerçeve rengi
                                        width: 4, // Çerçeve kalınlığı
                                      ),
                                    ),
                                    child: ClipOval(
                                      child: Image.asset(
                                        'assets/images/user2.png',
                                        width: 120,
                                        height: 100,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                      height:
                                          8), // Resim ile checkbox arasında boşluk
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('Erkek'),
                                      Checkbox(
                                        value: _isMale2,
                                        onChanged: (bool? value) {
                                          setState(() {
                                            _isMale2 = value!;
                                          });
                                        },
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: 20), // İçerikle buton arasında boşluk
                    ]),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end, // Butonu sola hizalar
              children: [
                SizedBox(
                  width: 200, // Genişliği ihtiyaca göre ayarlayın
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Color(0xFF458642), // Butonun arka plan rengi
                      foregroundColor:
                          Colors.white, // Buton üzerindeki metin rengi
                      padding: EdgeInsets.symmetric(
                          vertical: 30.0,
                          horizontal: 25.0), // Butonun iç padding'i
                      textStyle: TextStyle(fontSize: 16), // Metin stili
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => YearsScreen()));
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize
                          .min, // Buton içeriğine göre boyutlandırır
                      mainAxisAlignment:
                          MainAxisAlignment.center, // İçeriği ortalar
                      children: [
                        Text('Devam Et'),
                        SizedBox(width: 8), // Metin ile ikon arasındaki boşluk
                        Icon(
                          Icons.arrow_forward,
                          size: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
