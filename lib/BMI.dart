import 'package:flutter/material.dart';
class Baitap extends StatelessWidget {
  const Baitap({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'BMI',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const MyHomePage(title: 'Chương trình tính BMI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _currentSliderValue = 20;
  int weight = 0;
  int age = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text(widget.title),
      ),
      body: Center(

        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network("data:image/jpeg;base64,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",height: 100,),
                      Text("MALE")
                    ],
                  ),
                ),
                Expanded(
                  flex: 5, // takes 30% of available width
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Image.network("data:image/png;base64,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",height: 100,),
                      Text("FEMALE")
                    ],
                  ),
                ),
              ],),
            SizedBox (
              height: 50,
            ),
            Column(
              children: [
                Text("Chiều cao"),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('$_currentSliderValue',style: TextStyle(
                        fontSize: 50
                    ),),
                    Text("cm")
                  ],
                ),
                Slider(
                  value: _currentSliderValue,
                  min: 0,
                  max: 200,
                  divisions: 20,
                  onChanged: (double value) {
                    setState(() {
                      _currentSliderValue = value;
                    });
                  },
                ),

              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 5, // takes 30% of available width
                  child: Column(
                    children: [
                      Text("Cân nặng"),
                      Text('$weight',style: TextStyle(
                          fontSize: 50
                      ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed: (
                              ){
                            setState(() {
                              weight++ ;
                            });
                          }, child: Text("+",style: TextStyle(
                              fontSize: 60
                          ),)),
                          TextButton(onPressed: (){
                            setState(() {
                              if(weight >=1)
                              {
                                weight-- ;
                              }

                            });
                          }, child: Text("-",style: TextStyle(
                              fontSize: 70
                          ),))
                        ],
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 5, // takes 30% of available width
                  child:  Column(

                    children: [
                      Text("Tuổi"),
                      Text('$age',
                        style: TextStyle(
                            fontSize: 50
                        ),),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton(onPressed: (
                              ){
                            setState(() {
                              age++ ;
                            });
                          }, child: Text("+",style: TextStyle(
                              fontSize: 60
                          ),)),
                          TextButton(onPressed: (){
                            setState(() {
                              if(age>=1)
                              {
                                age-- ;
                              }

                            });
                          }, child: Text("-",style: TextStyle(
                              fontSize: 70
                          ),))
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
            TextButton(onPressed: (){}, child: Text("Tính Toán"))
          ],
        ),
      ),
    );
  }
}