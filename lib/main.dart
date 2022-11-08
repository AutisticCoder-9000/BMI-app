import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  double height = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("My First App"),
        ),
        body: Column(
            children: [
              const Text("Hey there,Welcome to my shopping App",
                  style: TextStyle(fontSize: 100, fontWeight: FontWeight.bold)),
              SizedBox(
                  height: 200,
                  width: 500,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            style: ButtonStyle(
                                padding: MaterialStateProperty.all<EdgeInsets>(
                                    const EdgeInsets.all(15)),
                                foregroundColor: MaterialStateProperty.all<
                                    Color>(Colors.black),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                            25.0),
                                        side: const BorderSide(color: Colors.red)
                                    )
                                )
                            ),
                            onPressed: () => ArgumentError.notNull(),
                            child: Text(
                                ("Add to your cart".toUpperCase()),
                                style: const TextStyle(fontSize: 20)
                            )
                        ),
                        const SizedBox(width: 20),
                        ElevatedButton(
                            style: ButtonStyle(
                                foregroundColor: MaterialStateProperty.all<
                                    Color>(Colors.red),
                                backgroundColor: MaterialStateProperty.all<
                                    Color>(Colors.black),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                    const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero,
                                        side: BorderSide(color: Colors.red)
                                    )
                                )
                            ),
                            onPressed: () => ArgumentError.notNull(),
                            child: Text(
                                "Buy now".toUpperCase(),
                                style: const TextStyle(fontSize: 20)
                            )
                        )
                      ]
                  )
              )
            ]
        )
    );
  } }
