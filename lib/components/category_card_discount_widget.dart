import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CategoryCardDiscountWidget extends StatefulWidget {
  const CategoryCardDiscountWidget({
    Key? key,
    this.title,
    this.backgroundImage,
    this.discountPercentage,
  }) : super(key: key);

  final String? title;
  final String? backgroundImage;
  final int? discountPercentage;

  @override
  _CategoryCardDiscountWidgetState createState() =>
      _CategoryCardDiscountWidgetState();
}

class _CategoryCardDiscountWidgetState
    extends State<CategoryCardDiscountWidget> {
  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
      child: Container(
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(0),
        ),
        child: Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                widget.backgroundImage!,
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 1,
                fit: BoxFit.cover,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.transparent, Color(0xA6001924)],
                  stops: [0, 1],
                  begin: AlignmentDirectional(0, -1),
                  end: AlignmentDirectional(0, 1),
                ),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1, 1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 15),
                child: Text(
                  widget.title!,
                  style: FlutterFlowTheme.of(context).title3,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(1, -1),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                child: Container(
                  width: 40,
                  height: 25,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryColor,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      '-${widget.discountPercentage.toString()}%',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
