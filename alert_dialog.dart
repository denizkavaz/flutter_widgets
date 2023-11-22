Future<void> showMessage(String message, BuildContext context) async {
  String mes = message;
  return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Title of DialogBox'),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('Your Message: $mes'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
                onPressed: () {},
                child: Text('Close')
            ),
          ],
        );
      }
  );
}
