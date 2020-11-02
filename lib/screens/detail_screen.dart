import 'package:adab_app/datas/data_adab.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  final DataAdab dataAdab;

  const DetailScreen({Key key, this.dataAdab}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  DataAdab _dataAdab;
  double _screenWidht;

  @override
  void initState() {
    _dataAdab = widget.dataAdab;
    super.initState();
  }

  @override
  void didChangeDependencies() {
    _screenWidht = MediaQuery.of(context).size.width;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${_dataAdab.title}'),
        backgroundColor: _dataAdab.matertialColor,
      ),
      body: SafeArea(
        child: Stack(
          children: [
            Hero(
              tag: 'background' + _dataAdab.title,
              child: Container(
                color: _dataAdab.matertialColor,
              ),
            ),
            Positioned(
              top: 0.0,
              left: 0.0,
              right: 0.0,
              height: 230.0,
              child: Hero(
                tag: 'image' + _dataAdab.title,
                child: Image.network(_dataAdab.image,
                    height: 80.0, fit: BoxFit.fitWidth),
              ),
            ),
            Positioned(
              top: 246.0,
              left: 16.0,
              width: _screenWidht - 64.0,
              child: Hero(
                tag: 'text' + _dataAdab.title,
                child: Material(
                  color: Colors.transparent,
                  child: Text(
                    _dataAdab.title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 16.0,
              top: 288.0,
              width: _screenWidht - 64.0,
              child: Hero(
                tag: 'subtitle' + _dataAdab.title,
                child: Material(
                  color: Colors.transparent,
                  child: Text(_dataAdab.description),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
