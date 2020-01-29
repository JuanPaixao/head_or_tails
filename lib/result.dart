import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  bool result;
  Result({this.result}); // parametro opcional

  @override
  _ResultState createState() => _ResultState();
}

class _ResultState extends State<Result> {
  var _imageApp = AssetImage("images/moeda_cara.png");

  void _chooseImage() {
    if (widget.result) {
      print(widget.result);
      setState(() {
        _imageApp = AssetImage("images/moeda_cara.png");
      });
    } else {
      print(widget.result);
      setState(() {
        _imageApp = AssetImage("images/moeda_coroa.png");
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    _chooseImage();
    return Scaffold(
      backgroundColor: Color(0xff61bd86),
      body: Container(
        padding: EdgeInsets.only(top: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image(
              image: _imageApp,
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Image.asset("images/botao_voltar.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
