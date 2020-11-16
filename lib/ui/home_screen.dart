part of 'uis.dart';

class Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Bahasa Arab"),
        // leading: Icon(Icons.menu),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: kDefaultPadding * 2.5),
              height: size.height * 0.7 / 3,
              child: Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(left: 70, right: 40, bottom: 50),
                    height: size.height * 0.7 - 27,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(45),
                            bottomRight: Radius.circular(45)),
                        color: Colors.amber[300]),
                    child: Row(
                      children: [
                        Text(
                          "أهْلاً وَسَهْلاً",
                          style: Theme.of(context).textTheme.headline5.copyWith(
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                              fontSize: 35),
                        ),
                        Spacer(),
                        Image.asset(
                          "assets/image/book.png",
                          height: 110,
                        )
                      ],
                    ),
                  ),
                  Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Container(
                        alignment: Alignment.center,
                        margin:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        padding:
                            EdgeInsets.symmetric(horizontal: kDefaultPadding),
                        height: 50,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(25),
                            boxShadow: [
                              BoxShadow(
                                  offset: Offset(0, 10),
                                  blurRadius: 50,
                                  color: kPrimaryColor.withOpacity(0.23))
                            ]),
                        child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                              hintText: "Cari",
                              hintStyle: TextStyle(
                                  color: Colors.amber[300].withOpacity(0.5)),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              suffixIcon: Icon(Icons.search)),
                        ),
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                children: [
                  Container(
                    height: 25,
                    child: Stack(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(left: kDefaultPadding / 4),
                          child: Text(
                            "Programs",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                              margin:
                                  EdgeInsets.only(right: kDefaultPadding / 3),
                              height: 6,
                              color: Colors.amber.withOpacity(0.2),
                            ))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // SingleChildScrollView(
            //     scrollDirection: Axis.vertical,
            //     child:)
            Expanded(
                child: ListView(
              children: [
                InkWell(
                  splashColor: Colors.brown[300],
                  child: Card(
                    child: ListTile(
                      onTap: () {},
                      title: Text("Sekolah Dasar"),
                      trailing: Image.asset("assets/image/sd.png"),
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    ),
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}

// Center(
//                 child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Stack(
//                       children: [
//                         Card(
//                           child: InkWell(
//                             child: Container(
//                               height: 100,
//                               decoration: BoxDecoration(
//                                   borderRadius: BorderRadius.circular(20),
//                                   boxShadow: [
//                                     BoxShadow(
//                                         color: Colors.amber.withOpacity(0.5),
//                                         blurRadius: 5,
//                                         offset: Offset(2, 5))
//                                   ],
//                                   gradient: LinearGradient(
//                                       begin: Alignment.topLeft,
//                                       end: Alignment.bottomRight,
//                                       colors: [
//                                         Colors.amber[200],
//                                         Colors.amber[300]
//                                       ])),
//                             ),
//                           ),
//                         )
//                       ],
//                     )),
//               ),

// body: Stack(
//   children: [
//     Container(
//       height: size.height * .45,
//       decoration: BoxDecoration(
//           borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(200),
//               bottomRight: Radius.circular(200)),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.5),
//               spreadRadius: 5,
//               blurRadius: 7,
//               offset: Offset(0, 3),
//             ),
//           ],
//           gradient: LinearGradient(begin: Alignment.topCenter, colors: [
//             Colors.amber[200],
//             Colors.amber[300],
//             Colors.amber
//           ])
//           // image: DecorationImage(
//           //   image: AssetImage("assets/background/bgarab.jpg")
//           // )
//           ),
//     ),
//     SafeArea(
//         child: Padding(
//       padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("أهْلاً وَسَهْلاً",
//                   style: TextStyle(
//                       fontSize: 35,
//                       fontWeight: FontWeight.bold,
//                       fontFamily: 'Arabic',
//                       color: Colors.black.withOpacity(0.8))),
//               SizedBox(width: 15),
//               Image.asset('assets/image/book.png', height: 50),
//             ],
//           ),
//           Container(
//             height: 40,
//             margin: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
//             decoration: BoxDecoration(
//                 color: Colors.white,
//                 borderRadius: BorderRadius.circular(30)),
//             child: TextField(
//               decoration: InputDecoration(
//                   hintText: "Cari",
//                   prefixIcon: Icon(Icons.search),
//                   border: InputBorder.none),
//             ),
//           ),
//           SizedBox(height: 140),
//           Expanded(
//               child: ListView(
//             children: [
//               InkWell(
//                 splashColor: Colors.brown[300],
//                 child: Card(
//                   child: ListTile(
//                     onTap: () {},
//                     title: Text("Sekolah Dasar"),
//                     trailing: Image.asset("assets/image/sd.png"),
//                     contentPadding: EdgeInsets.symmetric(
//                         vertical: 10, horizontal: 20),
//                   ),
//                 ),
//               )
//             ],
//           ))
//         ],
//       ),
//     ))
//   ],
// ),
