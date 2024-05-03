import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show HapticFeedback;
import 'package:flutter_gn_bottom_nav_bar/gn_bottom_nav_bar.dart';

import 'button.dart';

class GnButton extends StatefulWidget {
  final bool? active;
  final bool? debug;
  final bool? haptic;
  final double? gap;
  final Color? iconColor;
  final Color? rippleColor;
  final Color? hoverColor;
  final Color? iconActiveColor;
  final Color? textColor;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;
  final TextStyle? textStyle;
  final double? iconSize;
  final Function? onPressed;
  final String text;
  final String iconAsset;
  final Color? backgroundColor;
  final Duration? duration;
  final Curve? curve;
  final Gradient? backgroundGradient;
  final Widget? leading;
  final BorderRadius? borderRadius;
  final Border? border;
  final Border? activeBorder;
  final List<BoxShadow>? shadow;
  final String? semanticLabel;
  final GnNavStyle? style;
  final double? textSize;

  const GnButton({
    super.key,
    this.active,
    this.haptic,
    this.backgroundColor,
    required this.iconAsset,
    this.iconColor,
    this.rippleColor,
    this.hoverColor,
    this.iconActiveColor,
    this.text = '',
    this.textColor,
    this.padding,
    this.margin,
    this.duration,
    this.debug,
    this.gap,
    this.curve,
    this.textStyle,
    this.iconSize,
    this.leading,
    this.onPressed,
    this.backgroundGradient,
    this.borderRadius,
    this.border,
    this.activeBorder,
    this.shadow,
    this.semanticLabel,
    this.style = GnNavStyle.google,
    this.textSize,
  });

  @override
  _GnButtonState createState() => _GnButtonState();
}

class _GnButtonState extends State<GnButton> {
  @override
  Widget build(BuildContext context) {
    return Semantics(
      label: widget.semanticLabel ?? widget.text,
      child: Button(
        textSize: widget.textSize,
        style: widget.style,
        borderRadius: widget.borderRadius,
        border: widget.border,
        activeBorder: widget.activeBorder,
        shadow: widget.shadow,
        debug: widget.debug,
        duration: widget.duration,
        iconSize: widget.iconSize,
        active: widget.active,
        onPressed: () {
          if (widget.haptic!) HapticFeedback.selectionClick();
          widget.onPressed?.call();
        },
        padding: widget.padding,
        margin: widget.margin,
        gap: widget.gap,
        color: widget.backgroundColor,
        rippleColor: widget.rippleColor,
        hoverColor: widget.hoverColor,
        gradient: widget.backgroundGradient,
        curve: widget.curve,
        leading: widget.leading,
        iconActiveColor: widget.iconActiveColor,
        iconColor: widget.iconColor,
        iconAsset: widget.iconAsset,
        text: Text(
          widget.text,
          style: widget.textStyle ??
              TextStyle(
                fontWeight: FontWeight.w600,
                color: widget.textColor,
              ),
        ),
      ),
    );
  }
}
