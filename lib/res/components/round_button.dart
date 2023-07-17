

import 'package:flutter/material.dart';
import 'package:client_manager/res/colors/app_color.dart';

class RoundButton extends StatelessWidget {

  const RoundButton({
    Key? key ,
    this.buttonColor = AppColor.primaryButtonColor  ,
    this.textColor = AppColor.primaryTextColor ,
    required this.title ,
    required this.onPress ,
    this.width = 100 ,
    this.height = 40 ,
  this.loading = false
  }) : super(key: key);


  final bool loading;
  final String title ;
  final double height , width  ;
  final VoidCallback onPress ;
  final Color textColor, buttonColor ;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor ,
          borderRadius: BorderRadius.circular(10)
        ),
        child: loading ?
        const Center(child: CircularProgressIndicator()) :
        Center(
          child: Text(title , style:  Theme.of(context).textTheme.titleMedium!.copyWith(color: Colors.white),),
        ),
      ),
    );
  }
}
