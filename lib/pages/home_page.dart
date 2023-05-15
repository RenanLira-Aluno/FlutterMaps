import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Maps'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Center(
              child: SvgPicture.asset(
            'assets/images/user-circle.svg',
          )),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: 60,
                width: 200,
                child: ElevatedButton(onPressed: () {}, child: Text('Login')),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 60,
                width: 200,
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/maps');
                    },
                    child: Text('Mapa')),
              )
            ],
          )
        ],
      ),
    );
  }
}
