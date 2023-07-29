import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:hundi_flutter_parts/ui/res/theme/app_theme_provider.dart';
import 'package:hundi_flutter_parts/ui/res/values/colors.dart';
import 'package:provider/provider.dart';

class ColorPickerWidget extends StatefulWidget {
  // https://github.com/mhmzdev/messenger-chat-head-flutter-ui/blob/main/lib/ui/chat_head.dart
 

  
  // create some values

  
  // static const TYPE_ICON = 0;
  // static const TYPE_DEFAULT = 1;
  // late AppThemeColors themeColors;

  Offset offset; //= Offset.zero;
  final Color seedColor;
  final VoidCallback onDragStarted;
  final VoidCallback onDragCompleted;

  ColorPickerWidget({
    Key? key,
    required this.offset,
    required this.onDragStarted,
    required this.onDragCompleted, required this.seedColor,
  }) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ColorPickerWidgetState();
  }
}

class _ColorPickerWidgetState extends State<ColorPickerWidget> {

   List<Color> colors = [
    Colors.red,
    Colors.pink,
    Colors.purple,
    Colors.deepPurple,
    Colors.indigo,
    Colors.blue,
    Colors.lightBlue,
    Colors.cyan,
    Colors.teal,
    Colors.green,
    Colors.lightGreen,
    Colors.lime,
    Colors.yellow,
    Colors.amber,
    Colors.orange,
    Colors.deepOrange,
    Colors.brown,
    Colors.grey,
    Colors.blueGrey,
    Colors.black,
  ];

  double _width = 60.0; // Initial width of FloatingActionButton
  double _height = 60.0; // Initial height of FloatingActionButton

    Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: widget.offset.dx,
      top: widget.offset.dy,
      child: GestureDetector(
        onPanUpdate: (details) {
          print("details.delta.dx: ${details.delta.dx}");

          setState(() {
            widget.offset = Offset(
              widget.offset.dx + details.delta.dx,
              widget.offset.dy + details.delta.dy,
            );
          });
        },
        onPanStart: (_) {
          widget.onDragStarted();
          setState(() {
            _width = 72.0; // Increase width during drag
            _height = 72.0; // Increase height during drag
          });
        },
        onPanEnd: (_) {
          widget.onDragCompleted();
          setState(() {
            _width = 60.0; // Increase width during drag
            _height = 60.0; // Increase height during drag
          });
        },
        child: Container(
          width: _width,
          height: _height,
          color: Colors.transparent,
          child: FloatingActionButton(
              mini: true,
              tooltip: "Change Color",
              onPressed: openPicker,
              backgroundColor: JlColors.invert(widget.seedColor),
              child: const Icon(
                Icons.palette,
              ),
            ),
        ),
      ),
    );
  }



  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

  openPicker() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Pick a color!'),
            content: SingleChildScrollView(
              child: BlockPicker(
                availableColors: colors,
                pickerColor: pickerColor,
                onColorChanged: changeColor,
              ),
            ),
            actions: <Widget>[
              ElevatedButton(
                child: const Text('Got it'),
                onPressed: () {
                  print("object: $currentColor");
                  setState(() => currentColor = pickerColor);
                  print("object 2: $currentColor");
                  context.read<AppThemeProvider>().updateTheme(currentColor);
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        });
  }
}
