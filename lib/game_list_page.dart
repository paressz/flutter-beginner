import 'package:dicoding/Game_Item.dart';
import 'package:dicoding/data/model/game.dart';
import 'package:dicoding/game_detail_page.dart';
import 'package:flutter/material.dart';

class GameListPage extends StatefulWidget {

  const GameListPage({Key? key}) : super(key: key);

  @override
  _GameListPage createState() => _GameListPage();
}
class _GameListPage extends State<GameListPage> {

  bool _isKentangFilterActive = false;
  get gameList => Game.sampleGameList;
  var kentangFriendlyGames = Game.sampleGameList.where((element) => element.isKentangFriendly);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("GAME FINDER"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Center(
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
                  child: Text("Filter Spek Kentang"),
                ),
                Switch(value: _isKentangFilterActive, onChanged: (it)=>setState(() {
                  _isKentangFilterActive = it;
                })),
              ],
            ),
          ),

          Expanded(
              child: SizedBox(
                height: 200,
                child: LayoutBuilder(builder: (BuildContext context, BoxConstraints constraints) {
                  if (constraints.maxWidth > 900) {
                    return GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            childAspectRatio: 6/4
                        ),
                        itemCount: _isKentangFilterActive ? kentangFriendlyGames.length : gameList.length ,
                        itemBuilder: (context, index) {

                          return InkWell(
                              onTap: () {
                                if (_isKentangFilterActive) {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                    return GameDetailPage(game: kentangFriendlyGames.elementAt(index));
                                  }));
                                } else {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                    return GameDetailPage(game: gameList.elementAt(index));
                                  }));
                                }
                              },
                              child : Padding(
                                padding: EdgeInsets.all(8),
                                child: GameItem(
                                    game: _isKentangFilterActive ? kentangFriendlyGames.elementAt(index) : gameList.elementAt(index)
                                ),
                              )
                          );
                        }
                    );
                  } else {
                    return GridView.builder(
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 6/4
                        ),
                        itemCount: _isKentangFilterActive ? kentangFriendlyGames.length : gameList.length ,
                        itemBuilder: (context, index) {

                          return InkWell(
                              onTap: () {
                                if (_isKentangFilterActive) {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                    return GameDetailPage(game: kentangFriendlyGames.elementAt(index));
                                  }));
                                } else {
                                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                                    return GameDetailPage(game: gameList.elementAt(index));
                                  }));
                                }
                              },
                              child : Padding(
                                padding: EdgeInsets.all(8),
                                child: GameItem(
                                    game: _isKentangFilterActive ? kentangFriendlyGames.elementAt(index) : gameList.elementAt(index)
                                ),
                              )
                          );
                        }
                    );
                  }
                  },
                ),
              )
          )
        ],
      ),
    );
  }
}