import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:gym_application/common/utils/navigation/app_router.dart';
import 'package:gym_application/ui/theme/color/app_colors.dart';
import 'package:gym_application/ui/widgets/messages/error_message_widget.dart';
import 'package:gym_application/ui/widgets/scanner/overlay_for_scanner_widget.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

@RoutePage()
class ScannerScreen extends StatefulWidget {
  const ScannerScreen({super.key});

  @override
  State<ScannerScreen> createState() => _ScannerScreenState();
}

class _ScannerScreenState extends State<ScannerScreen> {
  final mobileScannerController = MobileScannerController();
  bool _isScreenOpen = false;

  void _foundBarcode(BarcodeCapture barcodeCapture) {
    try {
      if (!_isScreenOpen) {
        final equipmentIdResponse = barcodeCapture.barcodes.first.displayValue;

        if (equipmentIdResponse == null) {
          _showErrorMessage('Не удалось найти тренажер');
          return;
        }

        final equipmentId = int.parse(equipmentIdResponse);

        _isScreenOpen = false;

        context.router.replace(EquipmentRoute(equipmentId: equipmentId));
      }
    } on Object {
      context.router.maybePop();
      _showErrorMessage('Ошибка во время сканирования');
    }
  }

  void _showErrorMessage(String text) => showDialog(
        context: context,
        builder: (context) => ErrorMessageWidget(text: text),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.5),
      appBar: AppBar(
        title: const Text('Сканирование QR'),
        centerTitle: true,
      ),
      body: Stack(
        children: [
          MobileScanner(
            controller: mobileScannerController,
            onDetect: (barcodes) => _foundBarcode(barcodes),
          ),
          OverlayForScannerWidget(
            overlayColour: AppColors.mainColorDark.withOpacity(
              0.3,
            ),
          ),
        ],
      ),
    );
  }
}
