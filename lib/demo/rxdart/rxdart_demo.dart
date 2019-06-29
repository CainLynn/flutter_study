import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

class RxDartDemo extends StatelessWidget {
  const RxDartDemo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RxDartDemo"),
        elevation: 0,
      ),
      body: RxDartDemoHome(),
    );
  }
}

class RxDartDemoHome extends StatefulWidget {
  RxDartDemoHome({Key key}) : super(key: key);

  _RxDartDemoHomeState createState() => _RxDartDemoHomeState();
}

class _RxDartDemoHomeState extends State<RxDartDemoHome> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    // Observable<String> _observable =
    //     // Observable(Stream.fromIterable(["hello", "你好"]));
    //     // Observable(Stream.fromFuture(Future.value("Hello~")));
    //     // Observable.fromIterable(["Hello~", "你好"]);
    //     // Observable.just("hello");
    //     Observable.periodic(Duration(seconds: 3), (x) => x.toString());

    // _observable.listen(print);

    // PublishSubject<String> _subject = PublishSubject<String>();
    ReplaySubject<String> _subject = ReplaySubject<String>(maxSize: 2);
    _subject.add("test");
    _subject.add("test2");
    _subject.add("test4");
    _subject.listen((data) => print("listen 1: $data"));
    _subject.add("hello");
    _subject.listen((data) => print("listen 2: ${data.toUpperCase()}"));
    _subject.add("hola");
    _subject.add("test3");

    _subject.close();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
