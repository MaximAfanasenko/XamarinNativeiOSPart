
import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //mock value for development, after bind xamarin and native modules this or other values are getting from xamarin
        let valueFromXamarinProject = "{\"from\":\"xamarin\"}"
        
        let sampleVC = SampleViewController(valueFromXamarinProject: valueFromXamarinProject)
        
        navigationController?.pushViewController(sampleVC, animated: true)
        
    }

}

