import 'package:flutter/material.dart';

class IconWidget extends StatefulWidget {
  final IconData icon;
  final Color color;
  const IconWidget({super.key, required this.icon, required this.color});

  @override
  State<IconWidget> createState() => _IconWidgetState();
}

class _IconWidgetState extends State<IconWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _pulse;

  @override
  void initState() {
    super.initState();
    _pulse = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _pulse.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _pulse,
      builder: (_, _) => Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 180 + (_pulse.value * 20),
            height: 180 + (_pulse.value * 20),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: widget.color.withValues(
                  alpha: 0.08 + _pulse.value * 0.06,
                ),
                width: 1,
              ),
            ),
          ),
          Container(
            width: 140,
            height: 140,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: widget.color.withValues(alpha: 0.15),
                width: 1.5,
              ),
            ),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: widget.color.withValues(alpha: 0.12),
              border: Border.all(
                color: widget.color.withValues(alpha: 0.4),
                width: 1.5,
              ),
            ),
            child: Icon(widget.icon, color: widget.color, size: 48),
          ),
        ],
      ),
    );
  }
}

class Dot extends StatelessWidget {
  final bool isActive;
  final Color color;
  const Dot({super.key, required this.isActive, required this.color});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 350),
      curve: Curves.easeInOutCubic,
      margin: const EdgeInsets.only(right: 8),
      width: isActive ? 24 : 8,
      height: 8,
      decoration: BoxDecoration(
        color: isActive ? color : Colors.white.withValues(alpha: 0.2),
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}
