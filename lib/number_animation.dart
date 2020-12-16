import 'package:flutter/material.dart';

class NumberAnimation extends StatefulWidget {
  num start; // start number
  num end; // end nunber
  bool isInt; // true for int, false for double
  Duration duration; // animation duration
  TextStyle style; // TextStyle
  TextAlign textAlign; // TextAlign
  StrutStyle strutStyle; // StrutStyle
  String before; // number prefix
  String after; // number suffix
  int decimalPoint; // decimal point
  bool isLoading; // is loading?
  String loadingPlaceHolder; // loading placeholder
  NumberAnimation({
    this.start = 0.0,
    this.end,
    this.isInt = false,
    this.style,
    this.textAlign,
    this.strutStyle,
    this.duration = const Duration(milliseconds: 1000),
    this.decimalPoint = 2,
    this.before = '',
    this.after = '',
    this.isLoading = false,
    this.loadingPlaceHolder = '',
  }) {
    if (this.isLoading == false) {
      assert(start != null);
      assert(end != null);
      if (isInt) {
        assert(start.toInt() == start);
        assert(end.toInt() == end);
      }
    }
  }
  @override
  _NumberAnimationState createState() => _NumberAnimationState();
}

class _NumberAnimationState extends State<NumberAnimation>
    with SingleTickerProviderStateMixin {
  Animation animation;
  AnimationController controller;
  Animation curve;
  bool hasShowNumber = false; // has been show once
  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: widget.duration, vsync: this);
    curve = new CurvedAnimation(parent: controller, curve: Curves.easeOut);
    if (widget.isLoading == false) {
      Animation<double> animation = Tween<double>(
              begin: widget.start.toDouble(), end: widget.end.toDouble())
          .animate(curve);
      this.animation = animation;
      controller.forward();
      hasShowNumber = true;
    }
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  void didUpdateWidget(NumberAnimation oldWidget) {
    if (widget.isLoading == true) {
      return;
    }
    if (oldWidget.end == widget.end && hasShowNumber == true) {
      return;
    }
    Animation<double> animation = Tween<double>(
            begin: this.animation != null ? this.animation.value : widget.start,
            end: widget.end.toDouble())
        .animate(this.curve);
    this.animation = animation;
    this.controller
      ..reset()
      ..forward();
    hasShowNumber = true;
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    TextStyle style = widget.style;
    TextAlign textAlign = widget.textAlign;
    StrutStyle strutStyle = widget.strutStyle;
    if (widget.isLoading == true) {
      return Text(
        widget.loadingPlaceHolder,
        style: style,
        textAlign: textAlign,
        strutStyle: strutStyle,
      );
    }
    return AnimatedBuilder(
      animation: animation,
      builder: (context, child) {
        if (widget.isLoading == true) {
          return Text(
            widget.loadingPlaceHolder,
            style: style,
            textAlign: textAlign,
            strutStyle: strutStyle,
          );
        }
        if (widget.isInt) {
          return Text(
            '${widget.before}${animation.value.toInt().toString()}${widget.after}',
            style: style,
            textAlign: textAlign,
            strutStyle: strutStyle,
          );
        } else {
          return Text(
            '${widget.before}${animation.value.toStringAsFixed(widget.decimalPoint)}${widget.after}',
            style: style,
            textAlign: textAlign,
            strutStyle: strutStyle,
          );
        }
      },
    );
  }
}
