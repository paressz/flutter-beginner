import 'package:dicoding/data/model/game.dart';
import 'package:flutter/material.dart';

class GameDetailPage extends StatelessWidget {
  final Game game;

  const GameDetailPage({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                  game.gambar,
                scale: 0.5,
              ),
            ),
            PCSpekItem(
                fileName: "svg_cpu.png", spek: game.cpu, komponen: "CPU"),
            PCSpekItem(
                fileName: "svg_ram.png", spek: game.ram, komponen: "RAM"),
            PCSpekItem(
                fileName: "svg_hdd.png", spek: game.hdd, komponen: "HDD"),
          ],
        ),
      ),
    ));
  }
}

class PCSpekItem extends StatelessWidget {
  final String fileName, spek, komponen;

  const PCSpekItem(
      {Key? key,
      required this.fileName,
      required this.spek,
      required this.komponen})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Image.asset(
              "assets/image/$fileName",
              height: 76,
              width: 76,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 8),
            child: Text(
              komponen,
              style: const TextStyle(
                  fontSize: 16,
                  color: Color(0xFF0015b5),
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(),
            child: Text(
              spek,
              style: const TextStyle(fontSize: 16, color: Colors.black54),
            ),
          )
        ],
      ),
    );
  }
}
