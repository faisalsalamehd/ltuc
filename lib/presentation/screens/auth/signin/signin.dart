import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:ltuc/core/utils/extensions/validations_metod.dart';
import 'package:ltuc/presentation/screens/auth/signin/signin_provider.dart';
import 'package:ltuc/presentation/widgets/primary_button/primary_button.dart';
import 'package:ltuc/presentation/widgets/text_field.dart';
import 'package:provider/provider.dart';

class Signin extends StatelessWidget {
  Signin({super.key});
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign In'),
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
                    'Welcome Back',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 16),
                Text('Email', style: TextStyle(fontSize: 16)),
                SizedBox(height: 8),
                MainTextField(
                  controller: emailController,
                  hint: 'Enter your email',
                  textInputType: TextInputType.emailAddress,
                  formatter: [
                    FilteringTextInputFormatter.deny(
                      RegExp(r'\s'),
                    ), // يمنع أي نوع من المسافات
                  ],
                  validator: (value) => ValidationsMetod.validateEmail(value),
                  prefixIcon: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 8),
                    child: Icon(Icons.email, color: Colors.grey),
                  ),
                ), // Email TextFormField
                SizedBox(height: 16),
                Text('Password', style: TextStyle(fontSize: 16)),
                SizedBox(height: 8),
                // Password TextFormField
                MainTextField(
                  controller: passwordController,
                  hint: 'Enter your Password',
                  textInputType: TextInputType.visiblePassword,
                  obscureText: !context
                      .watch<SigninProvider>()
                      .isPasswordVisible,
                  prefixIcon: Padding(
                    padding: const EdgeInsetsDirectional.only(start: 8),
                    child: Icon(Icons.lock, color: Colors.grey),
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      context.watch<SigninProvider>().isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off,
                      color: Colors.grey,
                    ),
                    onPressed: () {
                      context.read<SigninProvider>().togglePasswordVisibility();
                    },
                  ),
                ),
                SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          activeColor: Color(0xFF0D5EF9),
                          checkColor: Colors.white,
                          value: context
                              .watch<SigninProvider>()
                              .isRememberMeChecked,
                          onChanged: (value) {
                            context.read<SigninProvider>().toggleRememberMe(
                              value!,
                            );
                          },
                        ),
                        Text('Remember Me'),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'Forgot Password?',
                        style: TextStyle(
                          color: Color(0xFF0D5EF9),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                PrimaryButton(
                  onTap: () {
                    if (!formKey.currentState!.validate()) {
                      // Handle sign-in logic here
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Please fix the errors'),
                          backgroundColor: Colors.red,
                        ),
                      );
                      return;
                    }
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Sign in successful'),
                        backgroundColor: Colors.green,
                      ),
                    );
                  },

                  title: 'Sign In',
                ),
                SizedBox(height: 16),
                InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, '/signup');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an account? '),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          color: Color(0xFF0D5EF9),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
