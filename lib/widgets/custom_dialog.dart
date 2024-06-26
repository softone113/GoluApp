import 'package:flutter/material.dart';
import 'package:goluu_app/utils/color.dart';
import 'package:intl/intl.dart';

void showCustomDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return CustomDialog();
    },
  );
}

class CustomDialog extends StatefulWidget {
  @override
  _CustomDialogState createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog> {
  final TextEditingController _dateController = TextEditingController();
  String? _selectedDateError;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  Widget contentBox(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    final width = mq.width;
    // final height = mq.height;
    return Stack(
      children: <Widget>[
        Container(
          width: width,
          padding: EdgeInsets.symmetric(horizontal: 12, vertical: 10),
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            color: ColorResource.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Feed crypto/ Coin detail',
                    style: TextStyle(
                      fontSize: width * .05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: ColorResource.darkPink,
                    child: IconButton(
                        icon: const Icon(
                          Icons.close,
                          color: ColorResource.white,
                          size: 20,
                        ),
                        onPressed: () {
                          Navigator.of(context).pop();
                        }),
                  )
                ],
              ),
              Container(
                margin: const EdgeInsets.only(top: 10),
                width: double.infinity,
                height: 1,
                child: Divider(
                  thickness: 2,
                  color: ColorResource.grey,
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width * .34,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Coin First Name",
                          style: TextStyle(color: ColorResource.darkBlue),
                        ),
                        TextFormField(
                          decoration: const InputDecoration(
                            hintText: "Enter name",
                            enabledBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorResource.darkPink),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorResource.darkPink),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 2, horizontal: 8),
                          ),
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * .34,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Coin Middle Name",
                          style: TextStyle(color: ColorResource.darkBlue),
                        ),
                        TextFormField(
                          decoration: InputDecoration(
                            hintText: "Enter name",
                            enabledBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorResource.darkPink),
                            ),
                            focusedBorder: const OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: ColorResource.darkPink),
                            ),
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 8, horizontal: 8),
                          ),
                          style: TextStyle(fontSize: 14),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Container(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * .34,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Coin Last Name",
                            style:
                                TextStyle(color: ColorResource.darkBlue),
                          ),
                          TextFormField(
                            decoration: InputDecoration(
                              hintText: "Enter name",
                              enabledBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorResource.darkPink),
                              ),
                              focusedBorder: const OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorResource.darkPink),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 2.0, horizontal: 8),
                            ),
                            style: TextStyle(fontSize: 14),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * .34,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Coin First Name",
                            style:
                                TextStyle(color: ColorResource.darkBlue),
                          ),
                          TextFormField(
                            controller: _dateController,
                            decoration: const InputDecoration(
                              hintText: 'DATE',
                              filled: true,
                              suffixIcon: Icon(
                                Icons.calendar_today,
                                color: ColorResource.darkPink,
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorResource.darkPink),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(
                                    color: ColorResource.darkPink),
                              ),
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 2.0, horizontal: 8),
                            ),
                            readOnly: true,
                            onTap: () {
                              _selectDate(context);
                            },
                            validator: _validateDate,
                            style: const TextStyle(fontSize: 14),
                          ),
                          if (_selectedDateError != null)
                            Text(
                              _selectedDateError!,
                              style: const TextStyle(
                                  color: ColorResource.errorColor),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.center,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        ColorResource.darkBlue),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      'Submit',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
              ),
              Container(
                width: width,
                height: 100,
                child: Text(
                  "To show accurate results, you must provide the correct listing date (ICO or IDO or Presales), which is the first time the coin was listed. Please refer to websites such as Coingecko, Coinmarketcap, CoinDesk, or Cointelegraph to find the coin's / Crypto's first listing date on an exchange.",
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                      fontSize: 12,
                      letterSpacing: 1,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> _selectDate(BuildContext context) async {
    DateTime? _picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      builder: (BuildContext context, Widget? child) {
        return Theme(
          data: ThemeData(
            colorScheme: const ColorScheme.light().copyWith(
              primary: ColorResource.darkPink,
            ),
          ),
          child: child!,
        );
      },
    );
    if (_picked != null) {
      setState(() {
        _dateController.text = DateFormat('dd/MM/yyyy').format(_picked);
        _selectedDateError = null;
      });
    }
  }

  String? _validateDate(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please select a date';
    }
    return null;
  }
}
