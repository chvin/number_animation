文档语言: [English](README.md) | [中文简体](README-ZH.md)

# number_animation
一个简单易用的 Wdiget 帮助你展示数字动画

## 添加依赖
```yaml
dependencies:
  dio: ^0.1.0  // 请使用pub上的最新版本
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
请查看注释：[number_animation.dart](lib/number_animation.dart)

## 完整的示例代码
[Exmaple](example/number_animation.dart)

效果预览：

![Example Demo](https://img.alicdn.com/imgextra/i4/O1CN01SPF2q11E5trTOa8Qa_!!6000000000301-1-tps-436-190.gif)
