import 'package:flutter/material.dart';

class YearsScreen extends StatefulWidget {
  const YearsScreen({Key? key}) : super(key: key);

  @override
  _YearsScreenState createState() => _YearsScreenState();
}

class _YearsScreenState extends State<YearsScreen> {
  TextEditingController _ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double deviceHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: deviceHeight / 3.9,
                  backgroundColor: Colors.transparent,
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
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Text(
                              'Yaş',
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
                  padding: EdgeInsets.only(top: 90.0),
                  sliver: SliverList(
                    delegate: SliverChildListDelegate([
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: TextField(
                          controller: _ageController,
                          decoration: InputDecoration(
                            labelText: 'Yaşınızı girin',
                            labelStyle: TextStyle(
                              color: Color(0xFF458642),
                              fontSize: 25,
                            ),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFF458642),
                                width: 2,
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                  color: Color(0xFF458642), width: 2),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
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
