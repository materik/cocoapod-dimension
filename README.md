![](logo.png)

[![](https://img.shields.io/badge/contact-@thematerik-blue.svg?style=flat-square)](http://twitter.com/thematerik)
[![](https://img.shields.io/cocoapods/v/Dimension.svg?style=flat-square)](https://cocoapods.org/pods/Dimension)
[![](https://img.shields.io/travis/materik/dimension.svg?style=flat-square)](https://travis-ci.org/materik/dimension)
[![](https://coveralls.io/repos/github/materik/dimension/badge.svg?branch=master)](https://coveralls.io/github/materik/dimension?branch=master)
![](https://img.shields.io/cocoapods/p/Dimension.svg?style=flat-square)
![](https://img.shields.io/cocoapods/l/Dimension.svg?style=flat-square)

Extensions for UIKit objects for easier access of frame properties.
Also useful extensions of CGPoint, CGSize, CGRect and UIEdgeInsets.

# Install

```bash
pod 'Dimension'
```

## Swift (Default)

```bash
pod 'Dimension/Swift'
```

## Objective-C

```bash
pod 'Dimension/ObjC'
```

# API Documentation

## Swift

### CGPoint

```swift
init(squared: CGFloat)
init(x: CGFloat)
init(y: CGFloat)
init(size: CGSize)

func *(scalar: CGFloat, pnt: CGPoint) -> CGPoint
func +(pnt1: CGPoint, pnt2: CGPoint) -> CGPoint
func -(pnt1: CGPoint, pnt2: CGPoint) -> CGPoint
func +(pnt: CGPoint, size: CGSize) -> CGPoint
func -(pnt: CGPoint, size: CGSize) -> CGPoint
```

### CGRect 

```swift
var x: CGFloat { get set }
var y: CGFloat { get set }
var w: CGFloat { get set }
var h: CGFloat { get set }
var top: CGFloat { get set }
var right: CGFloat { get set }
var bottom: CGFloat { get set }
var left: CGFloat { get set }
var center: CGPoint { get set }

init(origin: CGPoint)
init(size: CGSize)
init(x: CGFloat)
init(y: CGFloat)
init(w: CGFloat)
init(h: CGFloat)
init(width: CGFloat)
init(height: CGFloat)
init(x: CGFloat, y: CGFloat)
init(x: CGFloat, y: CGFloat, size: CGSize)
init(x: CGFloat, size: CGSize)
init(y: CGFloat, size: CGSize)
init(w: CGFloat, h: CGFloat)
init(width: CGFloat, height: CGFloat)
init(origin: CGPoint, width: CGFloat, height: CGFloat)
init(origin: CGPoint, w: CGFloat, h: CGFloat)
```

### CGSize

```swift
var w: CGFloat { get set }
var h: CGFloat { get set }
var center: CGPoint { get }

init(squared: CGFloat)
init(w: CGFloat)
init(h: CGFloat)
init(w: CGFloat, h: CGFloat)
init(width: CGFloat)
init(height: CGFloat)

func *(scalar: CGFloat, size: CGSize) -> CGSize
func +(size1: CGSize, size2: CGSize) -> CGSize
func -(size1: CGSize, size2: CGSize) -> CGSize
```

### UIEdgeInsets

```swift
init(squared: CGFloat)
init(top: CGFloat)
init(left: CGFloat)
init(bottom: CGFloat)
init(right: CGFloat)
init(top: CGFloat, left: CGFloat)
init(top: CGFloat, bottom: CGFloat)
init(top: CGFloat, right: CGFloat)
init(left: CGFloat, bottom: CGFloat)
init(left: CGFloat, right: CGFloat)
init(bottom: CGFloat, right: CGFloat)
init(top: CGFloat, left: CGFloat, bottom: CGFloat)
init(top: CGFloat, left: CGFloat, right: CGFloat)
init(top: CGFloat, bottom: CGFloat, right: CGFloat)
init(left: CGFloat, bottom: CGFloat, right: CGFloat)
init(horizontal: CGFloat, vertical: CGFloat)
init(horizontal: CGFloat)
init(horizontal: CGFloat, top: CGFloat, bottom: CGFloat)
init(horizontal: CGFloat, top: CGFloat)
init(horizontal: CGFloat, bottom: CGFloat)
init(vertical: CGFloat)
init(vertical: CGFloat, left: CGFloat, right: CGFloat)
init(vertical: CGFloat, left: CGFloat)
init(vertical: CGFloat, right: CGFloat)

func *(scalar: CGFloat, inset: UIEdgeInsets) -> UIEdgeInsets
func +(inset1: UIEdgeInsets, inset2: UIEdgeInsets) -> UIEdgeInsets
func -(inset1: UIEdgeInsets, inset2: UIEdgeInsets) -> UIEdgeInsets
```

### UIImageView

```swift
func setWidth(andKeepImageRatio width: CGFloat)
func setHeight(andKeepImageRatio height: CGFloat)
```

### UILabel

```swift
func sizeToFit(width width: CGFloat)
func setLineSpacing(lineSpacing: CGFloat)
```

### UIScreen

```swift
var w: CGFloat { get }
var h: CGFloat { get }
var width: CGFloat { get }
var height: CGFloat { get }
var size: CGSize { get }
var center: CGPoint { get }

class var w: CGFloat { get }
class var h: CGFloat { get }
class var width: CGFloat { get }
class var height: CGFloat { get }
class var size: CGSize { get }
class var center: CGPoint { get }
```

### UIView

```swift
var x: CGFloat { get set }
var y: CGFloat { get set }
var w: CGFloat { get set }
var h: CGFloat { get set }
var width: CGFloat { get set }
var height: CGFloat { get set }
var top: CGFloat { get set }
var right: CGFloat { get set }
var bottom: CGFloat { get set }
var left: CGFloat { get set }
var origin: CGPoint { get set }
var size: CGSize { get set }

init(origin: CGPoint)
init(size: CGSize)
```

## Objective-C

### UILabel

```objective-c
- (void)sizeToFitWidth:(CGFloat)width;
```

### UIImageView

```objective-c
- (void)setWidthAndKeepRatio:(CGFloat)width;
- (void)setHeightAndKeepRatio:(CGFloat)height;
```

### UIScreen

```objective-c
@property(readonly) CGFloat w;
@property(readonly) CGFloat h;
@property(readonly) CGFloat width;
@property(readonly) CGFloat height;
@property(readonly) CGSize size;

+ (CGFloat)w;
+ (CGFloat)h;
+ (CGFloat)width;
+ (CGFloat)height;
+ (CGSize)size;
```

### UIView

```objective-c
@property(assign) CGFloat x;
@property(assign) CGFloat y;
@property(assign) CGFloat w;
@property(assign) CGFloat h;
@property(assign) CGFloat width;
@property(assign) CGFloat height;
@property(assign) CGFloat top;
@property(assign) CGFloat right;
@property(assign) CGFloat bottom;
@property(assign) CGFloat left;
@property(assign) CGPoint origin;
@property(assign) CGSize size;

- (void)centerInView;
```
