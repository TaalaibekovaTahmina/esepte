import 'package:esepte/cubit/esepte1_cubit.dart';
import 'package:esepte/cubit/esepte_cubit.dart';
import 'package:esepte/cubit/raund_cubit.dart';
import 'package:esepte/widgets/containery2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../cubit/raund1_cubit.dart';
import '../widgets/containery.dart';
import '../widgets/raund.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: AppBar(),
      ),
      body: Stack(
        children: [
          const Row(
            children: [
              Containery(),
              SizedBox(width: 5),
              Containery2(),
            ],
          ),
          const Raund(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      context.read<EsepteCubit>().resetCount();
                      context.read<Esepte1Cubit>().reset1Count();
                      context.read<RaundCubit>().nol();
                      context.read<Raund1Cubit>().nol1();
                    },
                    icon: const Icon(
                      Icons.delete_forever,
                      size: 40,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
