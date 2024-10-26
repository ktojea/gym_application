import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/datetime/date_formattors.dart';
import 'package:gym_application/data/models/local/subscription/subscription.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/decoration/plate_widget.dart';

class SubscriptionWidget extends StatelessWidget {
  const SubscriptionWidget({
    super.key,
    required this.subscription,
    required this.onTap,
  });

  final Subscription subscription;
  final void Function(int id) onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(subscription.id),
      child: PlateWidget(
        blurRadius: 35,
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadiusDirectional.circular(15),
              child: SizedBox.square(
                dimension: 55,
                child: ColoredBox(
                  color: AppColors.mainColor,
                  child: subscription.gymAvatar != null
                      ? Image(
                          fit: BoxFit.cover,
                          image: NetworkImage(subscription.gymAvatar!),
                        )
                      : null,
                ),
              ),
            ),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  subscription.gymName,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
                Text(
                  'До ${DateFormattors.getDate(subscription.endTime)}',
                  style: const TextStyle(
                    color: Colors.black38,
                  ),
                ),
              ],
            ),
            const Spacer(),
            Icon(
              subscription.notify ? Icons.notifications_none_rounded : Icons.notifications_off_outlined,
              color: subscription.notify ? AppColors.mainColorDarkest : Colors.black38,
            )
          ],
        ),
      ),
    );
  }
}
