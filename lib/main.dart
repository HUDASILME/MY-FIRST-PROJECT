// //import 'dart:js';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// //import 'package:google_fonts/google_fonts.dart';
// //import 'package:shop/screens/homescreen.dart';
// //import 'dart:js';

// void main() {
//   runApp(MaterialApp(
//     // title: 'electrical store',
//     // theme: ThemeData(textTheme: GoogleFonts.almaraiTextTheme()),
//     home: homescreen(), debugShowCheckedModeBanner: false,
//     showSemanticsDebugger: false,
//   ));
// }

// class homescreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: Colors.blue,
//         appBar: homeappbar(),
//         body: Stack(children: [
//           Container(
//             decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(30), color: Colors.white),
//           ),
//           ListView.builder(
//               itemCount: product.length,
//               itemBuilder: (BuildContext ctxt, int index) {
//                 return itemwedget(product[index]);
//               }),
//         ]));
//   }
// }

// AppBar homeappbar() {
//   return AppBar(
//     title: Text(
//       'أهلا بكم في متجر الإلكترونيات',
//       textAlign: TextAlign.right,
//     ),
//     backgroundColor: Colors.blue[500],
//     toolbarHeight: 90,
//     actions: [IconButton(onPressed: () {}, icon: Icon(Icons.menu))],
//   );
// }

// class Products {
//   String title;
//   String subtitle;
//   String image;
//   String description;
//   int price;

//   Products(
//       {this.title, this.subtitle, this.image, this.description, this.price});
// }

// List<Products> product = [
//   Products(
//     title: "جهاز موبايل",
//     subtitle: "وأصبح للموبايل قوة",
//     image: "images/mobile.png",
//     price: 1099,
//     description:
//         "جهاز موبايل ذات قوة وكفاءة نتمس نتىابهخثسى نمتنمشىنم منىنمشىم منىثمنىشنم نمىمننم",
//   ),
//   Products(
//     title: "كاميرات كمبيوتر",
//     subtitle: "بجودة ودقة صورة عالية",
//     image: "images/camera.png",
//     price: 39,
//     description:
//         " كاميرات للكمبيوتر ساعات لوريمبا يسكينج أليايت,سيت دو أيوسمود تيمبو ",
//   ),
//   Products(
//     title: "نظارات ثلاثية الأبعاد",
//     subtitle: "لنقلك للعالم الافتراضي",
//     image: "images/class.png",
//     price: 39,
//     description:
//         "نظارات ثلاثية الأبعاد تنقلك لعالم افتراضي و بي أليايت,سيت دو أيوسمود تيمبور أنكايديديونتيوت لابوري ات دولار ماجنا أليكيوا",
//   ),
//   Products(
//       title: 'سماعات لاسلكية',
//       subtitle: 'ذات جودة عالية',
//       image: 'images/airpod.png',
//       price: 59,
//       description:
//           'سماعات قوية ذات جودة عالية وىالبو ابءؤءلاؤ ؤبلايلائلالبتةل للابءلاءلا '),
//   Products(
//     title: "سماعات",
//     subtitle: "لساعات استماع طويلة",
//     image: "images/headset.png",
//     price: 56,
//     description:
//         " سماعات تدوم لفترة طويلة لوريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يسسس.سماعات ",
//   ),
//   Products(
//      title: "مسجل صوت",
//     subtitle: "سجل اللحظات المهمة حولك",
//     image: "images/speaker.png",
//     price: 68,
//     description:
//         "مسجل صوت لالبيلابءب يلائيلالئسل سليلسلق يلبيسلس سبسبشل وريم ايبسوم دولار سيت أميت ,كونسيكتيتور أدايبا يس",
//   ),
// ];

