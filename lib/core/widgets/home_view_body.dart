import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gift_planner/constant.dart';
import 'package:gift_planner/models/gift_model.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return Column(
      children: [
        UserCard(
          size: size,
          giftModel: GiftModel(personName: 'Mohamed Ramdan', gender: 'male'),
        ),
      ],
    );
  }
}

class UserCard extends StatelessWidget {
  final GiftModel giftModel;
  const UserCard({
    super.key,
    required this.size,
    required this.giftModel,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 8,
      ),
      margin: const EdgeInsets.symmetric(
        horizontal: 8,
        vertical: 8,
      ),
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 5,
            offset: Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            children: [
              UserIcon(giftModel: giftModel),
              const SizedBox(width: 8),
              Expanded(
                child: Text(
                  giftModel.personName,
                  style: Theme.of(context).textTheme.displayMedium,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
              ClickableWidget(
                icon: FontAwesomeIcons.trash,
                onPressed: () {},
              ),
              const SizedBox(width: 6),
              ClickableWidget(
                icon: FontAwesomeIcons.pen,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ClickableWidget extends StatelessWidget {
  final IconData? icon;
  final VoidCallback? onPressed;
  const ClickableWidget({
    super.key,
    this.icon,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Icon(
        icon,
        size: 18,
      ),
    );
  }
}

class UserIcon extends StatelessWidget {
  const UserIcon({
    super.key,
    required this.giftModel,
  });

  final GiftModel giftModel;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 19.2,
      backgroundColor: Constant.stringColor,
      child: CircleAvatar(
        radius: 18,
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(2.0),
          child: ClipOval(
            child: Image.asset(
              giftModel.gender == 'male'
                  ? 'assets/images/male.png'
                  : 'assets/images/female.png',
              width: 30,
            ),
          ),
        ),
      ),
    );
  }
}
