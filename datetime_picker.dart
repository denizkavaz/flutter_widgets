import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart';

// flutter_datetime_picker_plus: ^2.1.0


TextButton(
            onPressed: () {
              DatePicker.showDatePicker(context,
                  showTitleActions: true,
                  minTime: DateTime.now(),
                  maxTime: DateTime(2024, 6, 7),
                  onChanged: (date) {
                    print('change $date');
                  }, 
                  onConfirm: (date) {
                    print('confirm $date');
                  },
                  currentTime: DateTime.now(),
                  locale: LocaleType.tr
              );
            },
            child: Text(
              'show date time picker (Türkçe)',
              style: TextStyle(color: Colors.blue),
            )
        ),


