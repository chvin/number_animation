Language: [English](README.md) | [中文简体](README-ZH.md)

# number_animation
A simple and easy to use widget to help you show numbers by animation.

## Add dependency
```yaml
dependencies:
  number_animation: ^0.1.2
```

## Super simple to use
```dart
import 'package:flutter/material.dart';
import 'package:number_animation/number_animation.dart';


...
@override
Widget build(BuildContext context) {
    return NumberAnimation(end: 100);
}
```

## Fields API
| param | description | type | default value |
| - | - | - | - |
| start | start number | num  | 0.0 |
| end | end nunber | String  | null |
| isInt | true for int, false for double | String  | false |
| duration | animation duration | String  | const Duration(milliseconds: 1000) |
| style | TextStyle | String  | null |
| textAlign | TextAlign | String  | null |
| strutStyle | StrutStyle | String  | null |
| before | number prefix | String  | '' |
| after | number suffix | String  | '' |
| decimalPoint | decimal point, enable when 'isInt = false' | int  | 2 |
| isLoading | is on loading | String  | false |
| loadingPlaceHolder | loading placeholder, enable when 'isLoading = true' | String  | '' |

## Full example code
[Exmaple](example/number_animation.dart)

Preview：

![Example Demo](https://img.alicdn.com/imgextra/i4/O1CN01SPF2q11E5trTOa8Qa_!!6000000000301-1-tps-436-190.gif)
