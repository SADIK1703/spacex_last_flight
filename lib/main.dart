import 'dart:io';
import 'package:flutter/material.dart';
import 'package:spacex_last_flight/views/spotify_ana_sayfa.dart';
import 'services/request_services.dart';
import 'utils/globals.dart';
import 'view_models.dart/flight_info_view_model.dart';
import 'views/custom_widgets/custom_appbar.dart';
import 'package:webview_flutter/webview_flutter.dart';

GlobalValues _globalValues = GlobalValues();
LastFlightService _lastFlightService = LastFlightService();
PageController _pageController = PageController();
void main() async {
  _globalValues.lastFlight = await _lastFlightService.getFlight().then(
    (value) {
      _globalValues.lastFlight = value;
      return value;
    },
  );
  print(_globalValues.lastFlight);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
        secondaryHeaderColor: Colors.white,
        textTheme: TextTheme(
          bodyText1:
              Theme.of(context).textTheme.bodyText1!.copyWith(fontSize: 18),
        ),
      ),
      home: SpotifyPlayList(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late MainPageViewModels mainPageViewModels;
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
    mainPageViewModels = MainPageViewModels(
      globalValues: _globalValues,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: PageView(
          allowImplicitScrolling: false,
          scrollDirection: Axis.vertical,
          controller: _pageController,
          children: [
            mainPageViewModels.buildPage(
              context: context,
              pageController: _pageController,
              pageIndex: 0,
            ),
            mainPageViewModels.buildPage(
              context: context,
              pageIndex: 1,
              pageController: _pageController,
            ),
            mainPageViewModels.buildPage(
              context: context,
              pageIndex: 2,
              pageController: _pageController,
            ),
            mainPageViewModels.buildPage(
              context: context,
              pageIndex: 3,
              pageController: _pageController,
            ),
          ],
        ),
      ),
    );
  }
}
