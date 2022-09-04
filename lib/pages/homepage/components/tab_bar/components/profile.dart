import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> with TickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 1),
    vsync: this,
  )..forward();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white.withOpacity(0.9),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.bottomCenter,
                children: [
                  Image(
                    height: MediaQuery.of(context).size.height / 3,
                    fit: BoxFit.cover,
                    // image: const NetworkImage(
                    //     'https://images.unsplash.com/photo-1485160497022-3e09382fb310?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fG1vdW50YWluc3xlbnwwfHwwfHw%3D&w=1000&q=80'),
                    image: const AssetImage('assets/images/logo2.jpg'),
                  ),
                  Positioned(
                      bottom: -50.0,
                      child: SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(0.0, 1),
                          end: Offset.zero,
                        ).animate(CurvedAnimation(
                          parent: _controller,
                          curve: Curves.decelerate,
                        )),
                        child: CircleAvatar(
                          radius: 80,
                          backgroundColor: Colors.white.withOpacity(0.5),
                          child: const CircleAvatar(
                            radius: 75,
                            // backgroundImage: NetworkImage(
                            //     'https://images.unsplash.com/photo-1485160497022-3e09382fb310?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fG1vdW50YWluc3xlbnwwfHwwfHw%3D&w=1000&q=80'),
                            backgroundImage:
                                AssetImage('assets/images/logo2.jpg'),
                          ),
                        ),
                      )),
                  Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        color: Colors.black54,
                        child: IconButton(
                          color: Colors.white70,
                          // hoverColor: Colors.blue,
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            CupertinoIcons.back,
                          ),
                        ),
                      )),
                ]),
            const SizedBox(
              height: 45,
            ),
            SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.0, 4),
                end: Offset.zero,
              ).animate(CurvedAnimation(
                parent: _controller,
                curve: Curves.decelerate,
              )),
              child: const ListTile(
                title: Center(child: Text('Testing Shop')),
                // subtitle: Center(child: Text('Mwimbili Hospital ')),
              ),
            ),
            SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.0, 3),
                end: Offset.zero,
              ).animate(CurvedAnimation(
                parent: _controller,
                curve: Curves.decelerate,
              )),
              child: const ListTile(
                title: Text('About me '),
                subtitle: Text(
                  'dmts',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.0, 5),
                end: Offset.zero,
              ).animate(CurvedAnimation(
                parent: _controller,
                curve: Curves.decelerate,
              )),
              child: const ListTile(
                title: Text('dmts'),
                subtitle: Text('dmts ', style: TextStyle(fontSize: 14)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.0, 7),
                end: Offset.zero,
              ).animate(CurvedAnimation(
                parent: _controller,
                curve: Curves.decelerate,
              )),
              child: const ListTile(
                title: Text('hello'),
                subtitle: Text('hello', style: TextStyle(fontSize: 14)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.0, 9),
                end: Offset.zero,
              ).animate(CurvedAnimation(
                parent: _controller,
                curve: Curves.decelerate,
              )),
              child: const ListTile(
                title: Text('Phone'),
                subtitle: Text('Phone', style: TextStyle(fontSize: 14)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.0, 11),
                end: Offset.zero,
              ).animate(CurvedAnimation(
                parent: _controller,
                curve: Curves.decelerate,
              )),
              child: const ListTile(
                title: Text('Email'),
                subtitle: Text('Email', style: TextStyle(fontSize: 14)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.0, 13),
                end: Offset.zero,
              ).animate(CurvedAnimation(
                parent: _controller,
                curve: Curves.decelerate,
              )),
              child: const ListTile(
                title: Text('Gender'),
                subtitle: Text('hello ', style: TextStyle(fontSize: 14)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.0, 13),
                end: Offset.zero,
              ).animate(CurvedAnimation(
                parent: _controller,
                curve: Curves.decelerate,
              )),
              child: const ListTile(
                title: Text('District'),
                subtitle: Text('hello', style: TextStyle(fontSize: 14)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0.0, 13),
                end: Offset.zero,
              ).animate(CurvedAnimation(
                parent: _controller,
                curve: Curves.decelerate,
              )),
              child: const ListTile(
                title: Text('Region'),
                subtitle: Text('hello', style: TextStyle(fontSize: 14)),
              ),
            ),
            // const SizedBox(
            //   height: 20,
            // ),
          ],
        ),
      ),
    );
  }
}
