import 'package:flutter/material.dart';

void main() {
  runApp(const Constraints());
}

class Constraints extends StatelessWidget {
  const Constraints({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyWidget(),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 30),
        child: ListView.builder(
          itemBuilder: (BuildContext context, int index) {
            return const ListViewItem();
          },
        ),
      ),
    );
  }
}

class ListViewItem extends StatelessWidget {
  const ListViewItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          children: [
            Container(
              // control behavior of constraints for widget like this
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.sizeOf(context).width - 12 * 2),
              padding: const EdgeInsets.all(16),
              color: Colors.deepOrange,
              child: const Text(
                'Id incididunt reprehenderit veniam esse nostrud in. Labore culpa laborum dolore Lorem est. Ad tempor commodo sunt do in deserunt quis irure reprehenderit consequat veniam ex ipsum. Adipisicing do eiusmod proident mollit anim est.Tempor deserunt sit consequat duis eu ullamco laborum. Minim velit eu do do consectetur Lorem mollit occaecat est cupidatat cillum enim. Mollit consectetur fugiat proident eiusmod commodo anim duis excepteur aute. Magna nulla laborum nisi in fugiat ad anim duis tempor quis laborum culpa. Ullamco laboris cillum deserunt adipisicing minim nulla amet. Aliqua in sit reprehenderit incididunt qui tempor quis dolore. Aliquip velit voluptate commodo nisi aute ut ut tempor eiusmod fugiat nulla.',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
