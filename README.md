# SHFullscreenPopGestureSwift
FDFullScreenPopGesture Swift 重制版.

# 感谢
**本代码仅出于学习目的,思路与方法出自 [FDFullScreenPopGesture](https://github.com/forkingdog/FDFullscreenPopGesture) 与 [FDFullScreenPopGestureSwift](https://github.com/Minlison/FDFullScreenPopGestureSwift) .特此声明并表示感谢.**

如有问题请批评指正.

# 使用
* Swift 4 中 `initialze` 方法被禁用.需在 `application(_:didFinishLaunchingWithOptions:)` 方法中调用 `SHFullscreenPopGesture.configure()` 来启用 Method swizzling.

``` swift
func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
    // Override point for customization after application launch.
        
    // 启用
    SHFullscreenPopGesture.configure()
        
    return true
}
```

* 跳转至有 **UIScrollView** 的控制器时,需要在 **UIScrollView** 内部完成返回手势,只需如下设置:

``` swift
scrollView.sh_scrollViewPopGestureRecognizerEnable = true
```

* 其余使用方法与 **[FDFullScreenPopGesture](https://github.com/forkingdog/FDFullscreenPopGesture)** 一致.

> * 如果项目使用 Swift4 以下的版本,依然可以使用 本库1.1版本实现无代码设置的全屏返回.请在 `Podfile.lock`确认本库真实版本,并在 pod 工程 SHFullscreenPopGestureSwift target 的 build setting 中确认本库使用低于 Swift4 的版本编译.
> * 如果项目使用 Swift4 请使用最新版本,并在 AppDelegate 中设置.(最新版本为1.2.1 不要纠结版本号为什么这么乱...)

# CocoaPods 安装
``` ruby
pod 'SHFullscreenPopGestureSwift'
```

# License  
MIT