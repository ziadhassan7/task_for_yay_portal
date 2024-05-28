import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_datepicker/datepicker.dart';
import 'package:task_for_yay_portal/features/form/presentation/controllers/input_fields_controller.dart';
import '../../../../core/localization/localization.dart';
import '../../../../core/styles/default_padding.dart';
import '../widget/text_label.dart';

class BirthdateField extends StatelessWidget {
  const BirthdateField({super.key});
  
  static late double screenHeight;
  static late double screenWidth;

  @override
  Widget build(BuildContext context) {
    
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    
    return Padding(
      padding: defaultPadding,

      child: Directionality(
        textDirection: TextDirection.ltr,

        child: Row(
          children: [
            TextLabel(label: LocalTxt().birthDate,),

            const Spacer(),

            iconButton(context),
          ],
        ),
      ),
    );
  }

  Widget iconButton(BuildContext context){
    return InkWell(
        onTap: (){
          _showDatePicker(context);
        },
        child: const Icon(Icons.date_range_rounded));
  }

  void _showDatePicker(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Expanded(
          child: AlertDialog(
            contentPadding: EdgeInsets.zero,

            content: SizedBox(
              height: screenHeight*0.6, width: screenWidth*0.8,

              child: SfDateRangePicker(
                onSelectionChanged: (DateRangePickerSelectionChangedArgs args) {
                  DateTime pickedTime = DateTime.parse(args.value.toString());
                  InputFieldsController.birthDate = "${pickedTime.year}-${pickedTime.month}-${pickedTime.day}";
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        );
      },
    );
  }
}
