/*
 * Copyright (c) 2021 Simform Solutions
 *
 * Permission is hereby granted, free of charge, to any person obtaining a copy
 * of this software and associated documentation files (the "Software"), to deal
 * in the Software without restriction, including without limitation the rights
 * to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 * copies of the Software, and to permit persons to whom the Software is
 * furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be
 * included in all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 * OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 * SOFTWARE.
 */
import 'package:flutter/material.dart';

import '../utils/enum.dart';

class TooltipActionConfig {
  /// Configuration options for tooltip action buttons.
  ///
  /// This class allows you to configure the overall appearance and layout of
  /// action buttons within a tooltip widget.
  const TooltipActionConfig({
    this.alignment = MainAxisAlignment.spaceBetween,
    this.actionGap = 5,
    this.position = TooltipActionPosition.inside,
    this.gapBetweenContentAndAction = 10,
    this.crossAxisAlignment = CrossAxisAlignment.start,
    this.textBaseline,
  }) : assert(
          crossAxisAlignment != CrossAxisAlignment.stretch,
          'Can not use stretch as height is unbounded',
        );

  /// Defines tooltip action widget position. It can be inside the tooltip
  /// widget or outside.
  final TooltipActionPosition position;

  /// Defines the alignment of actions buttons of tooltip action widget.
  final MainAxisAlignment alignment;

  /// Defines the gap between the actions buttons of tooltip action widget.
  final double actionGap;

  /// Defines vertically gap between tooltip content and actions.
  final double gapBetweenContentAndAction;

  /// Defines running direction alignment for the Action widgets.
  final CrossAxisAlignment crossAxisAlignment;

  /// If aligning items according to their baseline, which baseline to use.
  /// This must be set if using baseline alignment.
  final TextBaseline? textBaseline;

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    return other is TooltipActionConfig &&
        alignment == other.alignment &&
        actionGap == other.actionGap &&
        position == other.position &&
        gapBetweenContentAndAction == other.gapBetweenContentAndAction &&
        crossAxisAlignment == other.crossAxisAlignment &&
        textBaseline == other.textBaseline;
  }

  @override
  int get hashCode => Object.hashAllUnordered([
        alignment,
        actionGap,
        position,
        gapBetweenContentAndAction,
        crossAxisAlignment,
        textBaseline,
      ]);
}
