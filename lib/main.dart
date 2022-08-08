import 'package:flutter/material.dart';
import 'package:social_media_flutter/social_media_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Link In Bio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [Color(0xffe99dcb), Color(0xff8099e9)],),
        ),
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top:20.0),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        CircleAvatar(
                          radius: 50,
                          backgroundImage: NetworkImage(
                            // replace this image with your image
                            // here I have used Network Image you can go with Asset Image
                            'https://images.unsplash.com/photo-1555952517-2e8e729e0b44?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjd8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'John Doe', // Your Name
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 28,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          'Passionate Flutter Developer', // Your short bio (optional)
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.italic,
                            fontSize: 20,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 10,),
                Container(
                  height: 490,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color(0xff171430),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.vertical(top: Radius.circular(50.0),),
                  ),
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 60,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.pink,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SocialWidget(
                              placeholderText: 'john_codes',
                              iconData: SocialIconsFlutter.instagram,
                              iconColor: Colors.white,
                              iconSize: 24,
                              link: 'https://www.instagram.com/', //add your link
                              placeholderStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Container(
                          height: 60,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SocialWidget(
                              placeholderText: 'johndoe',
                              iconData: SocialIconsFlutter.github,
                              iconColor: Colors.black,
                              iconSize: 24,
                              link: 'https://github.com/', //add your link
                              placeholderStyle: const TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Container(
                          height: 60,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.blueAccent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SocialWidget(
                              placeholderText: 'johndoecodes',
                              iconData: SocialIconsFlutter.linkedin_box,
                              iconColor: Colors.white,
                              iconSize: 24,
                              link: 'https://www.linkedin.com/', //add your link
                              placeholderStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Container(
                          height: 60,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.lightBlue,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SocialWidget(
                              placeholderText: 'johndoeofficial',
                              iconData: SocialIconsFlutter.twitter,
                              iconColor: Colors.white,
                              iconSize: 24,
                              link: 'https://twitter.com/', //add your link
                              placeholderStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Container(
                          height: 60,
                          width: 250,
                          decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: SocialWidget(
                              placeholderText: 'codehub',
                              iconData: SocialIconsFlutter.discord,
                              iconColor: Colors.white,
                              iconSize: 24,
                              link: 'https://discord.com/', //add your link
                              placeholderStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),

                        // You can add more buttons

                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
