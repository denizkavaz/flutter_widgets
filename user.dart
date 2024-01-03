// Flutter sign in/up and profile screens with wellcome

// Reset Password
// FirebaseAuth.instance.sendPasswordResetEmail(email: email!);

// Sign in
try {
                      final user = await _auth.signInWithEmailAndPassword(
                          email: email!, password: password!);
                      if (user != null) {
                        Fluttertoast.showToast(
                            msg: "Başarılı Giriş",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.red,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                        Navigator.pushNamed(context, HomePageScreen.id);
                      }
                    } catch (e) {
                      print(e);
                    }

