import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FirstRoute(),
    );
  }
}

class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Авторизация'),
        backgroundColor: Colors.grey,
      ),
      body: Center(
        
        child: Column(
          children: [
            Container(
              width: 210,
              margin: const EdgeInsets.only(bottom: 20),
              child: TextFormField(
              maxLines: 1,
              minLines: 1,
              decoration: const InputDecoration(
                hintText: 'Введите логин',
                
              ),
              ),
            ),
             Container(
              width: 210,
              margin: const EdgeInsets.only(bottom: 20),
              
              child: TextFormField(
              decoration: const InputDecoration(
              hintText: 'Введите пароль',
              ),
              obscureText: true,
              obscuringCharacter: '*',
              style: const TextStyle(fontSize: 16, color: Colors.blue),
              maxLines: 1,
              minLines: 1,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: ElevatedButton(
                child: const Text('Войти'),
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const fourRoute()),
              );
            }, 
              ),
            ),
            RichText(text: const TextSpan(
              text: 'или зарегистрируйтесь',
              
            )),
            
            Container(
              margin: const EdgeInsets.only(top: 10),

              child: ElevatedButton(
                
                child: const Text('Регистрация'),
                onPressed: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute(
                  )),
              );
            }
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Регистрация'),
        backgroundColor: Colors.grey,

      ),
       body: Center(
        
        child: Column(
          children: [
            Container(
              width: 210,
              margin: const EdgeInsets.only(bottom: 20),
              
              child: TextFormField(
              style: const TextStyle(fontSize: 22, color: Colors.blue),
              maxLines: 1,
              minLines: 1,
              decoration: const InputDecoration(
                hintText: 'Введите логин',
              ),
              ),
            ),
             Container(
              width: 210,
              margin: const EdgeInsets.only(bottom: 20),
               
              child: TextFormField(
              decoration: const InputDecoration(
              hintText: 'Введите пароль',
              ),
              obscureText: true,
              obscuringCharacter: '*',
              style: const TextStyle(fontSize: 22, color: Colors.blue),
              maxLines: 1,
              minLines: 1,
              ),
            ),
            Container(
              width: 210,
              margin: const EdgeInsets.only(bottom: 20),
               
              child: TextFormField(
              decoration: const InputDecoration(
              hintText: 'Введите никнейм',
              ),
              
              style: const TextStyle(fontSize: 22, color: Colors.blue),
              maxLines: 1,
              minLines: 1,
              ),
            ),
            Container(
              width: 210,
              margin: const EdgeInsets.only(bottom: 20),
               
              child: TextFormField(
              decoration: const InputDecoration(
              hintText: 'Введите почту',
              ),
               
              style: const TextStyle(fontSize: 22, color: Colors.blue),
              maxLines: 1,
              minLines: 1,
              ),
            ),
            ElevatedButton(
              child: const Text('Регистрация'),
              onPressed: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const ThirdRoute(
                )),
  );
}
            ),
          ],
        ),
      ),
        
        
    );
  }
  
}
class ThirdRoute extends StatelessWidget {
  const  ThirdRoute ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Вы успешно зарегистрирвоались, поздравляю!!!'),
        backgroundColor: Colors.green,
      ),
    );
  }
  }
class fourRoute extends StatelessWidget {
  const  fourRoute ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Вы успешно зашли, поздравляю!!!'),
        backgroundColor: Colors.green,
      ),
    );
  }
  }