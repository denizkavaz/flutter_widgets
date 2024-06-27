
// public declarations
const snackBar = SnackBar(
  content: Text('Yay! A SnackBar!'),
  backgroundColor: Colors.purple,
  duration: Duration(seconds: 2),
);

// Tip: declare variables for snacbar customization in const/style



// under state


final GlobalKey<ScaffoldMessengerState> _scaffoldKey = GlobalKey<ScaffoldMessengerState>(); 



// Add key to scaffold
Scaffold(
  key: _scaffoldKey,
);




// Call anywhere
ScaffoldMessenger.of(context).showSnackBar(snackBar);
