
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../utils/mahatmay.dart';

class GeetaMahatmay extends StatelessWidget {
  const GeetaMahatmay({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          'श्रीमद भगवत गीता',
          style: TextStyle(color: Colors.white, fontSize: 20 , fontWeight: FontWeight.w600),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Stack(
            children: [
              Expanded(
                child: Column(
                  children: [
                    // Container(
                    //   height: 200,
                    //   width: 370,
                    //   child: Image.asset(
                    //     'asset/img/b.png',
                    //     fit: BoxFit.cover,
                    //   ),
                    // ),
                  ],
                ),
              ),
              Column(
                children: [
                  SizedBox(
                      height: 150,
                      width: 300,
                      child: Image.asset('asset/img/b.png' , fit: BoxFit.cover,)),
                  Container(
                      height: 3600,
                      width: 410,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Container(
                              height: 3547,
                              width: 380,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                BorderRadius.all(Radius.circular(15)),
                                  border: Border.all(color: Colors.orange , width: 3),
                              ),
                              child: Column(children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text("गीता माहात्म्य",
                                      style: TextStyle(fontSize: 25)),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                ...List.generate(
                                  mahatmay.length,
                                      (index) => Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    child: Text(mahatmay[index],
                                        style: TextStyle(fontSize: 20)),
                                  ),
                                ),


                              ]),
                            ),
                          ),
                        ],
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
