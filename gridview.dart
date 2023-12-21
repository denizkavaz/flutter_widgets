GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisCount: 2,
        childAspectRatio: 240 / 250,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: List<Widget>.generate(categories.length, (index) {
          return CategoryBox(
              categoryName: categories[index].name,
              imageName: categories[index].image);
        }),
      )),


// Category Box Widget

Container(
      width: MediaQuery.of(context).size.width / 2,
      decoration: BoxDecoration(
        color: const Color(0xfff1f1f1),
        border: Border.all(
          width: 2,
          color: const Color(0xffebebeb),
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              imageName,
              semanticsLabel: categoryName,
              height: 60.0,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              categoryName,
              style: const TextStyle(fontWeight: FontWeight.w600),
            ),
          ],
        ),
      ),
    )


  // List of Categories

  List<Category> categories = [
  Category(name: 'DOMATES TANE VE BEEF', order: 1, image: 'assets/categories/tomato.svg'),
  Category(name: 'DOMATES PEMBE VE KÖY', order: 1, image: 'assets/categories/pink-tomato.svg'),
  Category(name: 'DOMATES KOKTEYL', order: 1, image: 'assets/categories/cherry-tomato.svg')
];



