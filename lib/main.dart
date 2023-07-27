import 'package:flutter/material.dart';
import 'package:webviewx/webviewx.dart';

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

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool _isShow = false;

  String htmlData = """
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js"></script>
<script>
MathJax = {
		  options: {
		    renderActions: {
		      find: [10, function (doc) {
		        for (const node of document.querySelectorAll('span.sdij_equation')) {
		          const math = new doc.options.MathItem(node.textContent, doc.inputJax[0], false);
		          const text = document.createTextNode('');
		          node.parentNode.replaceChild(text, node);
		          math.start = {node: text, delim: '', n: 0};
		          math.end = {node: text, delim: '', n: 0};
		          doc.math.push(math);
		        }
		      }, '']
		    }
		  }
		};
</script>
</head>
<body>
<p class="sdij_p" style="text-align:LEFT;vertical-align:BASELINE;"><span class="sdij_text">등비수열</span><span class="sdij_equation" data-equation="left%7B+a_%7Bn%7D+it+right%7D" data-latex="%5Cleft+%5C%7B+a_+%7B+n+%7D+%5Cright+%5C%7D" data-width="2025" data-height="1350">\left \{ a_ { n } \right \}</span><span class="sdij_text">의 공비를</span><span class="sdij_equation" data-equation="r%28r%3E0%29" data-latex="r+%28+r%3E0+%29" data-width="3691" data-height="1125">r ( r>0 )</span><span class="sdij_text">라 하자.</span></p><p class="sdij_p" style="text-align:LEFT;vertical-align:BASELINE;"><span class="sdij_text"><span class="sdij_tab" style="white-space: pre;">&#9;</span></span><span class="sdij_equation" data-equation="a_%7B2%7D%2Ba_%7B4%7D%3D30" data-latex="a_+%7B+2+%7D+%2Ba_+%7B+4+%7D+%3D+30" data-width="5435" data-height="1350">a_ { 2 } +a_ { 4 } = 30</span><span class="sdij_text"><span class="sdij_tab" style="white-space: pre;">&#9;</span><span class="sdij_tab" style="white-space: pre;">&#9;</span><span class="sdij_tab" style="white-space: pre;">&#9;</span><span class="sdij_tab" style="white-space: pre;">&#9;</span></span><span class="sdij_equation" data-equation="cdotscdots" data-latex="cdotscdots" data-width="2100" data-height="1125">cdotscdots</span><span class="sdij_text">㉠</span></p><p class="sdij_p" style="text-align:LEFT;vertical-align:BASELINE;"><span class="sdij_equation" data-equation="a_%7B4%7D%2Ba_%7B6%7D%3D%7B15%7D+over+%7B2%7D" data-latex="a_+%7B+4+%7D+%2Ba_+%7B+6+%7D+%3D+%5Cfrac%7B+15+%7D%7B+2+%7D" data-width="5985" data-height="2580">a_ { 4 } +a_ { 6 } = \frac{ 15 }{ 2 }</span><span class="sdij_text">에서</span><span class="sdij_equation" data-equation="r%5E%7B2%7D+left%28a_%7B2%7D%2Ba_%7B4%7D+right%29%3D%7B15%7D+over+%7B2%7D" data-latex="r%5E+%7B+2+%7D+%5Cleft+%28+a_+%7B+2+%7D+%2Ba_+%7B+4+%7D+%5Cright+%29+%3D+%5Cfrac%7B+15+%7D%7B+2+%7D" data-width="7230" data-height="2580">r^ { 2 } \left ( a_ { 2 } +a_ { 4 } \right ) = \frac{ 15 }{ 2 }</span><span class="sdij_text"><span class="sdij_tab" style="white-space: pre;">&#9;</span><span class="sdij_tab" style="white-space: pre;">&#9;</span></span><span class="sdij_equation" data-equation="cdotscdots" data-latex="cdotscdots" data-width="2100" data-height="1125">cdotscdots</span><span class="sdij_text">㉡</span></p><p class="sdij_p" style="text-align:LEFT;vertical-align:BASELINE;"><span class="sdij_text">㉠을 ㉡에 대입하면</span></p><p class="sdij_p" style="text-align:LEFT;vertical-align:BASELINE;"><span class="sdij_text"><span class="sdij_tab" style="white-space: pre;">&#9;</span></span><span class="sdij_equation" data-equation="r%5E%7B2%7D+times+30%3D%7B15%7D+over+%7B2%7D" data-latex="r%5E+%7B+2+%7D+%5Ctimes+30+%3D+%5Cfrac%7B+15+%7D%7B+2+%7D" data-width="5961" data-height="2580">r^ { 2 } \times 30 = \frac{ 15 }{ 2 }</span><span class="sdij_text">,</span><span class="sdij_equation" data-equation="r%5E%7B2%7D%3D%7B1%7D+over+%7B4%7D" data-latex="r%5E+%7B+2+%7D+%3D+%5Cfrac%7B+1+%7D%7B+4+%7D" data-width="3311" data-height="2580">r^ { 2 } = \frac{ 1 }{ 4 }</span><span class="sdij_text"></span></p><p class="sdij_p" style="text-align:LEFT;vertical-align:BASELINE;"><span class="sdij_equation" data-equation="r%3E0" data-latex="r%3E0" data-width="2337" data-height="1125">r>0</span><span class="sdij_text">이므로</span><span class="sdij_equation" data-equation="r%3D%7B1%7D+over+%7B2%7D" data-latex="r+%3D+%5Cfrac%7B+1+%7D%7B+2+%7D" data-width="2837" data-height="2580">r = \frac{ 1 }{ 2 }</span><span class="sdij_text"></span></p><p class="sdij_p" style="text-align:LEFT;vertical-align:BASELINE;"><span class="sdij_text">㉠에서</span><span class="sdij_equation" data-equation="a_%7B1%7D+r%2Ba_%7B1%7D+r%5E%7B3%7D%3D30" data-latex="a_+%7B+1+%7D+r%2Ba_+%7B+1+%7D+r%5E+%7B+3+%7D+%3D+30" data-width="6644" data-height="1538">a_ { 1 } r+a_ { 1 } r^ { 3 } = 30</span><span class="sdij_text"></span></p><p class="sdij_p" style="text-align:LEFT;vertical-align:BASELINE;"><span class="sdij_equation" data-equation="r%3D%7B1%7D+over+%7B2%7D" data-latex="r+%3D+%5Cfrac%7B+1+%7D%7B+2+%7D" data-width="2837" data-height="2580">r = \frac{ 1 }{ 2 }</span><span class="sdij_text">을 대입하면</span></p><p class="sdij_p" style="text-align:LEFT;vertical-align:BASELINE;"><span class="sdij_text"><span class="sdij_tab" style="white-space: pre;">&#9;</span></span><span class="sdij_equation" data-equation="a_%7B1%7D+times+%7B1%7D+over+%7B2%7D%2Ba_%7B1%7D+times+left%28%7B1%7D+over+%7B2%7D+right%29%5E%7B3%7D%3D30" data-latex="a_+%7B+1+%7D+%5Ctimes+%5Cfrac%7B+1+%7D%7B+2+%7D+%2Ba_+%7B+1+%7D+%5Ctimes+%5Cleft+%28+%5Cfrac%7B+1+%7D%7B+2+%7D+%5Cright+%29+%5E+%7B+3+%7D+%3D+30" data-width="10938" data-height="2768">a_ { 1 } \times \frac{ 1 }{ 2 } +a_ { 1 } \times \left ( \frac{ 1 }{ 2 } \right ) ^ { 3 } = 30</span><span class="sdij_text"></span></p><p class="sdij_p" style="text-align:LEFT;vertical-align:BASELINE;"><span class="sdij_text"><span class="sdij_tab" style="white-space: pre;">&#9;</span></span><span class="sdij_equation" data-equation="a_%7B1%7D+times+%7B5%7D+over+%7B8%7D%3D30" data-latex="a_+%7B+1+%7D+%5Ctimes+%5Cfrac%7B+5+%7D%7B+8+%7D+%3D+30" data-width="5305" data-height="2580">a_ { 1 } \times \frac{ 5 }{ 8 } = 30</span><span class="sdij_text"></span></p><p class="sdij_p" style="text-align:LEFT;vertical-align:BASELINE;"><span class="sdij_text"><span class="sdij_tab" style="white-space: pre;">&#9;</span></span><span class="sdij_equation" data-equation="therefore" data-latex="%5Ctherefore" data-width="1050" data-height="1125">\therefore</span><span class="sdij_text"></span><span class="sdij_equation" data-equation="a_%7B1%7D%3D30+times+%7B8%7D+over+%7B5%7D%3D48" data-latex="a_+%7B+1+%7D+%3D+30+%5Ctimes+%5Cfrac%7B+8+%7D%7B+5+%7D+%3D+48" data-width="7675" data-height="2580">a_ { 1 } = 30 \times \frac{ 8 }{ 5 } = 48</span><span class="sdij_text"></span></p>
</body>
</html>
""";
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // TRY THIS: Try changing the color here to a specific color (to
        // Colors.amber, perhaps?) and trigger a hot reload to see the AppBar
        // change color while the other colors stay the same.
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
          // Center is a layout widget. It takes a single child and positions it
          // in the middle of the parent.
          child: _isShow
              ? WebViewX(
                  initialContent: htmlData,
                  initialSourceType: SourceType.html,
                  onWebViewCreated: (controller) {
                    //  webviewController = controller
                  },
                  height: 500,
                  width: 300,
                )
              : SizedBox()),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _isShow = !_isShow;
          setState(() {});
        },
        tooltip: 'Show Latex HTML',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
