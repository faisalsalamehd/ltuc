import 'package:flutter/material.dart';
import 'package:ltuc/presentation/widgets/primary_button/primary_button.dart';
import 'package:ltuc/presentation/widgets/text_field.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  bool isPasswordVisible = false;
  bool isRememberMeChecked = false;
  TextEditingController fullNameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up', style: TextStyle(color: Colors.black)),
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        centerTitle: true,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32),
                Center(child: Image.asset('assets/png/nom.png')),
                SizedBox(height: 16),
                Center(
                  child: Text(
                    'Create Account',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 16),
                Text('Full Name', style: TextStyle(fontSize: 16)),
                SizedBox(height: 8),

                // Full Name TextFormField
                MainTextField(
                  controller: fullNameController,
                  hint: 'Enter your full name',
                  textInputType: TextInputType.name,
                  prefixIcon: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 8),
                    child: Icon(Icons.person, color: Colors.grey),
                  ),
                ),
                SizedBox(height: 16),
                Text('Email', style: TextStyle(fontSize: 16)),
                SizedBox(height: 8),

                // Email TextFormField
                MainTextField(
                  controller: emailController,
                  hint: 'Enter your email',
                  textInputType: TextInputType.emailAddress,
                  prefixIcon: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 8),
                    child: Icon(Icons.email, color: Colors.grey),
                  ),
                ),
                SizedBox(height: 16),
                Text('Phone Number', style: TextStyle(fontSize: 16)),
                SizedBox(height: 8),

                // Phone Number TextFormField
                MainTextField(
                  controller: phoneController,
                  hint: 'Enter your phone number',
                  textInputType: TextInputType.phone,
                  prefixIcon: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 8),
                    child: Icon(Icons.phone, color: Colors.grey),
                  ),
                ),
                SizedBox(height: 16),
                Text('Password', style: TextStyle(fontSize: 16)),
                SizedBox(height: 8),

                // Password TextFormField
                MainTextField(
                  controller: passwordController,
                  hint: 'Enter your password',
                  textInputType: TextInputType.visiblePassword,
                  obscureText: !isPasswordVisible,
                  prefixIcon: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 8),
                    child: Icon(Icons.lock, color: Colors.grey),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      setState(() {
                        isPasswordVisible = !isPasswordVisible;
                      });
                    },
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  children: [
                    Checkbox(
                      value: isRememberMeChecked,
                      onChanged: (value) {
                        setState(() {
                          isRememberMeChecked = value!;
                        });
                      },
                    ),
                    Text('Remember Me'),
                  ],
                ),
                SizedBox(height: 32),
                PrimaryButton(
                  onTap: () {
                    if (formKey.currentState!.validate()) {
                      // Handle sign up
                    }
                  },
                  title: 'Sign Up',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
