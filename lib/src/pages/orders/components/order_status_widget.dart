import 'package:flutter/material.dart';
import 'package:fruittrace/src/config/custom_colors.dart';

class OrderStatusWidget extends StatelessWidget {
  final String status;
  final bool isOverdue;

  const OrderStatusWidget({
    super.key,
    required this.status,
    required this.isOverdue,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      _StatusDot(isActive: true, title: 'deu booooooooooooooooom'),
      _StatusDot(isActive: false, title: 'deu ruim',),
      ],
    );
  }
}

class _StatusDot extends StatelessWidget {

  final bool isActive;
  final String title;

  const _StatusDot({
    super.key,
    required this.isActive,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // dot
        Container(
          alignment: Alignment.center,
          height: 20,
          width: 20,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: CustomColors.customSwatchColor,
            ),
            color: isActive ? CustomColors.customSwatchColor : Colors.transparent,
          ),
          child: isActive ?
            const Icon(
              Icons.check,
              size: 13,
              color: Colors.white,
            ) : const SizedBox.shrink(),
        ),

        const SizedBox(width: 5.0),

        // texto
        Expanded(
          child: Text(
            title,
            style: TextStyle(
              color: Colors.green[800],
            ),
          ),
        )
      ],
    );
  }
}