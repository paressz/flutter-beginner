import 'package:dicoding/data/model/game.dart';
import 'package:flutter/material.dart';

class GameItem extends StatelessWidget {
  final Game game;
  const GameItem ({required this.game, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Container(
          height: 150,
          width: 300,
          decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                color: Colors.black,
                offset: Offset(0, 93),
                blurRadius: 30,
                spreadRadius: 10
              ),
            ],
            image: DecorationImage(
                image: NetworkImage(game.gambar),
                fit: BoxFit.fitHeight
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Align(
              alignment: FractionalOffset.bottomCenter,
              child: Text(
                game.nama,
                textAlign: TextAlign.center,
                maxLines: 1,
                style: const TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
          ,
        ),
      );
  }

}