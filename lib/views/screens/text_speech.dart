import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_tts/flutter_tts.dart';

class TextToSpeechApp extends StatefulWidget {
  const TextToSpeechApp({super.key});

  @override
  State<TextToSpeechApp> createState() => TextToSpeechAppState();
}

class TextToSpeechAppState extends State<TextToSpeechApp> {

  /// cut from here .....................
  TextEditingController controller = TextEditingController();

  FlutterTts flutterTts = FlutterTts();

  double volume = 1.0;
  double pitch = 1.0;
  double speachRate = 0.5;
  List<String>? languages;
  // String langCode = "en-Us";
  String langCode = "hi_IN";
  @override
  void initState() {
    // init();
    super.initState();
    init();
  }

  void init() async {
    languages = List<String>.from(await flutterTts.getLanguages);
    setState(() {});
  }

  void initSetting() async {
    await flutterTts.setVolume(volume);
    await flutterTts.setPitch(pitch);
    await flutterTts.setSpeechRate(speachRate);
    await flutterTts.setLanguage(langCode);
  }

  // speak() async {
  //   await flutterTts.speak(value.text);
  // }

  void _speak() async {
    initSetting();
    await flutterTts.speak(controller.text);
  }

  void _stop() async {
    initSetting();
    await flutterTts.speak(controller.text);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Center(
              child: ListView(
                children: [
                  Container(
                    height: 160,
                    margin: EdgeInsets.only(left: 15, right: 15),
                    child: TextField(
                        controller: controller,
                        maxLines: 15,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter Text',
                        )),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(mainAxisSize: MainAxisSize.min, children: [
                    ElevatedButton(
                      onPressed: _speak,
                      child: const Text('Speak'),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    ElevatedButton(
                      onPressed: _stop,
                      child: const Text('Stop'),
                    ),

                    /// cut
                  ]),
                  Container(
                      margin: EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          SizedBox(
                              width: 80,
                              child: Text(
                                'Volume',
                                style: TextStyle(fontSize: 17),
                              )),
                          Slider(
                              min: 0.0,
                              max: 1.0,
                              value: volume,
                              onChanged: (value) {
                                setState(() {
                                  volume = value;
                                });
                              }),
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                double.parse((volume).toStringAsFixed(2))
                                    .toString(),
                                style: const TextStyle(
                                  fontSize: 17,
                                ),
                              ))
                        ],
                      )),
                  Container(
                    margin: const EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 80,
                          child: Text(
                            'Pitch',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                        Slider(
                            min: 0.5,
                            max: 2.0,
                            value: pitch,
                            onChanged: (value) {
                              setState(() {
                                pitch = value;
                              });
                            }),
                        Container(
                            margin: const EdgeInsets.only(left: 10),
                            child: Text(
                              double.parse((pitch).toStringAsFixed(2))
                                  .toString(),
                              style: const TextStyle(fontSize: 17),
                            )),

                        // cut 2
                      ],
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Row(
                        children: [
                          SizedBox(
                              width: 80,
                              child: Text('Speech Rate',
                                  style: TextStyle(
                                    fontSize: 17,
                                  ))),
                          Slider(
                              min: 0.0,
                              max: 1.0,
                              value: speachRate,
                              onChanged: (value) {
                                setState(() {
                                  speachRate = value;
                                });
                              }),
                          Container(
                              margin: EdgeInsets.only(left: 10),
                              child: Text(
                                double.parse((speachRate).toStringAsFixed(2))
                                    .toString(),
                                style: TextStyle(fontSize: 17),
                              )),
                        ],
                      )),
                  // if (languages != null)
                  //   Container(
                  //     margin: EdgeInsets.only(left: 10),
                  //     child: Row(
                  //       children: [
                  //         Text(
                  //           'Language :',
                  //           style: TextStyle(
                  //             fontSize: 17,
                  //           ),
                  //         ),
                  //         SizedBox(
                  //           width: 10,
                  //         ),
                  //         DropdownButton<String>(
                  //             focusColor: Colors.white,
                  //             value: langCode,
                  //             style: TextStyle(color: Colors.white),
                  //             iconEnabledColor: Colors.black,
                  //             items: languages?.map<DropdownMenuItem<String>>(
                  //                   (String? value) {
                  //                     return DropdownMenuItem<String>(
                  //                       value: value ?? '',
                  //                       child: Text(
                  //                         value ?? '',
                  //                         style: const TextStyle(
                  //                             color: Colors.black),
                  //                       ),
                  //                     );
                  //                   },
                  //                 ).toList() ??
                  //                 [],
                  //             onChanged: (String? value) {
                  //               setState(() {
                  //                 langCode = value ?? '';
                  //               });
                  //             })
                  //       ],
                  //     ),
                  //   )
                  // till here .................................................
                ],
              ),
            )
            // floatingActionButton: FloatingActionButton(
            //   onPressed: () {
            //     flutterTts.stop();
            //   },
            //   child: Icon(Icons.stop_circle),
            // ),
            // body: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Padding(
            //       padding: const EdgeInsets.all(28.0),
            //       child: Center(
            //         child: TextField(
            //             controller: controller,
            //             decoration: InputDecoration(hintText: 'Enter text')),
            //       ),
            //     ),
            //     SizedBox(
            //       height: 40,
            //     ),
            //     ElevatedButton(
            //         onPressed: () {
            //           _speak();
            //         },
            //         child: Icon(
            //           Icons.volume_up_outlined,
            //           size: 30,
            //         ))
            //   ],
            // ));
            ));
  }
}
