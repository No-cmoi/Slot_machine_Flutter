import 'package:casino/jackpot.dart';
import 'package:flutter/material.dart';

class SlotMachine extends StatefulWidget {
  const SlotMachine({super.key, required this.title});

  final String title;

  @override
  State<SlotMachine> createState() => _SlotMachineState();
}

class _SlotMachineState extends State<SlotMachine> {
  late Jackpot jackpot; 

  @override
  void initState() {
    super.initState();
    jackpot = Jackpot();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[700],
        title: Text(widget.title,
        style: const TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(child:Image.asset('images/${jackpot.currentImages[0]}',fit:BoxFit.contain),),
                Expanded(child:Image.asset('images/${jackpot.currentImages[1]}',fit:BoxFit.contain),),
                Expanded(child:Image.asset('images/${jackpot.currentImages[2]}',fit:BoxFit.contain),),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              jackpot.message,
              style: 
              const TextStyle(
                fontSize: 30, 
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          setState(() {
            jackpot.spin();
            jackpot.message = jackpot.checkForJackpot();
          });
        },

        child: const Icon(Icons.change_circle,
          color: Colors.white
        ),
      ),
    );
  }
}