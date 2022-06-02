import 'package:flutter/material.dart';



class HomePage extends StatelessWidget {
  const HomePage({Key? key,}) : super(key: key);

  // @override
  // State<HomePage> createState() => _HomePageState();

  @override
  Widget build(BuildContext context) {
    return Column(
      //mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
            'images/foto_upi.png',
            fit: BoxFit.contain,
        ),
        Card(
          margin: const EdgeInsets.all(10),
          child :Row(mainAxisAlignment: MainAxisAlignment.center,
          children:[
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              margin: const EdgeInsets.all(14),
              child: IconButton(
                      icon: const Icon(Icons.account_box_outlined),
                      tooltip: 'Profil User',
                      onPressed: () {
                      // kalau ditap
                      },
                    ),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              margin: const EdgeInsets.all(14),
              child: IconButton(
                      icon: const Icon(Icons.account_box_outlined),
                      tooltip: 'Profil User',
                      onPressed: () {
                      // kalau ditap
                      },
                    ),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              margin: const EdgeInsets.all(14),
              child: IconButton(
                      icon: const Icon(Icons.account_box_outlined),
                      tooltip: 'Profil User',
                      onPressed: () {
                      // kalau ditap
                      },
                    ),
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(color: Colors.red)),
              margin: const EdgeInsets.all(14),
              child: IconButton(
                      icon: const Icon(Icons.account_box_outlined),
                      tooltip: 'Profil User',
                      onPressed: () {
                      // kalau ditap
                      },
                    ),
            )
          ]
          )
        )
      ],
    );
  }
}

// class _HomePageState extends State<HomePage> {

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: TopBar(
//         title: const Text('Homepage',
//           style: TextStyle(
//           color: Colors.black,
//           fontWeight: FontWeight.bold,
//           fontSize: 20,
//         )),
                    
//         appBar: AppBar(
//         ),
//         isLogo: false,
//       ),
//       body: Center(
//         child: Column(
//           //mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Container(
//               child: Image.asset(
//                  'images/foto_upi.png',
//                   fit: BoxFit.contain,
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.all(10),
//               child :Row(mainAxisAlignment: MainAxisAlignment.center,
//               children:[
//                 Container(
//                   decoration: BoxDecoration(border: Border.all(color: Colors.red)),
//                   margin: EdgeInsets.all(14),
//                   child: IconButton(
//                           icon: const Icon(Icons.account_box_outlined),
//                           tooltip: 'Profil User',
//                           onPressed: () {
//                           // kalau ditap
//                           },
//                         ),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(border: Border.all(color: Colors.red)),
//                   margin: EdgeInsets.all(14),
//                   child: IconButton(
//                           icon: const Icon(Icons.account_box_outlined),
//                           tooltip: 'Profil User',
//                           onPressed: () {
//                           // kalau ditap
//                           },
//                         ),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(border: Border.all(color: Colors.red)),
//                   margin: EdgeInsets.all(14),
//                   child: IconButton(
//                           icon: const Icon(Icons.account_box_outlined),
//                           tooltip: 'Profil User',
//                           onPressed: () {
//                           // kalau ditap
//                           },
//                         ),
//                 ),
//                 Container(
//                   decoration: BoxDecoration(border: Border.all(color: Colors.red)),
//                   margin: EdgeInsets.all(14),
//                   child: IconButton(
//                           icon: const Icon(Icons.account_box_outlined),
//                           tooltip: 'Profil User',
//                           onPressed: () {
//                           // kalau ditap
//                           },
//                         ),
//                 )
//               ]
//               )
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
