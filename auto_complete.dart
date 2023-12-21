Autocomplete<String>(
                        optionsBuilder: (TextEditingValue textEditingValue) {
                          if (textEditingValue.text == '') {
                            return const Iterable<String>.empty();
                          }
                          return widget.nameList.where((String option) {
                            return option.contains(textEditingValue.text);
                          });
                        },
                        onSelected: (String selection) {
                          setState(() async {
                            tohum_adi_controller.text = selection;
                            final dbservice = DatabaseService();
                            List<Seed> myList = [];
                            final List<Map<String, dynamic>> maps = (await dbservice.getCategory(selection)).cast<Map<String, dynamic>>();
                            myList = List.generate(maps.length, (i) {
                              return Seed(
                                id: maps[i]['id'],
                                name: maps[i]['name'],
                                category: maps[i]['category'],
                                company: maps[i]['company'],
                              );
                            });
                            String catname = myList[0].name;
                            _categoryController.text = catname;

                          });
                        },
                        fieldViewBuilder: (
                            BuildContext context,
                            TextEditingController fieldTextEditingController,
                            FocusNode fieldFocusNode,
                            VoidCallback onFieldSubmitted
                            ) {
                          return TextFormField(
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                ScaffoldMessenger.of(context).showSnackBar(validateNameSnackBar);
                                return 'Boş Bırakılamaz!';
                              }
                              return null;
                            },

                            controller: fieldTextEditingController,
                            focusNode: fieldFocusNode,
                            textCapitalization: TextCapitalization.words,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            decoration: const InputDecoration(
                              hintText: 'İlk 3 Harfini Giriniz...',
                              border: kInputBorder,
                              contentPadding: EdgeInsets.fromLTRB(20.0, 6.0, 10.0, 6.0),
                              errorStyle: const TextStyle(fontSize: 0.01),
                              //labelText: 'Tohum Adının İlk 3 Harfini Giriniz...',
                            ),
                            onChanged: (value) {
                              setState(() {
                                tohum_adi_controller.text = value;
                              });
                            },
                          );
                        },


                      )
