import 'package:adab_app/datas/data_adab.dart';
import 'package:adab_app/screens/detail_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<DataAdab> _dataAdabList = List<DataAdab>();
  double _screenWidthAdjustment;

  @override
  void initState() {
    _dataAdabList = DataAdab().createDataAdab();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _screenWidthAdjustment = MediaQuery.of(context).size.width - 48.0 - 64.0;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Altitude App')),
      body: SafeArea(
        child: ListView.builder(
            itemExtent: 190.0,
            itemCount: _dataAdabList.length,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {
                  Navigator.of(context).push(PageRouteBuilder(
                      fullscreenDialog: true,
                      transitionDuration: Duration(milliseconds: 500),
                      pageBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation) {
                        return DetailScreen(
                            dataAdab: DataAdab(
                                title: _dataAdabList[index].title,
                                description: _dataAdabList[index].description,
                                image: _dataAdabList[index].image,
                                matertialColor:
                                    _dataAdabList[index].matertialColor));
                      },
                      transitionsBuilder: (BuildContext context,
                          Animation<double> animation,
                          Animation<double> secondaryAnimation,
                          Widget child) {
                        return FadeTransition(
                          opacity: animation,
                          child: child,
                        );
                      }));
                },
                child: Card(
                  margin: EdgeInsets.fromLTRB(24.0, 16.0, 24.0, 8.0),
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0)),
                  clipBehavior: Clip.antiAlias,
                  child: Stack(
                    children: [
                      Hero(
                        tag: 'background' + _dataAdabList[index].title,
                        child: Container(
                          color: _dataAdabList[index].matertialColor,
                        ),
                      ),
                      Positioned(
                        top: 0.0,
                        left: 0.0,
                        right: 0.0,
                        child: Hero(
                          tag: 'image' + _dataAdabList[index].title,
                          child: Image.network(_dataAdabList[index].image,
                              height: 80.0, fit: BoxFit.fitWidth),
                        ),
                      ),
                      Positioned(
                        top: 96.0,
                        left: 24.0,
                        width: _screenWidthAdjustment,
                        child: Hero(
                          tag: 'text' + _dataAdabList[index].title,
                          child: Material(
                            color: Colors.transparent,
                            child: Text(
                              _dataAdabList[index].title,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  fontSize: 24.0, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 16.0,
                        top: 120.0,
                        width: _screenWidthAdjustment,
                        child: Hero(
                          tag: 'subtitle' + _dataAdabList[index].title,
                          child: Material(
                            color: Colors.transparent,
                            child: Text(
                              _dataAdabList[index].description,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
