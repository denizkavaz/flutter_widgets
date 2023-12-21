SizedBox(
            width: 300,
            height: 50,
            child: ElevatedButton(
                style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                    backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                    alignment: Alignment.centerLeft,
                    textStyle: MaterialStateProperty.all<TextStyle>(TextStyle(fontSize: 16, fontWeight: FontWeight.w500,)),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                         RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                            side: BorderSide(color: Colors.brown, width: 5),
                        )
                    )
                ),
                onPressed: () {
                  UserNamePrefs _userNamePrefs = UserNamePrefs();
                  _userNamePrefs.setUserName(_userNameController.text);
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.recommend),
                    SizedBox(width: 15,),
                    Text('Enter'),
                  ],
                )
            ),
          )
