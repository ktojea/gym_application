import 'package:flutter/material.dart';
import 'package:gym_application/data/models/local/subscription/subscription.dart';
import 'package:gym_application/ui/widgets/info/subscription_widget.dart';

class UserSubcriptionsWidget extends StatelessWidget {
  const UserSubcriptionsWidget({
    super.key,
    required this.subscriptions,
    required this.onSubscriptionTap,
  });

  final List<Subscription> subscriptions;
  final void Function(int subscriptionId) onSubscriptionTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: subscriptions
          .map(
            (subscription) => Padding(
              padding: const EdgeInsets.only(bottom: 10, right: 25, left: 25),
              child: SubscriptionWidget(
                subscription: subscription,
                onTap: (id) => onSubscriptionTap(subscription.id),
              ),
            ),
          )
          .toList(),
    );
  }
}
