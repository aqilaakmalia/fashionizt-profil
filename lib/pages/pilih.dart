import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:fashionizt/theme.dart';

import '../widget/horizontal_card.dart';

class MainPage extends StatefulWidget {
  Pilih createState() => Pilih();
}

class Pilih extends State<MainPage> {
  String? selectedValue;
  List<String> items = [
    'Item1',
    'Item2',
    'Item3',
    'Item4',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconTheme(
          data: new IconThemeData(color: blackColor),
          child: new Icon(Icons.arrow_back_ios_rounded),
        ),
        title: Text('Pilih Garment',
            style: TextStyle(
              color: blackColor,
              fontWeight: FontWeight.w600,
              fontSize: 15,
            )),
        backgroundColor: whiteColor,
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 5.0, left: 31),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text('Filter berdasarkan',
                        style: TextStyle(
                          color: blackColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                        )),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.only(right: 24),
                      child: TextButton(
                        style: TextButton.styleFrom(),
                        onPressed: () {},
                        child: Text('Hapus Filter',
                            style: TextStyle(
                              color: blackColor,
                              fontWeight: FontWeight.w200,
                              fontSize: 13,
                            )),
                      ),
                    ),
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        hint: Text('Kategori', style: menuFilterTextStyle),
                        items: items
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ))
                            .toList(),
                        value: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value as String;
                          });
                        },
                        buttonHeight: 40,
                        buttonWidth: 75,
                        itemHeight: 40,
                      ),
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        hint: Text('Rating', style: menuFilterTextStyle),
                        items: items
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                ))
                            .toList(),
                        value: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value as String;
                          });
                        },
                        buttonHeight: 40,
                        buttonWidth: 75,
                        itemHeight: 40,
                      ),
                    ),
                    DropdownButtonHideUnderline(
                      child: DropdownButton2(
                        hint: Text('Tarif', style: menuFilterTextStyle),
                        items: items
                            .map((item) => DropdownMenuItem<String>(
                                  value: item,
                                  child: Text(
                                    item,
                                    style: const TextStyle(
                                      fontSize: 14,
                                    ),
                                  ),
                                ))
                            .toList(),
                        value: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value as String;
                          });
                        },
                        buttonHeight: 40,
                        buttonWidth: 75,
                        itemHeight: 40,
                      ),
                    ),
                  ],
                ),
                Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      for (int i = 0; i < 10; i++)
                        (horizontalCard(
                          imageUrl: 'https://i.imgur.com/fcrb4wv.jpeg',
                          name: 'Konveksi Sejahtera',
                          bio: 'Designer Gaun, Kemeja',
                          rating: '4.9',
                          project: '100',
                        ))
                    ]),
              ],
            ),
          )
        ],
      )),
    );
  }
}
