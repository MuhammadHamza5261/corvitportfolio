import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:project/newappthree.dart';
///Stl
class drawer1 extends StatelessWidget {
  const drawer1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: drawerSTF(),
    );
  }
}
///stf

///yaha contoller laga ga

final ZoomDrawerController z = ZoomDrawerController();
class drawerSTF extends StatefulWidget {
  const drawerSTF({Key? key}) : super(key: key);

  @override
  State<drawerSTF> createState() => _drawerSTFState();
}

class _drawerSTFState extends State<drawerSTF> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ZoomDrawer(
        ///controller: z,
        borderRadius: 24,
        style: DrawerStyle.defaultStyle,
        // showShadow: true,
        openCurve: Curves.fastOutSlowIn,
        slideWidth: MediaQuery.of(context).size.width * 0.65,
        duration: const Duration(milliseconds: 500),
        // angle: 0.0,
        menuBackgroundColor: Colors.indigo,
        mainScreen: const newwidigit(),
        menuScreen: Theme(
          data: ThemeData.dark(),
          child:  Scaffold(
            backgroundColor: Colors.indigo,
            body: SafeArea(
              child: Padding(
              padding: EdgeInsets.only(left: 25),
              child: Center(
                child: Column(
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(Icons.home),
                                ),
                                Container(
                                  child: Text('Home'),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Container(
                                  child: Icon(Icons.home),
                                ),
                                Container(
                                  child: Text('Home'),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],

                ),
              ),
            ),
          ),
        ),
      ),
      ),
    );
  }
}

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> with SingleTickerProviderStateMixin {
  late AnimationController controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 100),
    value: -1.0,
  );

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  bool get isPanelVisible {
    final AnimationStatus status = controller.status;
    return status == AnimationStatus.completed ||
        status == AnimationStatus.forward;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: IconButton(
          onPressed: () {
            Navigator.pushNamed(context, 'Products');
          },
          icon: AnimatedIcon(
            icon: AnimatedIcons.close_menu,
            progress: controller.view,
          ),
        ),
      ),
      body: TwoPanels(
        controller: controller,
      ),
    );
  }
}

class TwoPanels extends StatefulWidget {
  final AnimationController controller;

  const TwoPanels({Key? key, required this.controller}) : super(key: key);

  @override
  _TwoPanelsState createState() => _TwoPanelsState();
}

class _TwoPanelsState extends State<TwoPanels> with TickerProviderStateMixin {
  static const _headerHeight = 32.0;
  late TabController tabController = TabController(length: 3, vsync: this);

  Animation<RelativeRect> getPanelAnimation(BoxConstraints constraints) {
    final _height = constraints.biggest.height;
    final _backPanelHeight = _height - _headerHeight;
    const _frontPanelHeight = -_headerHeight;

    return RelativeRectTween(
      begin: RelativeRect.fromLTRB(
        0.0,
        _backPanelHeight,
        0.0,
        _frontPanelHeight,
      ),
      end: const RelativeRect.fromLTRB(0.0, 100, 0.0, 0.0),
    ).animate(
      CurvedAnimation(parent: widget.controller, curve: Curves.linear),
    );
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  Widget bothPanels(BuildContext context, BoxConstraints constraints) {
    final ThemeData theme = Theme.of(context);
    return Stack(
      children: <Widget>[
        Scaffold(
          appBar: AppBar(
            title: const Text("Backdrop"),
            elevation: 0.0,
            leading: IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () {
                z.toggle!();
              },
            ),
            bottom: TabBar(
              controller: tabController,
              tabs: const [
                Tab(
                  //icon: Icon(Icons.home_filled),
                  text: 'lll',
                ),
                Tab(
                  icon: Icon(Icons.home_filled),
                  //text: 'lll',
                ),
                Tab(
                  icon: Icon(Icons.home_filled),
                  text: 'lll',
                )
              ],
            ),
          ),
          body: TabBarView(
            controller: tabController,
            children: [
              Container(
                color: theme.primaryColor,
                child: const Center(
                  child: Text(
                    "Back Panel",
                    style: TextStyle(fontSize: 24.0, color: Colors.white),
                  ),
                ),
              ),
              Container(
                color: Colors.pink,
                child: const Center(
                  child: Text(
                    "Back Panel",
                    style: TextStyle(fontSize: 24.0, color: Colors.white),
                  ),
                ),
              ),
              Container(
                color: Colors.brown,
                child: const Center(
                  child: Text(
                    "Back Panel",
                    style: TextStyle(fontSize: 24.0, color: Colors.white),
                  ),
                ),
              )
            ],
          ),
        ),
        PositionedTransition(
          rect: getPanelAnimation(constraints),
          child: Material(
            elevation: 12.0,
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16.0),
              topRight: Radius.circular(16.0),
            ),
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: _headerHeight,
                  child: Center(
                    child: Text(
                      "Shop Here",
                      style: Theme.of(context).textTheme.button,
                    ),
                  ),
                ),
                const Expanded(
                  child: Center(
                    child: Text(
                      "Front Panel",
                      style: TextStyle(fontSize: 24.0, color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: bothPanels,
    );
  }
}

