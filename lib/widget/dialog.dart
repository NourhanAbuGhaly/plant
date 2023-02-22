import 'package:flutter/material.dart';

import '../constants/constant.dart';

Future<void> showMainAlertDialog(context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          actions: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextButton(
                  child: const Text(
                    'Delete Plant',
                    style: kBlackTextSize18,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    showDeleteAlertDialog(context);
                  },
                ),
                const Divider(
                  thickness: 2,
                ),
                TextButton(
                  child: const Text(
                    'Rename Plant',
                    style: kBlackTextSize18,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                    showRenameAlertDialog(context);
                  },
                ),
              ],
            )
          ]);
    },
  );
}

Future<void> showDeleteAlertDialog(context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          actions: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Are you sure you want to delete this plant?',
                    style: kGreenBoldTextSize18,
                  ),
                ),
                const Divider(
                  thickness: 2,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child: const Center(
                        child: Text(
                          'Delete',
                          style: kGreenBoldTextSize18,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    // const SizedBox(
                    //   height: 50,
                    //   width: 30,
                    // ),
                    TextButton(
                      child: const Text(
                        'Cancel',
                        style: kGreenBoldTextSize18,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ],
            )
          ]);
    },
  );
}

Future<void> showRenameAlertDialog(context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
          actions: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Rename plant',
                    style: kGreenBoldTextSize18,
                  ),
                ),
                const TextField(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextButton(
                      child: const Center(
                        child: Text(
                          'Rename',
                          style: kGreenBoldTextSize18,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    // const SizedBox(
                    //   height: 50,
                    //   width: 30,
                    // ),
                    TextButton(
                      child: const Text(
                        'Cancel',
                        style: kGreenBoldTextSize18,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ],
            )
          ]);
    },
  );
}
