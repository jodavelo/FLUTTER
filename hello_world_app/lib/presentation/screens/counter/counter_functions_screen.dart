import 'package:flutter/material.dart';

class CounterFunctionsScreen extends StatefulWidget {
  const CounterFunctionsScreen({super.key});

  @override
  State<CounterFunctionsScreen> createState() => _CounterFunctionsScreenState();
}

class _CounterFunctionsScreenState extends State<CounterFunctionsScreen> {
  int clickCounter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Counter Functions Screen'),
        ),
        actions: [
          IconButton(
              onPressed: () {
                clickCounter = 0;
                setState(() {});
              },
              icon: const Icon(Icons.refresh_rounded))
        ],
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('$clickCounter',
              style: const TextStyle(
                  fontSize: 160, fontWeight: FontWeight.w100)),
          Text(('Click${clickCounter == 1 ? '' : 's'}'),
              style: const TextStyle(fontSize: 25))
        ],
      )),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomButton(
            icon: Icons.refresh_rounded,
            onPressed: () {
              clickCounter = 0;
              setState(() {});
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButton(
            icon: Icons.plus_one_rounded,
            onPressed: () {
              clickCounter++;
              setState(() {});
            },
          ),
          const SizedBox(
            height: 15,
          ),
          CustomButton(
            icon: Icons.exposure_minus_1_rounded,
            onPressed: () {
              if (clickCounter < 1) return;
              clickCounter--;
              setState(() {});
            },
          )
        ],
      )
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? onPressed;

  const CustomButton({super.key, required this.icon, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      // elevation: 30,
      // isExtended: true,
      // backgroundColor: Color.fromRGBO(130, 10, 130, 0.2),
      shape: const StadiumBorder(),
      onPressed: onPressed,
      child: Icon(icon),
    );
  }
}
