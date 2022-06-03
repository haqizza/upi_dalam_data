import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class infoDosen extends StatelessWidget {
  const infoDosen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      // TopBar(
      //   title: const Text('Info Dosen',
      //       style: TextStyle(
      //         color: Colors.black,
      //         fontWeight: FontWeight.bold,
      //         fontSize: 20,
      //       )),
      //   appBar: AppBar(),
      //   widgets: const <Widget>[Icon(Icons.abc_rounded)],
      //   isLeading: false,
      //   leading: Image.asset(
      //     'images/logoUPI_32.png',
      //   ),
      // ),
      SizedBox(height:10),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: TextFormField(
          decoration: InputDecoration(
            border: const OutlineInputBorder(),
            label: Text("Cari"),
          ),
        ),
      ),
      Expanded(
          child: ListView(
            padding: const EdgeInsets.all(20),
            children: new List.generate(10, (index) => new Card(
            child: ListTile(
              onTap: () {},
              leading: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'
              ),
          //trailing: const Icon(Icon.more_vert),
          title: const Text('Judul'),
          subtitle: const Text("ini subjudul"),
          tileColor: Colors.white70,
            ),
          ),
        ),
      ),
    ),

      ],
    );
  }
}


  //   new Column(
  //     children: [
  //         TopBar(title: Text("INFO UPI"), appBar: AppBar(), widgets: widgets, isLeading: Icon(Icons.abc)))
  //         TextField (
  //           decoration: const InputDecoration(
  //             labelText : 'Search', suffixIcon: Icon(Icons.search)
  //           )
  //         ),
  //         const SizedBox(
  //           height: 20,
  //         ),
  //       Expanded (
  //         child: ListView(
  //         padding: const EdgeInsets.all(8),
  //         children: new List.generate(10, (index) => new Card(
  //         child: ListTile(
  //         onTap: () {},
  //         leading: Image.network(
  //           'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'
  //         ),
  //         //trailing: const Icon(Icon.more_vert),
  //         title: const Text('Judul'),
  //         subtitle: const Text("ini subjudul"),
  //         tileColor: Colors.white70,
  //       )))
  //       ))  
  //     ],
  //   );
  // }