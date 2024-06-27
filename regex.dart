import 'package:regexpattern/regexpattern.dart';


// regexpattern: ^2.6.0

TextFormField(
    validator: (value) 
            { 
                        if(value!.isEmpty) {return 'Please Enter Your Email';} 
                        else if (value.isEmail() == false) { return 'invalid email'; }
                        else if (value.isEmail() == true) { return null; }
                        else {
                          return null;
                        }
                      },
                      decoration: textFormDecoration.copyWith(labelText: 'Email', hintText: 'Enter Your Email Address'),
                    )



  Pattern username;
Pattern usernameV2;
Pattern usernameGoogle;
Pattern usernameInstagram;
Pattern usernameDiscord;
Pattern email;
Pattern url;
Pattern uri;
Pattern phone;
Pattern hexadecimal;
Pattern vector;
Pattern image;
Pattern audio;
Pattern video;
Pattern txt;
Pattern doc;
Pattern excel;
Pattern ppt;
Pattern apk;
Pattern pdf;
Pattern html;
Pattern dateTimeUTC;
Pattern dateTime;
Pattern binary;
Pattern md5;
Pattern sha1;
Pattern sha256;
Pattern ssn;
Pattern ipv4;
Pattern ipv6;
Pattern isbn;
Pattern github;
Pattern passport;
Pattern currency;
Pattern numericOnly;
Pattern alphabetOnly;
Pattern alphaNumericOnly;
Pattern alphaNumericSymbolOnly;
Pattern noWhitespace;
Pattern passwordEasy;
Pattern passwordNormal1;
Pattern passwordNormal2;
Pattern passwordNormal3;
Pattern passwordHard;
Pattern passwordEasyAllowedWhitespace;
Pattern passwordNormal1AllowedWhitespace;
Pattern passwordNormal2AllowedWhitespace;
Pattern passwordNormal3AllowedWhitespace;
Pattern passwordHardAllowedWhitespace;
Pattern uuid;
Pattern bitcoinAddress;
Pattern bitcoinTaprootAddress;
Pattern bitcoinSegwitAddress;
Pattern ethereumAddress;
