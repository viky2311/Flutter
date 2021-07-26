// part of '../pages/pages.dart';

// enum alertDialogAction { cancel, save }

// // class Dialogs {
// //   static Future<alertDialogAction> alertDialog(
// //     BuildContext context,
// //     String title,
// //     // String body,
// //     String content,
// //     String cancel,
// //     String save,
// //   ) {
// //     Future<alertDialogAction> action = showDialog(
// //         context: context,
// //         barrierDismissible: true,
// //         builder: (BuildContext context) {
// //           return AlertDialog(
// //             shape: RoundedRectangleBorder(
// //               borderRadius: BorderRadius.circular(10),
// //             ),
// //             title: Padding(
// //               padding: EdgeInsets.symmetric(
// //                   vertical: SizeConfig.blockSizeHorizontal * 2),
// //               child: Center(child: Text('Apakah Anda yakin ?')),
// //             ),
// //             // content: Text(body),
// //             content: Row(
// //               mainAxisAlignment: MainAxisAlignment.start,
// //               mainAxisSize: MainAxisSize.max,
// //               children: [
// //                 Padding(
// //                   padding: EdgeInsets.symmetric(
// //                       horizontal: SizeConfig.blockSizeHorizontal * 2),
// //                   child: ElevatedButton(
// //                     onPressed: () =>
// //                         Navigator.pop(context, alertDialogAction.cancel),
// //                     child: Text(
// //                       "Urungkan",
// //                       style: blackFontStyle,
// //                     ),
// //                     style: ButtonStyle(
// //                       backgroundColor:
// //                           MaterialStateProperty.all<Color>(Colors.white),
// //                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
// //                         RoundedRectangleBorder(
// //                           borderRadius: BorderRadius.circular(18.0),
// //                           side: BorderSide(
// //                             color: Colors.blue.withOpacity(0.5),
// //                           ),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //                 Padding(
// //                   padding: EdgeInsets.symmetric(
// //                       horizontal: SizeConfig.blockSizeHorizontal * 2),
// //                   child: ElevatedButton(
// //                     onPressed: () =>
// //                         Navigator.of(context).pop(alertDialogAction.save),
// //                     child: Text(
// //                       "Ya, Lanjutkan",
// //                       style: whiteFontStyle1,
// //                     ),
// //                     style: ButtonStyle(
// //                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(
// //                         RoundedRectangleBorder(
// //                           borderRadius: BorderRadius.circular(18.0),
// //                         ),
// //                       ),
// //                     ),
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           );
// //         });
// //     return (action != null) ? action : alertDialogAction.cancel;
// //   }
// // }

// class ButtonQuestion extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Padding(
//         padding: EdgeInsets.symmetric(
//             horizontal: SizeConfig.blockSizeHorizontal * 2.0),
//         child: ElevatedButton(
//           onPressed: () async {
//             final content = await Dialogs.alertDialog(
//                 context, "Title", '', "Cancel", "Save");
//             //cancel and save are the button text for cancel and save operation
//             if (content == alertDialogAction.save) {
//               //do something
//               showDialog(
//                 context: context,
//                 builder: (BuildContext context) {
//                   Future.delayed(Duration(seconds: 5), () {
//                     Navigator.of(context).pushReplacement(
//                       MaterialPageRoute(builder: (_) {
//                         return PlayList();
//                       }),
//                     );
//                   });
//                   return AlertDialog(
//                     content: Padding(
//                       padding: EdgeInsets.only(
//                           bottom: SizeConfig.blockSizeVertical * 4),
//                       child: SizedBox(
//                         width: SizeConfig.blockSizeHorizontal * 20,
//                         height: SizeConfig.blockSizeVertical * 20,
//                         child: Center(
//                           child: Image(
//                             image: AssetImage("assets/success.png"),
//                           ),
//                         ),
//                       ),
//                     ),
//                   );
//                 },
//               );
//             }
//           },
//           child: Padding(
//             padding: EdgeInsets.symmetric(
//                 vertical: SizeConfig.blockSizeVertical * 1.5),
//             child: Center(
//               child: Text('Selanjutnya', style: whiteFontStyle18),
//             ),
//           ),
//           style: ButtonStyle(
//             shape: MaterialStateProperty.all<RoundedRectangleBorder>(
//               RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(18.0),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
