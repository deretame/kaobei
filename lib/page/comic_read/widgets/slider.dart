import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

import '../../../main.dart';

class SliderWidget extends StatefulWidget {
  final int totalSlots;
  final double currentSliderValue;
  final ValueChanged<double> changeSliderValue;
  final ValueChanged<bool> changeSliderRollState;
  final ValueChanged<bool> changeComicRollState;
  final ItemScrollController itemScrollController;
  final PageController pageController;
  final bool isKeyboardEventHandling;

  const SliderWidget({
    super.key,
    required this.totalSlots,
    required this.changeSliderValue,
    required this.currentSliderValue,
    required this.changeSliderRollState,
    required this.changeComicRollState,
    required this.itemScrollController,
    required this.pageController,
    required this.isKeyboardEventHandling,
  });

  @override
  State<SliderWidget> createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  Timer? _scrollTimer;
  OverlayEntry? _overlayEntry;
  final _debounceDuration = const Duration(milliseconds: 300);

  @override
  void dispose() {
    _scrollTimer?.cancel();
    _scrollTimer = null;
    _removeOverlay();
    super.dispose();
  }

  void _handleSliderUpdate(double newValue) {
    if (widget.isKeyboardEventHandling) return; // 如果键盘事件正在处理，直接返回

    widget.changeSliderValue(newValue);
    widget.changeSliderRollState(true);

    _scrollTimer?.cancel();
    _showOverlayToast((newValue.toInt() + 1).toString());

    _scrollTimer = Timer(_debounceDuration, () async {
      await _performScroll(newValue);
      _removeOverlay();
      widget.changeComicRollState(false);
      widget.changeSliderRollState(false);
    });
  }

  Future<void> _performScroll(double value) async {
    widget.changeComicRollState(true);
    // 滚动到指定的索引
    if (setting.readMode == 0) {
      await widget.itemScrollController.scrollTo(
        index: widget.currentSliderValue.toInt() + 1,
        alignment: 0.0,
        duration: const Duration(milliseconds: 300),
      );
    } else {
      await widget.pageController.animateToPage(
        widget.currentSliderValue.toInt(),
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  void _showOverlayToast(String message) {
    _removeOverlay();
    _overlayEntry = OverlayEntry(
      builder: (context) => Center(child: _buildToast(message)),
    );
    Overlay.of(context).insert(_overlayEntry!);
  }

  Widget _buildToast(String message) => ClipRRect(
    borderRadius: BorderRadius.circular(8.0),
    child: BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 48.0, vertical: 24.0),
        decoration: BoxDecoration(
          color: materialColorScheme.surfaceBright.withAlpha(0x80),
          borderRadius: BorderRadius.circular(10),
        ),
        child: RichText(
          text: TextSpan(
            text: message,

            style: TextStyle(
              fontSize: 60,
              color: setting.textColor.withAlpha(0xCC),
            ),
          ),
        ),
      ),
    ),
  );

  void _removeOverlay() {
    _overlayEntry?.remove();
    _overlayEntry = null;
  }

  @override
  Widget build(BuildContext context) {
    final maxValue = widget.totalSlots > 0 ? widget.totalSlots - 1 : 0;
    return Expanded(
      child: Slider(
        value: widget.currentSliderValue,
        min: 0,
        max: maxValue.toDouble(),
        label: (widget.currentSliderValue.toInt() + 1).toString(),
        onChanged: _handleSliderUpdate,
      ),
    );
  }
}
