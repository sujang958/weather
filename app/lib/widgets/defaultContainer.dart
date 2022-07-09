import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultContainer extends StatefulWidget {
  final Widget child;
  final bool maintainBottomViewPadding;

  const DefaultContainer({
    required this.child,
    this.maintainBottomViewPadding = false,
  });

  @override
  State<StatefulWidget> createState() => _DefaultContainerState();
}

class _DefaultContainerState extends State<DefaultContainer> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: SafeArea(
        maintainBottomViewPadding: widget.maintainBottomViewPadding,
        child: DefaultTextStyle(
          child: widget.child,
          style: const TextStyle(color: Colors.white, fontFamily: "Pretendard"),
        ),
      ),
    );
  }
}
