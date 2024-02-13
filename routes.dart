// add this line to related screen's widget
static const String id = 'extra_list_screen';
// to go to a route
Navigator.pushNamed(context, ExtraListScreen.id);


// main.dart
return MaterialApp(
        title: 'Heterosis',
        initialRoute: HomePageScreen.id,
        routes: {
          SeedFormPage.id: (context) => SeedFormPage(),
          HomePageScreen.id: (context) => HomePageScreen(),
          ExtraListScreen.id: (context) => ExtraListScreen(),
        },
        // remove debug tag in right-top simulator
        debugShowCheckedModeBanner: false,
    );
