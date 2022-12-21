import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
        centerTitle: true,
        backgroundColor: Colors.black38,
      ),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(16.0),
          constraints: const BoxConstraints.expand(
            width: 330,
            height: 450,
          ),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                  color: Colors.white24,
                  offset: Offset(0, 2),
                  spreadRadius: 5,
                  blurRadius: 10
              ),
            ],
            image: DecorationImage(
              image: NetworkImage("https://guardian.ng/wp-content/uploads/2022/05/IMDb-Doctor-Strange.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.srcOver),
            ),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          child: Stack(
            children: [
              Text("Editors Choice",
                  style: TextStyle(color: Colors.white70, fontSize: 18)),
              Positioned(
                top: 20.0,
                child: Text("Doctor Strange: MoM",
                    style: TextStyle(color: Colors.white, fontSize: 22)),
              ),
              Positioned(
                right: 0,
                bottom: 20,
                child: Text("2022 Movie of the Year",
                    style: TextStyle(color: Colors.white70, fontSize: 16)),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                child: Text("CodeBreaker",
                    style: TextStyle(color: Colors.white70, fontSize: 16)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
