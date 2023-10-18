import 'package:covid_19_tacker/screen/authentication/signin_page_screen.dart';
import 'package:flutter/material.dart';

class SignupPageScreen extends StatefulWidget {
  const SignupPageScreen({Key? key}) : super(key: key);

  @override
  State<SignupPageScreen> createState() => _SignupPageScreenState();
}

class _SignupPageScreenState extends State<SignupPageScreen> {

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailOrPhoneController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool selected = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(
          left: 30,
          right: 30,
        ),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(

        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              SizedBox(height: MediaQuery.of(context).size.height * 0.04,),

              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    onPressed: (){
                      Navigator.of(context).pop();
                    },
                    icon: Icon(Icons.arrow_back_ios)
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.03,),

              Center(
                child: Text("Create Your Account",
                  //textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    color: Color(0xff3B3A79),
                  ),
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

              ReUseAbleField(
                usernameController: usernameController,
              title: "Username",
                title1: "Enter Username",
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

              ReUseAbleField(
                usernameController: emailOrPhoneController,
                title: "Email / Phone Number",
                title1: "Enter Email Account or Phone Number",
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

              ReUseAbleField(
                usernameController: passwordController,
                title: "Password",
                title1: "Enter New Password",
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.001,),


              Row(
                children: [

                  Checkbox(
                      value: selected,
                      onChanged: (value){
                    setState(() {
                      selected = !selected;
                    });
                  }),

                  SizedBox(width: 4,),

                  Row(
                    children: [
                      Text("I agree with",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 14,
                           color: Colors.black54
                        ),
                      ),

                      SizedBox(width: 2,),

                      Text("Privacy Policy",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Color(0xff3B3A79)
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

              InkWell(
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SigninPageScreen()));
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Successfully Sign Up")));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Color(0xff3B3A79)
                  ),
                  child: Center(
                    child: Text("Sign Up",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 18
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.03,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: (){},
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage("images/w2.png",),),
                          border: Border.all(
                            width: 3,
                            color: Colors.grey.withOpacity(0.5),
                          )
                      ),
                    ),
                  ),

                  SizedBox(width: 10,),

                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(image: AssetImage("images/w3.png")),
                          border: Border.all(
                            width: 3,
                            color: Colors.grey.withOpacity(0.5),
                          )
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.02,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text("Already have an account?",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey[500],
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  SizedBox(width: 10,),

                  InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SigninPageScreen()));
                    },
                    child: Text("Sign In",
                      style: TextStyle(
                        fontSize: 18,
                        color: Color(0xff3B3A79),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: MediaQuery.of(context).size.height * 0.1,),

            ],
          ),
        ),
      ),
    );
  }
}

class ReUseAbleField extends StatelessWidget {
   ReUseAbleField({
    super.key,
    required this.usernameController, required this.title, required this.title1
  });


  String? title;
  String? title1;
  final TextEditingController usernameController;

  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("$title",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
              color: Color(0xff3B3A79)
          ),
        ),

        SizedBox(height: MediaQuery.of(context).size.height * 0.01,),

        TextFormField(
          controller: usernameController,
          textInputAction: TextInputAction.next,

          decoration: InputDecoration(

              hintText: "$title1",
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.grey,
                  )
              ),

              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(
                    width: 2,
                    color: Colors.grey,
                  )
              )
          ),
        ),
      ],
    );
  }
}
