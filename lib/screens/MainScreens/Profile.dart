import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController genderController = TextEditingController();
  TextEditingController dobController = TextEditingController();

  bool isEditingName = false;
  bool isEditingEmail = false;
  bool isEditingPhone = false;
  bool isEditingDob = false;
  bool isEditingGender = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "My Profile",
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    CircleAvatar(
                      radius: 40,
                      child: Icon(
                        Icons.person,
                        size: 32,
                      ),
                    )
                  ],
                ),
              ),
              _buildTextField(
                'Name',
                nameController,
                Icons.person,
                isEditingName,
              ),
              _buildTextField(
                'Email',
                emailController,
                Icons.email,
                isEditingEmail,
              ),
              _buildTextField(
                'Phone',
                phoneController,
                Icons.phone,
                isEditingPhone,
              ),
              _buildTextField(
                'Gender',
                genderController,
                Icons.person,
                isEditingGender,
              ),
              _buildTextField(
                'Date of Birth',
                dobController,
                Icons.cake,
                isEditingDob,
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(
                          child: ClipRRect(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 2, 26, 62),
                                  fixedSize: const Size(150, 50),
                                  shape: const RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16)))),
                              onPressed: () {
                                isEditingName = true;
                                isEditingDob = true;
                                isEditingEmail = true;
                                isEditingGender = true;
                                isEditingPhone = true;
                                setState(() {});
                              },
                              child: const Text(
                                "Edit Profile",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        )),
                  ),
                  Expanded(
                    child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(
                          child: ClipRRect(
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      const Color.fromARGB(255, 2, 26, 62),
                                  fixedSize: const Size(150, 50),
                                  shape: const RoundedRectangleBorder(
                                      side: BorderSide(color: Colors.black),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(16)))),
                              onPressed: () {
                                isEditingDob = false;
                                isEditingEmail = false;
                                isEditingGender = false;
                                isEditingName = false;
                                isEditingPhone = false;
                                setState(() {});
                              },
                              child: const Text(
                                "Save Profile",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18),
                              ),
                            ),
                          ),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(
    String label,
    TextEditingController controller,
    IconData icon,
    bool isEditing,
    // VoidCallback? onEdit,
    // VoidCallback? onSave,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(14)),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller,
                enabled: isEditing,
                decoration: InputDecoration(
                  labelText: label,
                  prefixIcon: Icon(icon),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _editName() {
    setState(() {
      isEditingName = true;
    });
  }

  void _saveName() {
    setState(() {
      isEditingName = false;
    });
  }

  void _editEmail() {
    setState(() {
      isEditingEmail = true;
    });
  }

  void _saveEmail() {
    setState(() {
      isEditingEmail = false;
    });
  }

  void _editPhone() {
    setState(() {
      isEditingPhone = true;
    });
  }

  void _savePhone() {
    setState(() {
      isEditingPhone = false;
    });
  }

  void _editGender() {
    setState(() {
      isEditingGender = false;
    });
  }

  void _saveGender() {
    setState(() {
      isEditingGender = false;
    });
  }

  void _editDob() {
    setState(() {
      isEditingDob = true;
    });
  }

  void _saveDob() {
    setState(() {
      isEditingDob = false;
    });
  }
}
