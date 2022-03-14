
import Foundation
import UIKit

@objc(NativeProxyFramework)
public class NativeProxyFramework : NSObject {
    
    @objc
    public func pushSampleViewController(valueFromXamarinProject: String, navigationController: UINavigationController) {
        let nativeVC = SampleViewController(valueFromXamarinProject: valueFromXamarinProject)
        navigationController.pushViewController(nativeVC, animated: true)
    }
    
    @objc
    public func pushSampleViewControllerWithCallback(valueFromXamarinProject: String, navigationController: UINavigationController, callback: (Int) -> Void) {
        let nativeVC = SampleViewController(valueFromXamarinProject: valueFromXamarinProject)
        navigationController.pushViewController(nativeVC, animated: true)
        
        callback(1)
    }   
}
