import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Pop Up Screen'),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: const EdgeInsets.only(
                            left: 30, right: 30, bottom: 300),
                        child: AlertDialog(
                          content: const SizedBox(
                              height: 130,
                              width: double.infinity,
                              child: Center(
                                child: Text(
                                  'It\'s a sample Alert dialog box',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w400,
                                      color:
                                          Color.fromARGB(255, 156, 154, 154)),
                                ),
                              )),
                          actionsPadding:
                              const EdgeInsets.only(left: 30, right: 30),
                          backgroundColor:
                              const Color.fromARGB(255, 22, 46, 53),
                          contentPadding: const EdgeInsets.all(0),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text('ok'))
                          ],
                        ),
                      );
                    });
              },
              child: const Text('Pop Up')),
        ));
  }
}
