import 'package:flutter/material.dart';
import 'services/request_services.dart';
import 'utils/globals.dart';
import 'view_models.dart/flight_info_view_model.dart';
import 'views/custom_widgets/custom_appbar.dart';

GlobalValues _globalValues = GlobalValues();
LastFlightService _lastFlightService = LastFlightService();
PageController _pageController = PageController();
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: false,
        primarySwatch: Colors.orange,
        secondaryHeaderColor: Colors.white,
        textTheme: TextTheme(
          bodySmall: Theme.of(context).textTheme.bodySmall!.copyWith(fontSize: 18),
        ),
      ),
      home: HomePage(),
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
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (final _) async {
        await _initializeData();
      },
    );
  }

  Future<void> _initializeData() async {
    _globalValues.lastFlight = await _lastFlightService.getFlight().then(
      (value) {
        _globalValues.lastFlight = value;
        return value;
      },
    );
    setState(() {
      _isLoading = false;
      mainPageViewModels = MainPageViewModels(
        globalValues: _globalValues,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(globalValues: _globalValues),
      body: _isLoading
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(child: CircularProgressIndicator()),
              ],
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: PageView.builder(
                allowImplicitScrolling: false,
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                itemBuilder: (_, index) => _buildPageWithTransition(index),
              ),
            ),
    );
  }

  Widget _buildPageWithTransition(int pageIndex) {
    return AnimatedBuilder(
      animation: _pageController,
      builder: (context, child) {
        double value = 1.0;
        if (_pageController.position.haveDimensions) {
          value = _pageController.page! - pageIndex;
          value = (1 - (value.abs() * 0.3)).clamp(0.0, 1.0);
        }
        return Transform(
          transform: Matrix4.identity()..scale(value, value),
          alignment: Alignment.center,
          child: mainPageViewModels.buildPage(
            context: context,
            pageController: _pageController,
            pageIndex: pageIndex,
          ),
        );
      },
      child: mainPageViewModels.buildPage(
        context: context,
        pageController: _pageController,
        pageIndex: pageIndex,
      ),
    );
  }
}
