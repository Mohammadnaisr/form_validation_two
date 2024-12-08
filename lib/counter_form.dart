// import 'package:flutter/material.dart';

// class Counterform extends StatelessWidget {
//   Widget build(BuildContext context) {
//     body:
//     Padding(
//       padding: const EdgeInsets.all(10.0),
//       child: Column(
//         children: [
//           TextFormField(
//             autovalidateMode: AutovalidateMode.onUnfocus,
//             decoration: InputDecoration(
//                 labelText: "Username",
//                 border: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(20.0),
//                 )),
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return "please Enter a Username";
//               } else {
//                 return null;
//               }
//             },
//           ),
//           const SizedBox(
//             height: 20.0,
//           ),
//           TextFormField(
//             autovalidateMode: AutovalidateMode.onUnfocus,
//             decoration: InputDecoration(
//                 labelText: "Email",
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(20.0))),
//             validator: (value) {
//               if (value!.isEmpty) {
//                 return "Please Enter Email";
//               } else {
//                 return null;
//               }
//             },
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';

class CounterForm extends StatefulWidget {
  const CounterForm({super.key});

  @override
  State<CounterForm> createState() => _CounterFormState();
}

class _CounterFormState extends State<CounterForm> {
  final _formKey = GlobalKey<FormState>(); // Key to manage the form state

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter Form")),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Form(
          key: _formKey, // Assign the form key
          child: Column(
            children: [
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a Username";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20.0),
              TextFormField(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: InputDecoration(
                  labelText: "Email",
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter an Email";
                  } else if (!RegExp(
                          r"^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$")
                      .hasMatch(value)) {
                    return "Please enter a valid Email";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    // Validation passed
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text("Form submitted successfully!")),
                    );
                  } else {
                    // Validation failed
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text("Please fix the errors in the form")),
                    );
                  }
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
