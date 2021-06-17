import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with SingleTickerProviderStateMixin {

  Animation<double>? _animation;
  AnimationController? _animationController;
  String pionnersUrl = 'https://pioneers-d9ec1.web.app/#/';
  String tbsbAppUrl = 'https://play.google.com/store/apps/details?id=com.project.TBSB';
  String pkRetailsUrl = 'https://play.google.com/store/apps/details?id=com.pkretails.android';
  String githubUrl = 'https://github.com/Vignnesh07';
  String linkedinUrl = 'https://www.linkedin.com/in/vignnesh-ravindran-1559271a9';
  String email = 'ravin.vignnesh@gmail.com'; 

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animation = CurvedAnimation(
      parent: _animationController!, 
      curve: Curves.easeIn,
    );
    _animationController!.addStatusListener((status){
      if(status == AnimationStatus.completed){
        _animationController!.stop();
      }
    });
    _animationController!.forward();
  }

  @override
  void dispose() { 
    _animationController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/pictures/bg1.jpg'),
            colorFilter: ColorFilter.mode(
              Colors.black26, 
              BlendMode.darken
            ),
            fit: BoxFit.cover,
          )
        ),
        child: Center(
          child: FadeTransition(
            opacity: _animation!,
            child: Container(
              width: 350,         // original width: 334
              height: 620,        // original height: 572
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)
                ),
                elevation: 20.0,
                color: Colors.white70,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    
                    SizedBox(height: 40.0),
                  
                    CircleAvatar(
                      maxRadius: 50.0,
                      minRadius: 50.0,
                      backgroundImage: AssetImage('assets/pictures/profilepic.jpg'),
                    ),
                  
                    SizedBox(height: 20.0),
                  
                    Text(
                      "Vignnesh Ravindran",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontFamily: 'FiraSans',
                      ),
                    ),
                  
                    SizedBox(height: 30.0),
                  
                    Divider(height: 1.0, color: Colors.grey[600]),
                  
                    SizedBox(height: 30.0),
                  
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: ListTile(
                            dense: true,
                            enabled: true,
                            enableFeedback: true,
                            minVerticalPadding: 5,
                            tileColor: Color(0xFF6E73E6),
                            hoverColor: Colors.deepPurple[100],
                            visualDensity: VisualDensity.adaptivePlatformDensity,
                            contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            title: Text(
                              "P  I  O  N  N  E  E  R  S",
                              style: TextStyle(
                                fontSize: 9,
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Container(
                              height: 35,
                              width: 35,
                              padding: EdgeInsets.only(left: 18.0),
                              child: Image.asset(
                                'assets/pictures/pionneers logo.png',
                                fit: BoxFit.cover
                              ),
                            ),
                            onTap: () async {
                              if (await canLaunch(pionnersUrl)){
                                await launch(
                                  pionnersUrl,
                                  forceSafariVC: false,
                                  forceWebView: false,
                                );
                              }
                  
                              else {
                                throw 'Could not launch';
                              }
                            },
                          ),
                        ),
                  
                        SizedBox(height: 8.0),
                  
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: ListTile(
                            dense: true,
                            enabled: true,
                            enableFeedback: true,
                            minVerticalPadding: 5,
                            tileColor: Color(0xFF786EE6),
                            hoverColor: Colors.deepPurple[200],
                            visualDensity: VisualDensity.adaptivePlatformDensity,
                            contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            title: Text(
                              "T  B  S  B    A  P  P",
                              style: TextStyle(
                                fontSize: 9,
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Icon(
                              FeatherIcons.play,
                              color: Colors.white,
                              size: 16.0,
                            ),
                            onTap: () async {
                              if (await canLaunch(tbsbAppUrl)){
                                await launch(
                                  tbsbAppUrl,
                                  forceSafariVC: false,
                                  forceWebView: false,
                                );
                              }
                  
                              else {
                                throw 'Could not launch';
                              }
                            },
                          ),
                        ),
                  
                        SizedBox(height: 8.0),
                  
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: ListTile(
                            dense: true,
                            enabled: true,
                            enableFeedback: true,
                            minVerticalPadding: 5,
                            tileColor: Color(0xFF866EE6),
                            hoverColor: Colors.deepPurple[400],
                            visualDensity: VisualDensity.adaptivePlatformDensity,
                            contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            title: Text(
                              "P  K    R  E  T  A  I  L  S    A  P  P",
                              style: TextStyle(
                                fontSize: 9,
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Icon(
                              FeatherIcons.play,
                              color: Colors.white,
                              size: 16.0,
                            ),
                            onTap: () async {
                              if (await canLaunch(pkRetailsUrl)){
                                await launch(
                                  pkRetailsUrl,
                                  forceSafariVC: false,
                                  forceWebView: false,
                                );
                              }
                  
                              else {
                                throw 'Could not launch';
                              }
                            },
                          ),
                        ),
                  
                        SizedBox(height: 8.0),
                  
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: ListTile(
                            dense: true,
                            enabled: true,
                            enableFeedback: true,
                            minVerticalPadding: 5,
                            tileColor: Color(0xFF9C6EE6),
                            hoverColor: Colors.deepPurple[500],
                            visualDensity: VisualDensity.adaptivePlatformDensity,
                            contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            title: Text(
                              "G  I  T  H  U  B",
                              style: TextStyle(
                                fontSize: 9,
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Icon(
                              FeatherIcons.github,
                              color: Colors.white,
                              size: 16.0,
                            ),
                            onTap: () async {
                              if (await canLaunch(githubUrl)){
                                await launch(
                                  githubUrl,
                                  forceSafariVC: false,
                                  forceWebView: false,
                                );
                              }
                  
                              else {
                                throw 'Could not launch';
                              }
                            },
                          ),
                        ),
                  
                        SizedBox(height: 8.0),
                  
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 30.0),
                          child: ListTile(
                            dense: true,
                            enabled: true,
                            enableFeedback: true,
                            minVerticalPadding: 5,
                            tileColor: Color(0xFFB16EE6),
                            hoverColor: Colors.deepPurple[600],
                            visualDensity: VisualDensity.adaptivePlatformDensity,
                            contentPadding: EdgeInsets.symmetric(horizontal: 25.0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                            ),
                            title: Text(
                              "L  I  N  K  E  D  I  N",
                              style: TextStyle(
                                fontSize: 9,
                                color: Colors.white,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            trailing: Icon(
                              FeatherIcons.linkedin,
                              color: Colors.white,
                              size: 16.0,
                            ),
                            onTap: () async {
                              if (await canLaunch(linkedinUrl)){
                                await launch(
                                  linkedinUrl,
                                  forceSafariVC: false,
                                  forceWebView: false,
                                );
                              }
                  
                              else {
                                throw 'Could not launch';
                              }
                            },
                          ),
                        ),
                      ],
                    ),

                    SizedBox(height: 30.0),
                  
                    Divider(height: 1.0, color: Colors.grey[800]),

                    SizedBox(height: 30.0),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal:30.0),
                      child: RichText(
                        text: TextSpan(
                          text: "Should you need any further information, please do not hesitate to ",
                          children: [
                            TextSpan(
                              text: 'contact me.',
                              recognizer: TapGestureRecognizer()..onTap = () async {
                                final url = 'mailto:$email?subject=${Uri.encodeFull('Personal Inquiry')}&body=${Uri.encodeFull('')}';
                                if (await canLaunch(url)){
                                  await launch(url);
                                }
                    
                                else {
                                  throw 'Could not launch';
                                }
                              },
                              style: TextStyle(
                                color: Colors.orange[900],
                                fontSize: 14.0,
                                fontFamily: 'FiraSans',
                                decoration: TextDecoration.underline,
                                decorationColor: Colors.orange[900],
                              )
                            )
                          ],
                          style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: 'FiraSans',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      )
    );
  }
}