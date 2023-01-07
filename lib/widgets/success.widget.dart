import 'package:aog/widgets/loading-button.widget.dart';
import 'package:flutter/material.dart';

class Success extends StatelessWidget {
  var result ="";
  Function reset;

  Success({Key? key, 
    required this.result,
    required this.reset,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
          Container(
            margin: const EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(children: <Widget>[
              const SizedBox(
                height: 50,
              ),
              Text(
                result,
                style: TextStyle(
                  color: Theme.of(context).primaryColor,
                  fontSize: 25,
                  fontFamily: "Big Shoulders Display",
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              LoadingButton(
                busy: false,
                invert: true,
                func: reset,
                text: "Calcular novamente",
              ),
            ]),
          );
  }
}