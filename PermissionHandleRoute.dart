import 'dart:html';

import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class PermissionHandleRoute extends StatefulWidget {
  const PermissionHandleRoute({super.key});

  @override
  State<PermissionHandleRoute> createState() => _PermissionHandleRouteState();
}

class _PermissionHandleRouteState extends State<PermissionHandleRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Permission"),
        ),
        body: InkWell(
          child: InteractiveViewer(
              child: ListTile(
            leading: Icon(Icons.mic),
            title: Text("Microphones"),
            onTap: () async {
              PermissionStatus microphone_status =
                  await Permission.microphone.request();

              if (microphone_status == PermissionStatus.granted) {
                print("Done");
              }
              if (microphone_status == PermissionStatus.denied) {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Permission Required")));
              }
              if (microphone_status == PermissionStatus.permanentlyDenied) {
                openAppSettings();
              }
            },
          )),
        ));
  }
}
