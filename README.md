# Dimension

[![](https://img.shields.io/cocoapods/v/Dimension.svg?style=flat-square)](https://cocoapods.org/pods/Dimension)
[![](https://img.shields.io/travis/materik/dimension.svg?style=flat-square)](https://travis-ci.org/materik/dimension)
![](https://img.shields.io/cocoapods/p/Dimension.svg?style=flat-square)
![](https://img.shields.io/cocoapods/l/Dimension.svg?style=flat-square)

Extensions for UIKit objects for easier access of frame properties.
Also useful extensions of CGPoint, CGSize, CGRect and UIEdgeInsets.

# Install

```
pod 'Dimension'
```

## For Swift (Default)

```
pod 'Dimension/Swift'
```

## For Objective-C

```
pod 'Dimension/ObjC'
```

# Examples

```
let view = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 100.0, height: 100.0)
view.right = 300.0  // view.frame == CGRect(x: 200.0, y: 0.0, width: 100.0, height: 100.0)
```
```
let view = UIView(frame: CGRect(x: 0.0, y: 0.0, width: 100.0, height: 100.0)
view.bottom = 300.0  // view.frame == CGRect(x: 0.0, y: 200.0, width: 100.0, height: 100.0)
```
```
let x = CGPoint(x: 10.0, y: 0.0) + CGPoint(x: 0.0, y: 10.0)  // x == CGPoint(x: 10.0, y: 10.0)
let y = 3.0 * CGPoint(x: 10.0, y: 10.0)  // x == CGPoint(x: 30.0, y: 30.0)
```
