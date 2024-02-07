import 'package:sopo/screens/login_screen.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _email = '';
  String _password = '';

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        SizedBox(
          width: 120,
          height: 120,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Image(image: AssetImage('img/logo.png')),
          ),
        ),
        const SizedBox(height: 10),
        Text('Al Faisal Darmawan'),
        Text('alfaisaldarmawan@gmail.com'),
        const SizedBox(height: 20),
        SizedBox(
          width: 200,
          child: ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.background,
                side: BorderSide.none,
                shape: const StadiumBorder()),
            child: const Text('Edit Profil'),
          ),
        ),
        const SizedBox(height: 30),
        const Divider(),
        const SizedBox(height: 10),
        ProfileMenuWidget(
            title: 'Settings', icon: Icons.settings, onPress: () {}),
        const SizedBox(height: 10),
        ProfileMenuWidget(
          title: 'informasi',
          icon: Icons.info,
          onPress: () {},
        ),
        const SizedBox(height: 10),
        ProfileMenuWidget(
            title: 'Sign Out',
            icon: Icons.logout,
            endIcon: false,
            onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
            }),
        const SizedBox(height: 10),
      ]),
    );
  }
}

class ProfileMenuWidget extends StatelessWidget {
  const ProfileMenuWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.onPress,
    this.endIcon = true,
  }) : super(key: key);

  final String title;
  final IconData icon;
  final VoidCallback onPress;
  final bool endIcon;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: onPress,
      leading: Container(
        width: 40,
        height: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Icon(icon),
      ),
      title: Text(title),
      trailing: endIcon
          ? Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.grey.withOpacity(0.1),
              ),
              child: const Icon(Icons.settings))
          : null,
    );
  }
}
