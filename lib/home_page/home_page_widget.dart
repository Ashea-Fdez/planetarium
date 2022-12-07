import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      context.pushNamed('Planetas');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(70, 90, 0, 0),
                    child: Text(
                      'Planetarium',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).title1.override(
                            fontFamily: 'Poppins',
                            color: Colors.gray,
                            fontSize: 40,
                          ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(60, 0, 0, 0),
                child: Image.network(
                  'data:image/jpeg;base64,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',
                  width: 250,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 20, 0, 0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Planets',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFF3a336b),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.gray,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 20, 0, 0),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Stars',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFF3a336b),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.gray,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 20, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('PlanetasCopy');
                  },
                  text: 'blackholes',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFF3a336b),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(50, 20, 0, 0),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('PlanetasCopy');
                  },
                  text: 'blackholes',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: Color(0xFF3a336b),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.white,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
