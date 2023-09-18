class Game {
  String nama, cpu, ram, hdd, gambar;
  bool isKentangFriendly;

  Game(this.nama, this.cpu, this.ram, this.hdd, this.gambar, this.isKentangFriendly);

  
  static final List<Game> sampleGameList = [
      Game(
        "League of Legends", "Intel Core i3-530 / AMD A6-3650", 
        "2 GB", "16 GB", 
        "https://www.leagueoflegends.com/static/logo-1200-04b3cefafba917c9c571f9244fd28a1e.png", true),
      Game(
        "DARK SOULS™: REMASTERED", "Intel Core i5-2300 2.8 GHz / AMD FX-6300", 
        "6 GB", "8 GB", 
        "https://cdn.cloudflare.steamstatic.com/steam/apps/570940/header.jpg", true),
      Game(
        "GTA V", "Intel Core 2 Quad CPU Q6600 / AMD Phenom 9850", 
        "4 GB", "72 GB", 
        "https://cdn.cloudflare.steamstatic.com/steam/apps/271590/header.jpg", true),
      Game(
        "Team Fortress 2", "Intel Pentium 4", 
        "1 GB", "15 GB", 
        "https://cdn.cloudflare.steamstatic.com/steam/apps/440/header.jpg", true),
      Game(
        "War Thunder", "Intel Core i5 / Ryzen 5 3600", 
        "16 GB", "95 GB", 
        "https://cdn.cloudflare.steamstatic.com/steam/apps/236390/header.jpg", false),
      Game(
        "Counter-Strike: Global Offensive", "Intel Core 2 Duo E6600 / AMD Phenom™ X3 8750", 
        "2 GB", "15 GB", 
        "https://cdn.cloudflare.steamstatic.com/steam/apps/730/header.jpg", true),
      Game(
        "Apex Legends", "AMD FX 4350 / Intel Core i3 6300", 
        "6 GB", "56 GB", 
        "https://cdn.cloudflare.steamstatic.com/steam/apps/1172470/header.jpg", false),
      Game(
        "PUBG: BATTLEGROUNDS", "Intel Core i5-4430 / AMD FX-6300", 
        "8 GB", "40 GB",
        "https://cdn.cloudflare.steamstatic.com/steam/apps/578080/header.jpg", false),
      Game("The Sims 4", "Intel Core i3-3220 / AMD Ryzen 3 1200", 
      "4 GB", "26 GB", 
      "https://cdn.cloudflare.steamstatic.com/steam/apps/1222670/header.jpg", true),
      Game(
        "World of Warships", "Intel Core i3-3210 / AMD Athlon II X2 245", 
        "6 GB", "61 GB", 
        "https://cdn.cloudflare.steamstatic.com/steam/apps/552990/header.jpg", false),
    ];
}