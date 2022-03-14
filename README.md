# XamarinNativeiOSPart

Sample projects of creation native iOS (Swift) parts for Xamarin application

AppForDevelopNativeModules - the app project where first things first you develop new native iOS (Swift) modules for integration with Xamarin app. If you need to add dependency to external framework you can use Carthage. You must add and resolve dependencies for both project (AppForDevelopNativeModules and NativeProxyFramework).

NativeProxyFramework - the framework project where you must copy all of you work from AppForDevelopNativeModules and create an interface (it has examples) in AppForDevelopNativeModules.swift like other methods in this file (or it can be done by Xamarin developer). After that Xamarin developer can bind native library by using Sharpie (https://docs.microsoft.com/en-us/xamarin/ios/platform/binding-swift/walkthrough) and make integration with Xamarin app.
 
![Alt text](https://docs.microsoft.com/ru-ru/xamarin/get-started/what-is-xamarin-images/xamarin-architecture.png)
