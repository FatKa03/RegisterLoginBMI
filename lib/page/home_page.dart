import 'package:flutter/material.dart';
import 'package:tugas_pbm_pertemuan_6/constants.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> 
{
  double _calculation = 0.0;
  String _calcuResult = '';
  String _result = '';

  TextEditingController _ageFieldController=new TextEditingController();
  TextEditingController _HeightFieldController=new TextEditingController();
  TextEditingController _weightFieldController=new TextEditingController();

  void _calculateBMI()
  {
    double height=double.parse(_HeightFieldController.text);
    double weight=double.parse(_weightFieldController.text);

    if(height!=null && weight!=null)
      {
        setState(() {
          height=height*12;
          _calculation=(weight/(height*height))*703;
          _calcuResult=_calculation.toStringAsFixed(2);
          if (_calculation <18.5) {
            _result='KURUS, ayo tingkatkan nutrisimu';
          }else if(_calculation >=18.5 && _calculation <=24.9 ) {
            _result="IDEAL, yeay pertahankan!";
          }else if(_calculation >=25.0 && _calculation <=29.9 ) {
            _result="KELEBIHAN BERAT BADAN, jangan lupa kurangi konsumsi makananmu";
          }else{
            _result="OBESITAS, wah sepertinya kamu harus berusaha lebih keras untuk mengurangi berat badanmu:(";
          }
        });
      }
  }

  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(backgroundColor: ColorPalette.primaryColor, title: new Text('BMI KALKULATOR'),),
      body: new ListView(
        padding: const EdgeInsets.all(3.5),
        children: <Widget>[
          new Image.asset("/images/applogo.jpg", height: 120.0, width: 150.0,),
          new Container(color: Colors.white70, padding: const EdgeInsets.all(5.0),
          child: new Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new TextField(
                controller: _ageFieldController,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  labelText: 'Masukkan Umur',
                  icon: new Icon(Icons.calendar_today)
                ),
              ),
              new TextField(
                controller: _HeightFieldController,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  labelText: 'Tinggi Badan(dalam kaki)',
                  icon: new Icon(Icons.info),
                ),
              ),
              new TextField(
                controller: _weightFieldController,
                keyboardType: TextInputType.number,
                decoration: new InputDecoration(
                  labelText: 'Berat Badan(dalam ponds)',
                  icon: new Icon(Icons.shutter_speed),
                ),
              ),
              new Padding(padding: const EdgeInsets.all(7.5)),
              new ElevatedButton(onPressed: _calculateBMI, 
              child: new Text('CALCULATE',
              style: new TextStyle(
                fontWeight: FontWeight.bold
              ),
              ),



              )
            ],
          ),
          ),
          new Padding(padding: const EdgeInsets.all(5.5)),
          new Container(
            alignment: Alignment.topCenter,
            child: new Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget> [
                new Text(_calcuResult!=null ? 'Hasilnya Anda': '',
                style: new TextStyle(
                  color: Colors.blueAccent,
                  fontSize: 44.5,
                  fontWeight: FontWeight.w800
                ),
                ),
                new Text(_result!=null ? _result : '',
                style: new TextStyle(
                  fontSize: 28.0,
                ),)
              ],
            ),
          )
        ],
      ),
    );
  }

}
