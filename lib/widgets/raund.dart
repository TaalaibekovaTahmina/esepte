import 'package:esepte/cubit/raund1_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/raund_cubit.dart';

class Raund extends StatelessWidget {
  const Raund({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Container(
            width: 150,
            height: 50,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () => context.read<RaundCubit>().koshot(),
                    child: BlocBuilder<RaundCubit, RaundCubitState>(
                      builder: (context, state) {
                        return Text(
                          '${state.san}',
                          style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w500,
                          ),
                        );
                      },
                    ),
                  ),
                  InkWell(
                    onTap: () => context.read<Raund1Cubit>().koshot1(),
                    child: BlocBuilder<Raund1Cubit, Raund1CubitState>(
                      builder: (context, state) {
                        return Text(
                          '${state.san1}',
                          style: const TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.w500,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
