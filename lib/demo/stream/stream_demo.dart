import 'dart:async';

import 'package:flutter/material.dart';

class StreamDemo extends StatelessWidget {
  const StreamDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("StreamDemo"),
        elevation: 0,
      ),
      body: StreamDemoHome(),
    );
  }
}

class StreamDemoHome extends StatefulWidget {
  StreamDemoHome({Key key}) : super(key: key);

  _StreamDemoHomeState createState() => _StreamDemoHomeState();
}

class _StreamDemoHomeState extends State<StreamDemoHome> {
  StreamSubscription _streamSubscription;
  StreamController<String> _streamDemo;
  StreamSink _streamSink;
  String _data = "...";

  @override
  void dispose() {
    _streamDemo.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    print("Create a stream.");
    _streamDemo = StreamController.broadcast();
    _streamSink = _streamDemo.sink;
    print("Start linstening on a stream.");
    _streamSubscription =
        _streamDemo.stream.listen(onData, onError: onError, onDone: onDone);
    _streamDemo.stream.listen(onDataTwo, onError: onError, onDone: onDone);
    print("Initialize completed.");
  }

  void onData(String data) {
    print(data);
    setState(() {
      _data = data;
    });
  }

  void onDataTwo(String data) {
    print("onDataTwo: $data");
  }

  void onError(error) {
    print("Error: $error");
  }

  void onDone() {
    print("Done.");
  }

  Future<String> fetchData() async {
    await Future.delayed(Duration(seconds: 5));
    // throw "Something happened";
    return "Hello ~";
  }

  void _pauseStream() {
    print("Pause subscriptin");
    _streamSubscription.pause();
  }

  void _resumeStream() {
    print("Resume subscriptin");
    _streamSubscription.resume();
  }

  void _cancelStream() {
    print("Cancel subscriptin");
    _streamSubscription.cancel();
  }

  void _addDataToStream() async {
    print("Add data to stream.");

    String data = await fetchData();
    // _streamDemo.add(data);
    _streamSink.add(data);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Text(_data),
            StreamBuilder(
              stream: _streamDemo.stream,
              initialData: "...",
              builder: (context, snapshot) {
                return Text("${snapshot.data}");
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text("Add"),
                  onPressed: _addDataToStream,
                ),
                FlatButton(
                  child: Text("Pause"),
                  onPressed: _pauseStream,
                ),
                FlatButton(
                  child: Text("Resume"),
                  onPressed: _resumeStream,
                ),
                FlatButton(
                  child: Text("Cancel"),
                  onPressed: _cancelStream,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
