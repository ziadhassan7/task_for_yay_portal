import 'package:flutter/material.dart';
import 'package:task_for_yay_portal/core/styles/default_padding.dart';
import '../../../form/presentation/widget/text_label.dart';

class InfoField extends StatelessWidget {
  const InfoField({super.key, required this.title, required this.data});

  final String title;
  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: defaultPadding,

      child: Row(
        children: [
          TextLabel(label: "$title "),

          Text(data),
        ],
      ),
    );
  }
}
