import 'package:flutter/material.dart';

// ── Shared Glass Icon Box ──────────────────────────────────────────────────

class GlassIconBox extends StatelessWidget {
  final Widget child;
  final double? width;
  final double? height;
  final double? borderRadius;
  final EdgeInsets? padding;
  const GlassIconBox({
    super.key,
    required this.child,
     this.width,
     this.height, this.borderRadius, this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      width: width,//38
      height: height,//38
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.06),
        borderRadius: BorderRadius.circular(borderRadius??10),
        border: Border.all(color: Colors.white.withValues(alpha: 0.12)),
      ),
      child: Center(child: child),
    );
  }
}
