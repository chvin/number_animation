文档语言: [English](README.md) | [中文简体](README-ZH.md)

# number_animation
一个简单易用的 Wdiget 帮助你展示数字动画

## 添加依赖
```yaml
dependencies:
  number_animation: ^0.2.0
```

## 简单示例
```dart
import 'package:flutter/material.dart';
import 'package:number_animation/number_animation.dart';


...
@override
Widget build(BuildContext context) {
    return NumberAnimation(end: 100);
}
```

## 属性API
| 参数 | 说明 | 类型 | 默认值 |
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

## 完整的示例代码
[Exmaple](example/number_animation.dart)

效果预览：

![Example Demo](https://img.alicdn.com/imgextra/i4/O1CN01SPF2q11E5trTOa8Qa_!!6000000000301-1-tps-436-190.gif)
