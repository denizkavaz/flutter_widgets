// add this line to related screen's widget
static const String id = 'seed_form_screen';
// main.dart
return MaterialApp(
        title: 'Heterosis',
        initialRoute: HomePageScreen.id,
        routes: {
          SeedFormPage.id: (context) => SeedFormPage(),
          HomePageScreen.id: (context) => HomePageScreen(),
          SalerScreen.id: (context) => SalerScreen(),
        },
        debugShowCheckedModeBanner: false,
    );
