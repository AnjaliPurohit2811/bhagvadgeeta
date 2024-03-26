
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text(
          'श्रीमद भगवत गीता',
          style: TextStyle(color: Colors.white, fontSize: 20 , fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        color: Colors.white,
        child: Stack(children: [
          Expanded(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.fromLTRB(32, height*0.060, 0, 0),
                  height: height * 0.20,
                  width: width * 0.80,
                  child: Image.asset('asset/img/b.png',fit: BoxFit.cover,),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 19.0, top: 150),
            child: Column(
              children: [
                // SizedBox(
                //     height: height * 0.2,
                //     child: Image.asset('assets/logo.png')),
                SizedBox(
                  height: height * 0.04,
                ),
                Container(
                  height: height * 0.6,
                  width: width * 0.9,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: height * 0.02,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('/geeta');                          },
                          child: Container(
                            height: height * 0.12,
                            width: width * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.orange)
                            ),
                            child: Row(
                              children: [
                                Image.asset('asset/img/i2.jpg'),
                                const Padding(
                                  padding:
                                  EdgeInsets.only(top: 8.0, left: 20),
                                  child: Text(
                                    'भगवद गीता',
                                    style: TextStyle(fontSize: 28),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('/saar');
                          },
                          child: Container(
                            height: height * 0.12,
                            width: width * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.orange)
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: SizedBox(
                                      height: height * 0.09,
                                      child: Image.asset('asset/img/i3.jpg')),
                                ),
                                const Padding(
                                  padding:
                                  EdgeInsets.only(top: 8.0, left: 20),
                                  child: Text(
                                    'गीता सार',
                                    style: TextStyle(fontSize: 28),
                                  ),
                                ),
                              ],
                             ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('/mahatmay');
                          },
                          child: Container(
                            height: height * 0.12,
                            width: width * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.orange)
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: SizedBox(
                                      height: height * 0.09,
                                      child: Image.asset('asset/img/i4.jpg')),
                                ),
                                const Padding(
                                  padding:
                                  EdgeInsets.only(top: 8.0, left: 20),
                                  child: Text(
                                    'गीता महात्म्य',
                                    style: TextStyle(fontSize: 28),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: height * 0.02,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context).pushNamed('/aarti');
                          },
                          child: Container(
                            height: height * 0.12,
                            width: width * 0.8,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(color: Colors.orange)
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  child: SizedBox(
                                      height: height * 0.09,
                                      child: Image.asset('asset/img/i7.jpg')),
                                ),
                                const Padding(
                                  padding:
                                  EdgeInsets.only(top: 8.0, left: 20),
                                  child: Text(
                                    'गीता आरती',
                                    style: TextStyle(fontSize: 28),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
