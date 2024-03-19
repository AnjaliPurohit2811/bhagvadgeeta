
import 'package:flutter/material.dart';

import '../../utils/geetadata.dart';

class Shlok extends StatefulWidget {
  const Shlok({super.key});

  @override
  State<Shlok> createState() => _ShlokState();
}
int Index=0;
class _ShlokState extends State<Shlok> {
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
            child: Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          'श्रीमद भगवत गीता',
          style: TextStyle(color: Colors.white, fontSize: 20 , fontWeight: FontWeight.w600),
        ),
      ),
      body: Stack(
        children: [
          // Container(
          //   height: height * 0.6,
          //   width: width,
          //   decoration: BoxDecoration(
          //       image: DecorationImage(
          //         image: AssetImage('assets/bg1.png'),
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
                    margin: EdgeInsets.fromLTRB(0, height * 0.085, 0, 0),
                    height: height * 0.20,
                    width: width * 0.80,
                    // color: Colors.red,
                    child: Image.asset(
                      'asset/img/b.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Column(
                      children: [
                        ...List.generate(
                            geetadata[0]['Bhaags'][0]['shloks'].length,
                                (index) => bulidcontainer(index))
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

  Widget bulidcontainer(int index) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 0),
      margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 8),
      decoration:  BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(20)),
          border: Border.all(color: Colors.orange , width: 3)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (index == 0)
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              child: Text(
                geetadata[0]['Bhaags'][Index]['id'],
                style: TextStyle(
                  //fontSize: height / 65,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF2E2E2E),
                ),
              ),
            ),
          if (index == 0)
            Text(
              geetadata[0]['Bhaags'][Index]['name'],
              style: TextStyle(
                fontSize: height / 45,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF2E2E2E),
              ),
            ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              geetadata[0]['Bhaags'][Index]['shloks'][index]['shlok'],
              style: TextStyle(
                fontSize: height / 45,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF2E2E2E),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              geetadata[0]['Bhaags'][Index]['shloks'][index]['meaning'],
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: height / 45,
                fontWeight: FontWeight.w400,
                color: const Color(0xFF2E2E2E),
              ),
            ),
          ),
          Container(
            height: height * 0.05,
            width: width,
            decoration:  BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(18)),
            child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Copy',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                  Text(
                    'Share',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w600),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
