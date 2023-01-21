import 'package:flutter/material.dart';
import 'package:multi_charts/multi_charts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Multi Charts",style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal),),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                width: 300,
                height: 300,
                //Radar Chart
                child: RadarChart(
                  values: const [1, 2, 4, 7, 9, 0, 6],
                  labels: const [
                    "Label1",
                    "Label2",
                    "Label3",
                    "Label4",
                    "Label5",
                    "Label6",
                    "Label7",
                  ],
                  maxValue: 10,
                  fillColor: Colors.blue,
                  chartRadiusFactor: 0.7,
                  animationDuration: const Duration(seconds: 8),
                ),
              ),
              const SizedBox(height: 30,),
              //Pie Chart
              const PieChart(
                values: [15, 10, 30, 25, 20],
                labels: ["Label1", "Label2", "Label3", "Label4", "Label5"],
                sliceFillColors: [
                  Colors.blueAccent,
                  Colors.greenAccent,
                  Colors.pink,
                  Colors.orange,
                  Colors.red,
                ],
                animationDuration: Duration(seconds: 8),
                legendPosition: LegendPosition.Right,
              ),
            ]
          ),
        ),
      ),
    );
  }
}