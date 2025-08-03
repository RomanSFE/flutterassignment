import 'package:flutter/material.dart';

class LiveTest extends StatelessWidget {
  const LiveTest({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController ageController = TextEditingController();
    TextEditingController salaryController = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Employe', style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.w600)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 3.0),
              child: TextField(
                controller: nameController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Name',
                  hintText: 'Enter your name here',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 3.0),
              child: TextField(
                controller: ageController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Age',
                  hintText: 'Enter your age here',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 3.0),
              child: TextField(
                controller: salaryController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Salary',
                  hintText: 'Enter your salary here',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 1),
                  ),
                  hintStyle: TextStyle(
                    color: Colors.grey,
                    fontStyle: FontStyle.italic,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            
            SizedBox(height: 30),
            ElevatedButton(
            onPressed: () {
              // Handle form submission
                if(nameController.text.isNotEmpty && salaryController.text.isNotEmpty && ageController.text.isNotEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Form submitted successfully!'))
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Please fill in all fields.'))
                  );
                }
            },
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              textStyle: TextStyle(fontSize: 16, color: Colors.black45),
              backgroundColor: const Color.fromARGB(255, 240, 243, 240), // custom background color
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20), // rounded corners
              ),
            ),
            child: Text('Add Employee'),
          ),

          ],
        ),
      ),
    );
  }
}
