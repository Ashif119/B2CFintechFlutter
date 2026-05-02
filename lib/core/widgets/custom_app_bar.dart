import 'package:alert_hub/core/utils/extensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget {
  final Widget? leading;
  final Widget? trailing;
  final Widget? middle;
  final bool autoImplyLeading;
  final bool centerOfTitle;
  final bool showActions;
  final PreferredSizeWidget? bottom;
  final VoidCallback? onTapTextField;

  const CustomAppBar({
    super.key,
    this.leading,
    this.trailing,
    this.middle,
    this.autoImplyLeading = true,
    this.centerOfTitle = false,
    this.showActions = false,
    this.bottom,
    this.onTapTextField,
  });

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();

  @override
  Size get preferredSize =>
      Size.fromHeight(kToolbarHeight + (bottom?.preferredSize.height ?? 0));
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(context) {
    return AppBar(
      bottomOpacity: 1.0,
      elevation: 2.0,
      automaticallyImplyLeading: widget.autoImplyLeading,
      centerTitle: widget.centerOfTitle,
      backgroundColor:context.colorScheme.primary,
      title: widget.middle,
      titleSpacing:widget.autoImplyLeading!=true? 25:0,
      leading: widget.autoImplyLeading
          ? widget.leading ??
          GestureDetector(
              onTap: () {
                Navigator.pop(context);
                SystemSound.play(SystemSoundType.click);
              },
              child:Container(
                alignment: Alignment.center,
                margin: EdgeInsets.only(left:  1),
                padding: EdgeInsets.only(left: 25),
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.white,
                ),
              )
          )
          : null,
      actions:
      widget.showActions
          ? [
        if (widget.trailing != null)
          widget.trailing!
        else
          const SizedBox(width: 5),
      ]
          : null,
      bottom: widget.bottom,
    );
  }
}
