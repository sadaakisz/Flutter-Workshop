import 'package:flutter/material.dart';

import 'model/product.dart' as product;

//TODO: Add velocity constant (104)

class Backdrop extends StatefulWidget {
  final product.Category currentCategory;
  final Widget frontLayer;
  final Widget backLayer;
  final Widget frontTitle;
  final Widget backTitle;

  Backdrop({
    required this.currentCategory,
    required this.frontLayer,
    required this.backLayer,
    required this.frontTitle,
    required this.backTitle,
  });

  @override
  State<StatefulWidget> createState() => _BackdropState();
}

class _BackdropState extends State<Backdrop>
    with SingleTickerProviderStateMixin {
  final GlobalKey _backdropKey = GlobalKey(debugLabel: 'Backdrop');

  //TODO: Add Animation Controller widget (104)

  //TODO: Add BuildContext and BoxConstraints parameters to _buildStack (104)
  Widget _buildStack() {
    return Stack(
      key: _backdropKey,
      children: <Widget>[
        //TODO: Wrap backLayer in an ExcludeSemantics widget (104)
        widget.backLayer,
        widget.frontLayer,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      brightness: Brightness.light,
      elevation: 0.0,
      titleSpacing: 0.0,
      //TODO: Replace leading menu icon with IconButton (104)
      //TODO: Remove leading property (104)
      //TODO: Create title with _BackdropTitle parameter (104)
      leading: Icon(Icons.menu),
      title: Text('SHRINE'),
      actions: <Widget>[
        //TODO: Add shortcut to login screen from trailing icons (104)
        IconButton(
          icon: Icon(
            Icons.search,
            semanticLabel: 'search',
          ),
          onPressed: () {
            //TODO: Add open login (104)
          },
        ),
        IconButton(
          icon: Icon(
            Icons.tune,
            semanticLabel: 'filter',
          ),
          onPressed: () {
            //TODO: Add open login (104)
          },
        ),
      ],
      backwardsCompatibility: false,
    );
    return Scaffold(
      appBar: appBar,
      //TODO: Return a LayoutBuilder widget (104)
      body: _buildStack(),
    );
  }
}