// class itemwedget extends StatelessWidget {
//   Products pp;
//   itemwedget(this.pp);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(11.0),
//       child: InkWell(
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => pagetwo(pp)),
//           );
//         },
//         child: Container(
//           //margin: EdgeInsets.symmetric(vertical: 30),
//           decoration: BoxDecoration(
//               borderRadius: BorderRadius.all(Radius.circular(20)),
//               color: Colors.white,
//               boxShadow: [
//                 BoxShadow(
//                     offset: Offset(0, 15),
//                     blurRadius: 25,
//                     color: Colors.black38)
//               ]),
//           height: 105,
//           width: 230,
//           child: Center(
//             child: Row(
//               children: [
//                 Image(
//                   image: AssetImage(pp.image),
//                 ),
//                 SizedBox(
//                   width: 80,
//                 ),
//                 Column(
//                   //  mainAxisAlignment:CrossAxisAlignment,
//                   children: [
//                     SizedBox(
//                       height: 20,
//                     ),
//                     Text(
//                       pp.title,
//                       style:
//                           TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
//                     ),
//                     Text(pp.subtitle),
//                     Container(
//                       width: 90,
//                       height: 20,
//                       child: Center(
//                           child: Text('السعر:\$' + (pp.price).toString())),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.all(Radius.circular(10)),
//                         color: Colors.orange[200],
//                       ),
//                     )
//                   ],
//                 )
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class pagetwo extends StatelessWidget {
//   Products pp;

//   pagetwo(this.pp);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.grey[200],
//         title: Text(
//           'رجوع',
//           textAlign: TextAlign.left,
//           style: TextStyle(color: Colors.black),
//         ),
//       ),
//       backgroundColor: Colors.blue,
//       body: Column(
//         children: [
//           Container(
//             width: double.infinity,
//             height: 420,
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.only(
//                   bottomLeft: (Radius.circular(40)),
//                   bottomRight: (Radius.circular(40))),
//               color: Colors.grey[200],
//             ),
//             child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(40),
//                   child: Stack(children: [
//                     Center(
//                         child: CircleAvatar(
//                       backgroundColor: Colors.white,
//                       radius: 130,
//                     )),
//                     Image(image: AssetImage(pp.image))
//                   ]),
//                 ),
//                 // SizedBox(
//                 //   height: 10,
//                 // ),
//                 Row(
//                   children: [
//                     SizedBox(
//                       width: 130,
//                     ),
//                     CircleAvatar(
//                       radius: 5,
//                       backgroundColor: Colors.red,
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     CircleAvatar(
//                       radius: 5,
//                       backgroundColor: Colors.blue,
//                     ),
//                     SizedBox(
//                       width: 20,
//                     ),
//                     CircleAvatar(
//                       radius: 5,
//                       backgroundColor: Colors.grey,
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Padding(padding: EdgeInsets.all(10)),
//                     Text(
//                       pp.title,
//                       textAlign: TextAlign.left,
//                       style: TextStyle(color: Colors.black, fontSize: 15),
//                     ),
//                   ],
//                 ),
//                 Row(
//                   children: [
//                     Padding(padding: EdgeInsets.all(10)),
//                     Text('السعر' + ':' + '' + pp.price.toString() + '\$',
//                         textAlign: TextAlign.left,
//                         style: TextStyle(
//                             color: Colors.orange[200],
//                             fontSize: 20,
//                             fontWeight: FontWeight.bold)),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 20,
//           ),
//           Container(
//             child: Text(
//               pp.description,
//               textAlign: TextAlign.start,
//               style: TextStyle(color: Colors.white),
//             ),
//             width: double.infinity,
//             height: 100,
//             color: Colors.blue,
//             alignment: AlignmentDirectional.topStart,
//           )
//         ],
//       ),
//     );

//     ;
//   }
// }
//............
//Image(image: AssetImage(pp.image))

import 'package:flutter/material.dart';

// Import the firebase_core plugin
import 'package:firebase_core/firebase_core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MaterialApp(
    home: App(),
  ));
}

/// We are using a StatefulWidget such that we only create the [Future] once,
/// no matter how many times our widget rebuild.
/// If we used a [StatelessWidget], in the event where [App] is rebuilt, that
/// would re-initialize FlutterFire and make our application re-enter loading state,
/// which is undesired.
class App extends StatefulWidget {
  // Create the initialization Future outside of `build`:
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  /// The future is part of the state of our widget. We should not call `initializeApp`
  /// directly inside [build].
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      // Initialize FlutterFire:
      future: _initialization,
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Scaffold(
            body: Text('error'),
          );
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return Scaffold(
            body: Text('DONE'),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return Scaffold(
          body: Text('LOADING'),
        );
      },
    );
  }
}
