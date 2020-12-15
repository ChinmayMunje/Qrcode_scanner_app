import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pdfviewerapp/Generate_QR.dart';
import 'package:pdfviewerapp/Scan_QR.dart';
import 'package:pdfviewerapp/scratch_card.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
       primarySwatch: Colors.green,
      ),
      home: Scratch_Card(),
    );
  }
}
//
// class HomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<HomePage> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: Container(
//         width: 500,
//         height: 500,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQyYwscUPOH_qPPe8Hp0HAbFNMx-TxRFubpg&usqp=CAU")),
//             FlatButton(
//               padding: EdgeInsets.all(15),
//               onPressed: (){
//                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=> ScanQR()));
//               },
//                 child: Text("Scan QR Code",style: TextStyle(color: Colors.green),),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//                 side: BorderSide(color: Colors.green),
//               ),
//             ),
//             SizedBox(height: 10),
//
//             FlatButton(
//               padding: EdgeInsets.all(15),
//               onPressed: (){
//                 Navigator.of(context).push(MaterialPageRoute(builder: (context)=> GenerateQR()));
//               },
//               child: Text("Generate QR Code", style: TextStyle(color: Colors.green),),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//                 side: BorderSide(color: Colors.green),
//               ),
//             ),
//           ],
//         ),
//       )
//     );
//   }
// }

