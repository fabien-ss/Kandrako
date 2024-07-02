import 'package:flutter/material.dart';
import 'package:kandrako/widgets/button/base_button.dart';

class CustomElevatedButton extends BaseButton {
  CustomElevatedButton(this.decoration, this.leftIcon, this.rightIcon, {super.key, 

  
  required super.text}); 

  final BoxDecoration? decoration;

  final Widget? leftIcon;

  final Widget? rightIcon;

  @override
  Widget build(BuildContext context){
    return alignment != null ? Align(alignment: alignment ?? Alignment.center,
    child: buildElevatedButtonWidget): buildElevatedButtonWidget;
  }

  Widget get buildElevatedButtonWidget => Container ( 
    height: this.height?? 50,
    width: this.width ?? double.maxFinite,
    margin: margin,
    decoration: decoration,
    child: ElevatedButton(
      style: buttonStyle,
      onPressed: isDisabled ?? false ? null: onPressed ?? () {}, 
      child: Row ( 
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children : [ 
          leftIcon ?? const SizedBox.shrink(),
          Text( 
            text,
          ),
          rightIcon?? const SizedBox.shrink(),
          Text( 
            text
          ),
          rightIcon?? const SizedBox.shrink(),
        ]
       )
    )
   );
}
