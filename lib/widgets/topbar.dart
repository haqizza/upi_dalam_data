import 'package:flutter/material.dart';

class TopBar extends StatelessWidget implements PreferredSizeWidget{
  final Color backgroundColor = Colors.white;
  final Text title;
  final AppBar appBar;
  final List<Widget> widgets;
  final bool isLeading;
  Widget? leading;

  TopBar({
    Key? key,
    required this.title,
    required this.appBar,
    required this.widgets,
    required this.isLeading,
    this.leading
  }) : super(key: key);

  @override
  Widget build(BuildContext context){
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black
      ),
      leading: isLeading ? leading : appBar.leading,
      title: title,
      backgroundColor: backgroundColor,
      actions: [
        Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 20
          ),
          child: ElevatedButton(
            onPressed: () => {
              Navigator.pushNamed(context, '/')
            },
            style: ElevatedButton.styleFrom(
              primary: const Color(0xFFFF0404),
            ),
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.white
              ),          
            ),
          ),
        ),
      ]
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
//https://stackoverflow.com/questions/53411890/how-can-i-have-my-appbar-in-a-separate-file-in-flutter-while-still-having-the-wi