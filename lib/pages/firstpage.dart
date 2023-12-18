import 'package:flutter/material.dart';

class FirstPages extends StatefulWidget {
  const FirstPages({super.key});

  @override
  State<FirstPages> createState() => _FirstPagesState();
}

class _FirstPagesState extends State<FirstPages> {
  String foodRadio ="";
  bool foodcheck = false;
  bool foodcheck2 = true;
   bool foodcheck3 = false;
  get onChanged => null;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Angkhana")),
    body: Column(
      children: [
        createRadioMenu("คั่วแลน", "คั่วแลน ", "150 บาท"),
        createRadioMenu("ต้มยำ", "ต้มยำ ", "100 บาท"),
        createRadioMenu("ข้าวผัดจริงใจ", "ข้าวผัดจริงใจ ","80 บาท"),
        createRadioMenu("ข้าวไข่เจียว", "ข้าวไข่เจียว ", "30 บาท"),
        createRadioMenu("ข้าวผัดกะเพรา", "ข้าวผัดกะเพรา ", "80 บาท"),
        createRadioMenu("ผัดเผ็ดทะเล", "ผัดเผ็ดทะเล ", "100 บาท"),
        
        CheckboxListTile(
          controlAffinity:ListTileControlAffinity.leading,
          title: Text("เพิ่มไขดาว+ 5 บาท"),
          value: foodcheck, onChanged: (value) {
          setState(() {
            foodcheck = value!;
          });
        }),

        CheckboxListTile(
          controlAffinity:ListTileControlAffinity.leading,
          title: Text("เพิ่มไส้กรอก + 15 บาท"),
          
          value: foodcheck2, onChanged: (value) {
          setState(() {
            foodcheck2 = value!;
          });
        }),

        CheckboxListTile(
          controlAffinity:ListTileControlAffinity.leading,
          title: Text("เพิ่มไข่เจียว+ 10 บาท"),
          value: foodcheck3, onChanged: (value) {
          setState(() {
            foodcheck3 = value!;
          });
        }),




      ],
        
    ),
      
    );
  }

  RadioListTile<String> createRadioMenu(
    String val, String title, String subtitle)  {
    return RadioListTile(
      
      activeColor:const Color.fromARGB(255, 253, 89, 0),
      fillColor: const MaterialStatePropertyAll(Colors.green),
      value: val ,
      groupValue: foodRadio, 
      secondary: const Icon(Icons.add_shopping_cart_sharp),
      onChanged:(value) {
        setState(() {
         foodRadio = value!; 
        });
        print(foodRadio);
      },
      title: Text(title),
      subtitle: Text(subtitle),
      
      );
  }
}
