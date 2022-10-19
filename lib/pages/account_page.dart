import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hello_flutter/widgets/custom_pimary_button.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({
    super.key,
    required this.count,
  });

  final int count;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            '$count',
            style: const TextStyle(fontSize: 70, color: Colors.blue),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: CustomPrimaryButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return CupertinoAlertDialog(
                      title: const Text('Konfirmasi Dialog'),
                      content: const Text(
                          'Apakah yakin akan meninggalkan halaman ini?'),
                      actions: [
                        CupertinoDialogAction(
                          onPressed: () => Navigator.pop(context),
                          child: const Text(
                            'Tidak',
                            style: TextStyle(
                              color: Colors.pink,
                            ),
                          ),
                        ),
                        CupertinoDialogAction(
                          onPressed: () {
                            Navigator.pop(context);
                            Navigator.pop(context);
                          },
                          child: const Text('Ya'),
                        ),
                      ],
                    );
                    // return AlertDialog(
                    //   title: const Text('Konfirmasi Dialog'),
                    //   content: const Text(
                    //       'Apakah yakin akan meninggalkan halaman ini?'),
                    //   actions: [
                    //     TextButton(
                    //       onPressed: () => Navigator.pop(context),
                    //       child: const Text(
                    //         'Tidak',
                    //         style: TextStyle(
                    //           color: Colors.pink,
                    //         ),
                    //       ),
                    //     ),
                    //     TextButton(
                    //       onPressed: () {
                    //         Navigator.pop(context);
                    //         Navigator.pop(context);
                    //       },
                    //       child: const Text('Ya'),
                    //     ),
                    //   ],
                    // );
                  },
                );
              },
              text: 'Kembali',
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: CustomPrimaryButton(
              onPressed: () {
                Fluttertoast.showToast(
                  msg: 'Ini adalah pesan toast',
                  backgroundColor: Colors.green.withOpacity(0.7),
                  gravity: ToastGravity.BOTTOM,
                );
              },
              text: 'Menampilkan toast',
            ),
          ),
        ],
      ),
    );
  }
}
