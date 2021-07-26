part of '../pages/pages.dart';

class JenisKelamin {
  JenisKelamin(this.jeniskelamin);
  String jeniskelamin;
}

class Keadaan {
  Keadaan(this.keadaan);
  String keadaan;
}

enum alertDialogAction { cancel, save }

class Dialogs {
  static Future<alertDialogAction> alertDialog(
    BuildContext context,
    String title,
    // String body,
    String content,
    String cancel,
    String save,
  ) {
    Future<alertDialogAction> action = showDialog(
        context: context,
        barrierDismissible: true,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            title: Padding(
              padding: EdgeInsets.symmetric(
                  vertical: SizeConfig.blockSizeHorizontal * 2),
              child: Center(child: Text('Apakah Anda yakin ?')),
            ),
            // content: Text(body),
            content: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.blockSizeHorizontal * 2),
                  child: ElevatedButton(
                    onPressed: () =>
                        Navigator.pop(context, alertDialogAction.cancel),
                    child: Text(
                      "Urungkan",
                      style: blackFontStyle,
                    ),
                    style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          side: BorderSide(
                            color: Colors.blue.withOpacity(0.5),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: SizeConfig.blockSizeHorizontal * 2),
                  child: ElevatedButton(
                    onPressed: () =>
                        Navigator.of(context).pop(alertDialogAction.save),
                    child: Text(
                      "Ya, Lanjutkan",
                      style: whiteFontStyle1,
                    ),
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
    return (action != null) ? action : alertDialogAction.cancel;
  }
}

class InputField extends StatefulWidget {
  // InputField({Key? key}) : super(key: key);

  @override
  _InputFieldState createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  //
  JenisKelamin jeniskelamin;
  Keadaan keadaan;

  //
  insert() async {
    var res = await http.post(
        Uri.parse('https://wsjti.id/behealthy/public/api/register-android'),
        body: {
          "name": namaController.text,
          "date": _dateController.text,
          "gender": 'laki-laki'
        });
    return res;
  }

  List<JenisKelamin> jenisKelamin = <JenisKelamin>[
    JenisKelamin('Pria'),
    JenisKelamin('Wanita')
  ];
  List<Keadaan> keadaane = <Keadaan>[
    Keadaan('Sehat'),
    Keadaan('Baik'),
  ];

  SizeConfig sizeConfig = SizeConfig();

  TextEditingController namaController = TextEditingController();
  TextEditingController _dateController = TextEditingController();
  TextEditingController keadaanController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    sizeConfig.init(context);
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: SizeConfig.blockSizeHorizontal * 2),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: SizeConfig.blockSizeVertical * 4),
            TextFormField(
              controller: namaController,
              decoration: InputDecoration(
                isDense: true,
                labelText: "Nama Lengkap",
                labelStyle: blueFontStyle,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                fillColor: questColor.withOpacity(0.05),
                filled: true,
              ),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 3,
            ),
            TextFormField(
              readOnly: true,
              controller: _dateController,
              decoration: InputDecoration(
                isDense: true,
                labelText: "Tanggal Lahir",
                labelStyle: blueFontStyle,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                fillColor: questColor.withOpacity(0.05),
                filled: true,
              ),
              onTap: () async {
                await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1990),
                  lastDate: DateTime(2025),
                ).then((selectedDate) {
                  if (selectedDate != null) {
                    _dateController.text =
                        DateFormat('yyyy-MM-dd').format(selectedDate);
                  }
                });
              },
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter date.';
                }
                return null;
              },
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 3,
            ),
            DropdownButtonFormField<JenisKelamin>(
              value: jeniskelamin,
              onChanged: (JenisKelamin newValue) {
                setState(() {
                  jeniskelamin = newValue;
                });
              },
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.symmetric(
                    vertical: SizeConfig.blockSizeVertical * 1.7,
                    horizontal: SizeConfig.blockSizeHorizontal * 3),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                fillColor: questColor.withOpacity(0.05),
                filled: true,
                labelText: "Jenis Kelamin",
                labelStyle: blueFontStyle,
              ),
              items: jenisKelamin.map((JenisKelamin jeniskelamin) {
                return new DropdownMenuItem<JenisKelamin>(
                  value: jeniskelamin,
                  child: new Text(
                    jeniskelamin.jeniskelamin,
                    style: new TextStyle(
                      color: Colors.black,
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 3,
            ),
            DropdownButtonFormField<Keadaan>(
              value: keadaan,
              onChanged: (Keadaan newValue) {
                setState(() {
                  keadaan = newValue;
                });
              },
              decoration: InputDecoration(
                isDense: true,
                contentPadding: EdgeInsets.symmetric(
                    vertical: SizeConfig.blockSizeVertical * 1.7,
                    horizontal: SizeConfig.blockSizeHorizontal * 3),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                fillColor: questColor.withOpacity(0.05),
                filled: true,
                labelText: "Bagaimana Keadaan Anda?",
                labelStyle: blueFontStyle,
              ),
              items: keadaane.map((Keadaan keadaan) {
                return new DropdownMenuItem<Keadaan>(
                  value: keadaan,
                  child: new Text(
                    keadaan.keadaan,
                    style: new TextStyle(
                      color: Colors.black,
                    ),
                  ),
                );
              }).toList(),
            ),
            SizedBox(
              height: SizeConfig.blockSizeVertical * 8,
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.blockSizeHorizontal * 2.0),
                child: ElevatedButton(
                  onPressed: () async {
                    final content = await Dialogs.alertDialog(
                        context, "Title", '', "Cancel", "Save");
                    //cancel and save are the button text for cancel and save operation
                    if (content == alertDialogAction.save) {
                      insert();
                      print('sukses');
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          Future.delayed(Duration(seconds: 1), () {
                            Navigator.of(context).pushReplacement(
                              MaterialPageRoute(builder: (_) {
                                return PlayList();
                              }),
                            );
                          });
                          return AlertDialog(
                            content: Padding(
                              padding: EdgeInsets.only(
                                  bottom: SizeConfig.blockSizeVertical * 4),
                              child: SizedBox(
                                width: SizeConfig.blockSizeHorizontal * 20,
                                height: SizeConfig.blockSizeVertical * 20,
                                child: Center(
                                  child: Image(
                                    image: AssetImage("assets/success.png"),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    }
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: SizeConfig.blockSizeVertical * 1.5),
                    child: Center(
                      child: Text('Selanjutnya', style: whiteFontStyle18),
                    ),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18.0),
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
