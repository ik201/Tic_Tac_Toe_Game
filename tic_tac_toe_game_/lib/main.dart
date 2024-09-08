// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, override_on_non_overriding_member, library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() => runApp(TicTacToeApp());

class TicTacToeApp extends StatelessWidget {
 const TicTacToeApp ({super.key});
  @override
 
 Widget build(BuildContext context) {
   return MaterialApp(
      title: 'Tic Tac Toe',
       home: TicTacToeScreen(),
   );
 }   
}

class TicTacToeScreen extends StatefulWidget {
  @override

    _TicTacToeScreenState createState() => 
      _TicTacToeScreenState();
}

  class _TicTacToeScreenState extends  State<TicTacToeScreen> {
  List<String> board = List.filled(9,'', growable: false );
  String currentPlayer ='X';

  @override
  Widget build(BuildContext context) {
    return Scaffold(   
      appBar:AppBar(
        title:Text('Tic Tac Toe')),
        body: GridView.builder(   
          gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),

          itemCount: board.length,
          itemBuilder: (context, index) {
            return
            GestureDetector(  
              onTap:  () => _markCell(index),
              child: Container(   
                decoration:BoxDecoration(   
                  border:Border.all(color: Colors.black),
                ),
                child: Center(
                  child: Text(   
                    board[index], 
                    style: TextStyle(fontSize:40),
                  ),
                ),
              ),
            );
          },
        )
    );
  }
  void _markCell(int index) { 
    if (board[index]== '') {
      setState(() {
        board[index] ==
         currentPlayer;
            currentPlayer =
            currentPlayer == 'X' ? 'O' : 'X';
      });
    }
  }
}