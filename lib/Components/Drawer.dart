import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../Helpers/naigationHelper.dart';
import '../Pages/Colors/appcolors.dart';

class DrawerComponent2 extends StatelessWidget {
  DrawerComponent2({super.key});
  final appColors = AppColors();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.70, //set dawer width
      elevation: 3,
      child: Material(
        color: appColors.white,
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Container(
                child: InkWell(
                  onTap: () {
                    // Navigator.of(context).push(MaterialPageRoute(builder: (context) => Profile()));
                  },
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 150,
                        height: 150,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 3, color: Colors.red),
                        ),
                        child: ClipOval(
                          child: Image.asset(
                            'icons/user.png',
                            fit: BoxFit.cover,
                            color: appColors.red,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Prince Z Makaza",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                      Text(
                        "zpmakaza@gmail.com",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),

            Divider(
              color: appColors.redAccent.withOpacity(0.5),
              height: 3,
              thickness: 2,
            ),

            SizedBox(
              height: 15,
            ),

            ListTile(
              leading: FaIcon(
                FontAwesomeIcons.question,
                size: 23,
                color: appColors.black,
              ),
              title: Text(
                'FAQ',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  // color: appColors.white,
                ),
              ),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => GeolocatorWidget()));
              },
            ),

            ListTile(
              leading: Container(
                height: 35,
                width: 30,
                child: Image.asset(
                  "icons/card.png",
                  fit: BoxFit.cover,
                  color: appColors.black,
                ),
              ),
              title: Text(
                'My Payments',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  // color: appColors.white,
                ),
              ),
              onTap: () {
                // Helpers.temporaryNavigator(context, TripsTab());
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => AboutUs()));
              },
            ),

            ListTile(
              leading: Container(
                height: 35,
                width: 30,
                child: Image.asset(
                  "icons/hoyo.png",
                  fit: BoxFit.cover,
                  color: appColors.black,
                ),
              ),
              title: Text(
                'Rewards',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  // color: appColors.white,
                ),
              ),
              onTap: () {
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => ClientMany()));
              },
            ),
            ListTile(
              leading: Container(
                height: 35,
                width: 30,
                child: Image.asset(
                  "icons/rewards.png",
                  fit: BoxFit.cover,
                ),
              ),
              title: Text(
                'Premium',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  // color: appColors.white,
                ),
              ),
              onTap: () {
                // Helpers.temporaryNavigator(context, Vehicles());
                // Navigator.of(context).push(MaterialPageRoute(builder: (context) => AboutUs()));
              },
            ),

            Divider(
              color: appColors.redAccent.withOpacity(0.5),
              height: 3,
              thickness: 2,
            ),
            Expanded(
                child: SizedBox(
              child:             Column(
              children: <Widget>[
                Text(
                  'Contact Us: ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: appColors.redAccent,
                    fontSize: 15,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      IconButton(
                        onPressed: (){},
                        icon: FaIcon(FontAwesomeIcons.whatsapp, color: appColors.green),
                      ),
            
                      IconButton(
                          onPressed: (){},
                          icon: Icon(Icons.sms, color: appColors.black,)
                      ),
            
                      IconButton(
                        onPressed: (){},
                        icon:  FaIcon(FontAwesomeIcons.twitter, color: appColors.blue,),
                      ),
            
                    ],
                  ),
                )
              ],
            ),

            )),

            // Divider(
            //   color: appColors.grey[80],
            //   height: 3,
            //   thickness: 2,
            // ),

            ListTile(
              leading: Icon(Icons.logout_rounded, color: appColors.redAccent,),
              title: Text(
                'Log Out',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: appColors.redAccent,
                ),
              ),
              onTap: () {
                // _auth.signOut();
              },
            ),
          ],
        ),
      ),
    );
  }
}
