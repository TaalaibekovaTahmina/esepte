import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/esepte1_cubit.dart';

class Containery2 extends StatelessWidget {
  const Containery2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.cyan,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Pleyer 2',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              onTap: () => context.read<Esepte1Cubit>().increment1Counter(),
              child: BlocBuilder<Esepte1Cubit, Esepte1CubitState>(
                builder: (context, state) {
                  return Text(
                    ' ${state.count1}',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 150,
                      fontWeight: FontWeight.w500,
                    ),
                  );
                },
              ),
            ),
            IconButton(
              iconSize: 40,
              onPressed: () => context.read<Esepte1Cubit>().decrementCounter1(),
              icon: const Icon(
                Icons.undo,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
