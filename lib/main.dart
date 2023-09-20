import 'package:flutter/material.dart';
import 'widgets_test_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //       const Text(
      //         'You have pushed the button this many times:',
      //       ),
      //       Text(
      //         '$_counter',
      //         style: Theme.of(context).textTheme.headlineMedium,
      //       ),
      //       // Include your AvatarWidget here
      //       // const AvatarWidget(
      //       //   image: 'assets/images/',
      //       //   width: 100.0,
      //       //   height: 100.0,
      //       //   radius: 50.0,
      //       // ),
      //       const CommentWidget(
      //         initialCommentText: 'This is a comment',
      //       ),
             
      //     ],
      //   ),
      // ),
      //     body: Padding(
      //   padding: const EdgeInsets.symmetric(horizontal: 10),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: <Widget>[
      //         const Text('Home Icon'),
      //         AppSvgIcons.home,
      //         const Text('Home Active'),
      //         AppSvgIcons.homeActive,
      //         const Text('Hambuger'),
      //         AppSvgIcons.hamburgerDark,
      //         const Text('Hambuger Primary'),
      //         AppSvgIcons.hamburgerPrimary,
      //         const Text('Hambuger Light'),
      //         Container(
      //           color: Colors.black,
      //           padding: const EdgeInsets.all(10),
      //           child: AppSvgIcons.hamburgerLight,
      //         ),
      //         const Text('Luch Sent'),
      //         AppSvgIcons.lunchSent,
      //         const Text('Withdrawal'),
      //         AppSvgIcons.withdrawal,
      //         const Text('Mini Action Button'),
      //       ],
      //     ),
      //   ),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const WidgetsTestScreen()),
          );
        },
        tooltip: 'Increment',
        child: const Icon(Icons.visibility),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
