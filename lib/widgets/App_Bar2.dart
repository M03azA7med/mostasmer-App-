import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class AppBar2 extends StatelessWidget {
  final String PageName;
  const AppBar2({super.key, required this.PageName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Stack(
        alignment: AlignmentDirectional(0.0, 0.0),
        children: [
          Align(
            alignment: AlignmentDirectional(-1.0, -1.0),
            child: Material(
              color: Colors.transparent,
              elevation: 5.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Container(
                width: 50.0,
                height: 35.0,
                decoration: BoxDecoration(
                  color: HexColor('#F0F2F5'),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.arrow_back_ios_rounded,
                    color: Color(0xFF2AB09C),
                    size: 24.0,
                  ),
                ),
              ),
            ),
          ),
           Align(
            alignment: const AlignmentDirectional(-1.0, 0.0),
            child: Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(
                  70.0, 10.0, 0.0, 10.0),
              child: Text(PageName,style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 15
              ),),
            ),
          ),

        ],
      ),
    );
  }
}
