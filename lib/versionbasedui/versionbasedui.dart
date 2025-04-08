import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';

class VersionBasedWidget extends StatefulWidget {
  @override
  _VersionBasedWidgetState createState() => _VersionBasedWidgetState();
}

class _VersionBasedWidgetState extends State<VersionBasedWidget> {
  String _appVersion = "0.0.0"; // Default Version

  @override
  void initState() {
    super.initState();
    fetchAppVersion();
  }

  // ✅ Function to Fetch App Version
  void fetchAppVersion() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      _appVersion = packageInfo.version; // Get app version
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("App Version: $_appVersion")),
      body: Center(
        child: _appVersion == "2.0.0" // ✅ Check Version
            ? NewFeatureWidget() // Naye Version Ka Widget
            : OldFeatureWidget(), // Purane Version Ka Widget
      ),
    );
  }
}

// ✅ New Version Widget
class NewFeatureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("🚀 New Feature Enabled!", style: TextStyle(fontSize: 20));
  }
}

// ✅ Old Version Widget
class OldFeatureWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("⚠ Old Version - Update Required", style: TextStyle(fontSize: 20));
  }
}
