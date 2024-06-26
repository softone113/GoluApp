import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';
import '../../../widgets/custom_dialog.dart';

class TransformScreen extends StatefulWidget {
  const TransformScreen({super.key});

  @override
  State<TransformScreen> createState() => _TransformScreenState();
}

class _TransformScreenState extends State<TransformScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              showCustomDialog(context);
            },
            child: const Text("Dialog"),
          ),
          const CountryCodePicker(
            onChanged: print,
            initialSelection: 'IN',
            favorite: ['+91', 'IN'],
            showCountryOnly: true,
            showOnlyCountryWhenClosed: true,
            alignLeft: false,
          ),
        ],
      )),
    );
  }
}
