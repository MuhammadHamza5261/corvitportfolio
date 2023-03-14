import 'package:flutter/material.dart';
import 'package:awesome_notifications/awesome_notifications.dart';
class awesome extends StatelessWidget {
  const awesome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: awesomeSTF(),
    );
  }
}
///stf
class awesomeSTF extends StatefulWidget {
  const awesomeSTF({Key? key}) : super(key: key);

  @override
  State<awesomeSTF> createState() => _awesomeSTFState();
}

class _awesomeSTFState extends State<awesomeSTF> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Container(
              child: ElevatedButton(
                  onPressed: (){
                    AwesomeNotifications().isNotificationAllowed().then((isAllowed) async {
                      if (!isAllowed) {
                        // This is just a basic example. For real apps, you must show some
                        // friendly dialog box before call the request method.
                        // This is very important to not harm the user experience
                        AwesomeNotifications().requestPermissionToSendNotifications();
                      }else{
                        String localTimeZone = await AwesomeNotifications().getLocalTimeZoneIdentifier();

                        AwesomeNotifications().createNotification(
                            content: NotificationContent(
                                id: 10,
                                channelKey: 'basic_channel',
                                title: 'Hello Corvit' +Emojis.smile_alien + Emojis.emotion_beating_heart + Emojis.emotion_red_heart,
                                body: 'Are you a fluuter developer',
                                notificationLayout: NotificationLayout.BigPicture,
                                bigPicture: 'asset://Assists/Images/red.png',
                            ),
                            schedule: NotificationCalendar(second: 1, timeZone: localTimeZone, preciseAlarm: true)

                      );
                      }
                    });
                  },
                  child: Text('Push Notification'),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

