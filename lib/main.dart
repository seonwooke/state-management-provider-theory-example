import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'drink_model.dart';
import 'sushi_model.dart';

// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => SushiModel(name: '새우초밥', number: 0),
//       child: const SushiRestaurant(),
//     ),
//   );
// }

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => SushiModel(name: '새우초밥', number: 0),
        ),
        ChangeNotifierProvider(
          create: (context) => DrinkModel(name: '사이다', number: 0),
        ),
      ],
      child: const SushiRestaurant(),
    ),
  );
}

class SushiRestaurant extends StatelessWidget {
  const SushiRestaurant({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SushiSupply(),
    );
  }
}

class SushiSupply extends StatelessWidget {
  const SushiSupply({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '초밥 : ${Provider.of<SushiModel>(context).name}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              '음료수 : ${Provider.of<DrinkModel>(context).name}',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Provider.of<SushiModel>(context, listen: false)
                        .changeSushiNumber();
                  },
                  child: const Text('초밥 갯수 늘리기'),
                ),
                const SizedBox(width: 16),
                ElevatedButton(
                  onPressed: () {
                    Provider.of<DrinkModel>(context, listen: false)
                        .changeDrinkNumber();
                  },
                  child: const Text('음료수 갯수 늘리기'),
                ),
              ],
            ),
            const SizedBox(height: 36),
            const FirstTable(),
          ],
        ),
      ),
    );
  }
}

class FirstTable extends StatelessWidget {
  const FirstTable({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          '첫 번째 테이블',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        CustomerA(),
      ],
    );
  }
}

class CustomerA extends StatelessWidget {
  const CustomerA({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('초밥 갯수 :  ${Provider.of<SushiModel>(context).number}'),
            const SizedBox(width: 16),
            Text('음료수 갯수 :  ${Provider.of<DrinkModel>(context).number}'),
          ],
        ),
        const SizedBox(height: 40),
        const SecondTable(),
      ],
    );
  }
}

class SecondTable extends StatelessWidget {
  const SecondTable({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          '두 번째 테이블',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        CustomerB(),
      ],
    );
  }
}

class CustomerB extends StatelessWidget {
  const CustomerB({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('초밥 갯수 :  ${Provider.of<SushiModel>(context).number}'),
            const SizedBox(width: 16),
            Text('음료수 갯수 :  ${Provider.of<DrinkModel>(context).number}'),
          ],
        ),
        const SizedBox(height: 40),
        const ThirdTable(),
      ],
    );
  }
}

class ThirdTable extends StatelessWidget {
  const ThirdTable({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          '세 번째 테이블',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        CustomerC(),
      ],
    );
  }
}

class CustomerC extends StatelessWidget {
  const CustomerC({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('초밥 갯수 :  ${Provider.of<SushiModel>(context).number}'),
            const SizedBox(width: 16),
            Text('음료수 갯수 :  ${Provider.of<DrinkModel>(context).number}'),
          ],
        ),
        const SizedBox(height: 40),
        const FourthTable(),
      ],
    );
  }
}

class FourthTable extends StatelessWidget {
  const FourthTable({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          '네 번째 테이블',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        CustomerD(),
      ],
    );
  }
}

class CustomerD extends StatelessWidget {
  const CustomerD({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('초밥 갯수 :  ${Provider.of<SushiModel>(context).number}'),
            const SizedBox(width: 16),
            Text('음료수 갯수 :  ${Provider.of<DrinkModel>(context).number}'),
          ],
        ),
        const SizedBox(height: 40),
        const FifthTable(),
      ],
    );
  }
}

class FifthTable extends StatelessWidget {
  const FifthTable({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Text(
          '다섯 번째 테이블',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        CustomerE(),
      ],
    );
  }
}

class CustomerE extends StatelessWidget {
  const CustomerE({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('초밥 갯수 :  ${Provider.of<SushiModel>(context).number}'),
            const SizedBox(width: 16),
            Text('음료수 갯수 :  ${Provider.of<DrinkModel>(context).number}'),
          ],
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
