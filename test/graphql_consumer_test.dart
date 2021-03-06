import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

import 'package:graphql_flutter/src/widgets/graphql_consumer.dart'
    show GraphQLConsumer;

void main() {
  group('GraphQLConsumer', () {
    testWidgets('raises assertion error because of lack of GraphQLProvider',
        (WidgetTester tester) async {
      await tester.pumpWidget(const GraphQLConsumer(builder: _b));
      expect(tester.takeException(), isAssertionError);
    });
  });
}

Widget _b(_) => Container();
