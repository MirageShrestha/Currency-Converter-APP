import 'package:flutter/material.dart';

class CurrencyConverterMaterialPage extends StatefulWidget{
  const CurrencyConverterMaterialPage({super.key});

  @override
  State<CurrencyConverterMaterialPage> createState() =>_CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState 
extends State<CurrencyConverterMaterialPage>{
  double result=0;
  final TextEditingController textEditingController = TextEditingController();
  void convert(){
    result = double.parse(textEditingController.text) * 136;
    setState(() {});
  }

  @override
  Widget build(BuildContext context){
    final border =OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.grey,
        width: 3.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(15),
      );

    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          elevation: 0,
          title: const Text('Currency Converter', style: TextStyle(color: Colors.white, fontSize: 27, fontWeight: FontWeight.w700),),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'NPR ${result !=0 ? result.toStringAsFixed(2): result.toStringAsFixed(0)}',
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w500,
                color: Color.fromARGB(255, 255, 255, 255)
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextField(
                  controller: textEditingController,
                  style: const TextStyle(
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    hintText: 'Please enter the amount in USD',
                    hintStyle: const TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: const Icon(Icons.monetization_on_outlined),
                    prefixIconColor: Colors.black,
                    filled:true,
                    fillColor: Colors.white,
                    focusedBorder: border,
                    enabledBorder: border,
                    ),
                    keyboardType: const TextInputType.numberWithOptions(
                      decimal: true,
                    ),
                    ),
              ),
              Padding(
                padding: const EdgeInsets.all(9),
                child: ElevatedButton(onPressed: convert,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  )
              ),
                child: const Text('Convert')),
              ),
            ],
         ), 
        ), 
      );
  }
}

