import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        title: "Snacks Bar",
        home: Scaffold(
          backgroundColor: Colors.white60,
          appBar: AppBar(
            backgroundColor: Colors.greenAccent,
            title: Text(
              'Snack Bar',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 23,
                  fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            elevation: 0.0,
            leading: Icon(
              Icons.menu,
              size: 19,
              color: Colors.black,
            ),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Get.snackbar(
                      "SnackBar Title,", "This Will Be SnackBar Message",
                      snackPosition: SnackPosition.TOP,
                      backgroundColor: Colors.black54,
                      colorText: Colors.white,
                      //   backgroundGradient: LinearGradient(colors: [Colors.greenAccent,Colors.purpleAccent,Colors.blueGrey]),
                      icon: IconButton(
                          onPressed: () {
                            print('You Pressed a block');
                          },
                          icon: Icon(
                            Icons.sports_kabaddi,
                            size: 19,
                            color: Colors.orange,
                          )),
                      borderRadius: 20,
                      barBlur: 2,
                      animationDuration: Duration(milliseconds: 3000),
                      //To side the notification bar
                      isDismissible: true,
                      showProgressIndicator: true,
                      progressIndicatorBackgroundColor: Colors.orangeAccent,
                      progressIndicatorValueColor:
                          AlwaysStoppedAnimation(Colors.white60),
                      dismissDirection: SnackDismissDirection.HORIZONTAL,
                      forwardAnimationCurve: Curves.bounceOut,
                      duration: Duration(milliseconds: 9000),
                      overlayBlur: 5,
                      overlayColor: Colors.black54,
                      mainButton: TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.reply,
                          size: 20,
                          color: Colors.orange,
                        ),
                      ),
                      // userInputForm: Form(child: Row(
                      //   children: [
                      //     Expanded(child: TextField(style: TextStyle(color: Colors.deepPurple,fontSize: 20),))
                      //   ],
                      // )),
                    );
                  },
                  child: Text(
                   'Snack Button',style: TextStyle(
                    color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold
                  ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
