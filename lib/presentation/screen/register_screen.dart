import 'package:flutter/material.dart';
import 'package:my_quiz_app/damein/madels/UserData.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();

  void _onSubmit() {
    final name = nameController.text.trim();
    final lastName = lastNameController.text.trim();

    if (name.isEmpty || lastName.isEmpty) {
      // Agar textfield bo'sh joylari bo'lsa habar berish
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Iltimos, barcha maydonlarni to\'ldiring'),
            showCloseIcon: true),
      );
    } else {
      // Agar barcha maydonlar to'ldirilgan bo'lsa malumotlarni singilton saqalsh va navigatsiya qilish
      UserData.instance.firstName = name;
      UserData.instance.lastName = lastName;

      Navigator.pushNamed(
        context,
        '/test',
        arguments: {'name': name, 'lastName': lastName},
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10.0,
        centerTitle: true,
        shadowColor: Colors.black,
        backgroundColor: Colors.amberAccent,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(16)),
        ),
        title: Text(
          "Rõyhattdan õtish",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: nameController,
              decoration: const InputDecoration(
                labelText: 'Ism',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            TextField(
              controller: lastNameController,
              decoration: const InputDecoration(
                labelText: 'Familya',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  elevation: 12,
                  backgroundColor: Colors.amberAccent,
                  shadowColor: Colors.black,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  minimumSize: const Size(double.infinity, 60),
                ),
                onPressed: _onSubmit,
                child: const Text(
                  "Davom etish",
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
