import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
    as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EstrellasWidget extends StatefulWidget {
  const EstrellasWidget({Key? key}) : super(key: key);

  @override
  _EstrellasWidgetState createState() => _EstrellasWidgetState();
}

class _EstrellasWidgetState extends State<EstrellasWidget> {
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
            color: Colors.gray,
            size: 30,
          ),
          onPressed: () async {
            context.pushNamed('HomePage');
          },
        ),
        title: Text(
          'Stars',
          style: FlutterFlowTheme.of(context).title2.override(
                fontFamily: 'Poppins',
                color: Colors.gray,
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
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: StreamBuilder<List<StarsRecord>>(
                      stream: queryStarsRecord(
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
                                color:
                                    FlutterFlowTheme.of(context).primaryColor,
                              ),
                            ),
                          );
                        }
                        List<StarsRecord> columnStarsRecordList =
                            snapshot.data!;
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: List.generate(columnStarsRecordList.length,
                              (columnIndex) {
                            final columnStarsRecord =
                                columnStarsRecordList[columnIndex];
                            return ListView(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              children: [
                                Container(
                                  width: 120,
                                  height: 120,
                                  decoration: BoxDecoration(
                                    color: Color(0xFF8e4cc8),
                                    shape: BoxShape.rectangle,
                                  ),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 3),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Name: ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                  Text(
                                                    columnStarsRecord.nombre!,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 3),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Text(
                                                    'Age',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1
                                                        .override(
                                                          fontFamily: 'Poppins',
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                  ),
                                                  Text(
                                                    columnStarsRecord.edad!
                                                        .toString(),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyText1,
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Text(
                                                  'Type',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1
                                                      .override(
                                                        fontFamily: 'Poppins',
                                                        fontWeight:
                                                            FontWeight.bold,
                                                      ),
                                                ),
                                                Text(
                                                  columnStarsRecord.tipo!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
                        context.pushNamed('addStar');
                      },
                      text: 'add Star\n',
                      options: FFButtonOptions(
                        width: 150,
                        height: 40,
                        color: FlutterFlowTheme.of(context).primaryColor,
                        textStyle:
                            FlutterFlowTheme.of(context).subtitle2.override(
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
                            padding:
                                EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
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
                                dotColor: Color(0xFFada5a5),
                                activeDotColor: Color(0xFF863fb5),
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
            ],
          ),
        ),
      ),
    );
  }
}
