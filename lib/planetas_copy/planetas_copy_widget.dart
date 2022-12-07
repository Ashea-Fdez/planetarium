import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlanetasCopyWidget extends StatefulWidget {
  const PlanetasCopyWidget({Key? key}) : super(key: key);

  @override
  _PlanetasCopyWidgetState createState() => _PlanetasCopyWidgetState();
}

class _PlanetasCopyWidgetState extends State<PlanetasCopyWidget> {
  PageController? pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryColor,
        automaticallyImplyLeading: false,
        leading: FlutterFlowIconButton(
          borderColor: Colors.transparent,
          borderRadius: 30,
          borderWidth: 1,
          buttonSize: 60,
          icon: Icon(
            Icons.arrow_back_rounded,
            color: Colors.white,
            size: 30,
          ),
          onPressed: () async {
            context.pushNamed('HomePage');
          },
        ),
        title: Text(
          'BlackHoles',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.white,
                fontSize: 22,
              ),
        ),
        actions: [],
        centerTitle: false,
        elevation: 2,
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Align(
                alignment: AlignmentDirectional(0, 0),
                child: StreamBuilder<List<BlackholesRecord>>(
                  stream: queryBlackholesRecord(
                    limit: 5,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50,
                          height: 50,
                          child: CircularProgressIndicator(
                            color: FlutterFlowTheme.of(context).primaryColor,
                          ),
                        ),
                      );
                    }
                    List<BlackholesRecord> columnBlackholesRecordList =
                        snapshot.data!;
                    return Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: List.generate(columnBlackholesRecordList.length,
                          (columnIndex) {
                        final columnBlackholesRecord =
                            columnBlackholesRecordList[columnIndex];
                        return ListView(
                          padding: EdgeInsets.zero,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          children: [
                            Container(
                              width: 120,
                              height: 120,
                              decoration: BoxDecoration(
                                color: Color(0xFF),
                                shape: BoxShape.rectangle,
                              ),
                              child: SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 3),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Name: ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                              Text(
                                                columnBlackholesRecord.nombre!,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0, 0, 0, 3),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                'Size: ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                              Text(
                                                columnBlackholesRecord.tamano!
                                                    .toString(),
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyText1,
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              'mass',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                            ),
                                            Text(
                                              columnBlackholesRecord.masa!
                                                  .toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyText1,
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                    );
                  },
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                child: FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('addblack');
                  },
                  text: 'add Blackhole\n',
                  options: FFButtonOptions(
                    width: 150,
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryColor,
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
              Container(
                width: double.infinity,
                height: 150,
                child: Stack(
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 50),
                      child: PageView(
                        controller: pageViewController ??=
                            PageController(initialPage: 0),
                        scrollDirection: Axis.horizontal,
                        children: [
                          Image.network(
                            'data:image/jpeg;base64,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',
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height * 1,
                            fit: BoxFit.cover,
                          ),
                          Image.network(
                            'data:image/jpeg;base64,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',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Image.network(
                            'data:image/jpeg;base64,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',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ],
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 1),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                        child: smooth_page_indicator.SmoothPageIndicator(
                          controller: pageViewController ??=
                              PageController(initialPage: 0),
                          count: 3,
                          axisDirection: Axis.horizontal,
                          onDotClicked: (i) {
                            pageViewController!.animateToPage(
                              i,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          },
                          effect: smooth_page_indicator.ExpandingDotsEffect(
                            expansionFactor: 2,
                            spacing: 8,
                            radius: 16,
                            dotWidth: 16,
                            dotHeight: 16,
                            dotColor: Color(0xFF9e9595),
                            activeDotColor: Color(0xFF883fb5),
                            paintStyle: PaintingStyle.fill,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
