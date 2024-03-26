
import 'package:flutter/material.dart';

import 'package:bhagvadgeeta/utils/adhyay.dart';

class Saar extends StatefulWidget {
  const Saar({super.key});

  @override
  State<Saar> createState() => _SaarState();
}

class _SaarState extends State<Saar> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: const Text(
          'श्रीमद भगवत गीता',
          style: TextStyle(color: Colors.white, fontSize: 20 , fontWeight: FontWeight.w600),
        ),
      ),
      body: Stack(
        children: [
          // Container(
          //   height: height * 0.40,
          //   width: width,
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //         image: AssetImage('asset/img/b.png'),
          //         fit: BoxFit.cover,
          //       )),
          // ),
          Container(
            width: width,
            // color: Colors.blue,
            child: SingleChildScrollView(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.s,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0,10, 0, 0),
                    height: height * 0.20,
                    width: width * 0.80,
                     // color: Colors.red,
                     child: Image.asset(
                      'asset/img/b.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // height: height * 0.6,
                    width: width,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Column(
                      children: [
                        ...List.generate(
                          adhyaydata[0]['bhaags'].length,
                              (index) => buildContainer(index),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildContainer(int index) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
        // height: height * 0.5,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
            border: Border.all(color: Colors.orange , width: 4),),
        child: Column(
          children: [
            Text(
              adhyaydata[0]['bhaags'][index]['id'],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: height / 55,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                adhyaydata[0]['bhaags'][index]['name'],
                style: TextStyle(
                  fontSize: height / 40,
                  fontWeight: FontWeight.w300,
                  color: Colors.black,
                ),
              ),
            ),
            Text(
              adhyaydata[0]['bhaags'][index]['meaning'],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: height / 55,
                fontWeight: FontWeight.w400,
                color: Colors.black,
              ),
            ),
          ],
        ));
  }
}
