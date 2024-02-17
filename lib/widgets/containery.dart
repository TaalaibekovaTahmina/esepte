import 'package:esepte/cubit/esepte_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Containery extends StatelessWidget {
  const Containery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.red,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Text(
              'Pleyer 1',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            InkWell(
              onTap: () => context.read<EsepteCubit>().incrementCounter(),
              child: BlocBuilder<EsepteCubit, EsepteCubitState>(
                builder: (context, state) {
                  return Text(
                    ' ${state.count}',
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
              onPressed: () => context.read<EsepteCubit>().decrementCounter(),
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
