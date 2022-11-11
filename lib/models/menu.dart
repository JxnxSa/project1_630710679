class Menu{
  final String imageMenu, nameMenu;
  final double priceMenu;
  int countPick;

  Menu({
    required this.imageMenu,
    required this.nameMenu,
    required this.priceMenu,
    this.countPick = 0,
  });
}