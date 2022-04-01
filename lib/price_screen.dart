import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'coin_data.dart';

class PriceScreen extends StatefulWidget {
  @override
  _PriceScreenState createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {
  String currency = "USD";
  @override
  void initState() {
    super.initState();
    getData();
  }

  DropdownButton androidWidget() {
    List<DropdownMenuItem<String>> items = [];
    for (String item in currenciesList) {
      final aaa = DropdownMenuItem(
        child: Text(item),
        value: item,
      );
      items.add(aaa);
    }
    return DropdownButton<String>(
      value: currency,
      items: items,
      onChanged: (value) {
        setState(() {
          currency = value!;
        });
      },
    );
  }

  CupertinoPicker iOSWidget() {
    List<Text> items = [];
    for (String item in currenciesList) {
      final aaa = Text(item);
      items.add(aaa);
    }

    return CupertinoPicker(
      itemExtent: 32.0,
      backgroundColor: Colors.lightBlue,
      onSelectedItemChanged: (value) {},
      children: items,
    );
  }

  String bitcoinValue = '?';

  void getData() async {
    try {
      double data = await CoinData().getCoinData();
      setState(() {
        bitcoinValue = data.toStringAsFixed(0);
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('🤑 Coin Ticker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(18.0, 18.0, 18.0, 0),
            child: Card(
              color: Colors.lightBlueAccent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
                child: Text(
                  '1 BTC = $bitcoinValue USD',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 150.0,
            alignment: Alignment.center,
            padding: EdgeInsets.only(bottom: 30.0),
            color: Colors.lightBlue,
            child: Platform.isAndroid ? androidWidget() : iOSWidget(),
          ),
        ],
      ),
    );
  }
}
