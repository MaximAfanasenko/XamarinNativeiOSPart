
import Foundation
import UIKit
import Alamofire
import AlamofireObjectMapper

//after develop here, code must be copied to NativeProxyFramework and inteface to use it
//must created in NativeProxyFramework.swift (Xamarin developer can do it, not iOS Native)
public class SampleViewController : UIViewController
{
    private let titleLabel = UILabel()
    private let sampleTextField = UITextField()
    private let sampleButton = UIButton()
    
    //example of value from xamarin project
    private var valueFromXamarinProject = "{\"default\":\"value\"}"
    
    init(valueFromXamarinProject: String) {
        self.valueFromXamarinProject = valueFromXamarinProject
        super.init(nibName: nil, bundle: nil)
    }    
    
    //https://developer.apple.com/forums/thread/46079
    //https://stackoverflow.com/a/43525331
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(titleLabel)
        view.addSubview(sampleTextField)
        view.addSubview(sampleButton)
        
        let safeArea = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: 20),
            titleLabel.rightAnchor.constraint(equalTo: safeArea.rightAnchor, constant: -20),
            titleLabel.leftAnchor.constraint(equalTo: safeArea.leftAnchor, constant:20),
            titleLabel.heightAnchor.constraint(equalToConstant: 40),
            
            sampleTextField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 20),
            sampleTextField.rightAnchor.constraint(equalTo: safeArea.rightAnchor, constant: -20),
            sampleTextField.leftAnchor.constraint(equalTo: safeArea.leftAnchor, constant:20),
            sampleTextField.heightAnchor.constraint(equalToConstant: 40),
            
            sampleButton.topAnchor.constraint(equalTo: sampleTextField.bottomAnchor, constant: 20),
            sampleButton.rightAnchor.constraint(equalTo: safeArea.rightAnchor, constant: -20),
            sampleButton.leftAnchor.constraint(equalTo: safeArea.leftAnchor, constant:20),
            sampleButton.heightAnchor.constraint(equalToConstant: 50)
        ])
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        sampleTextField.translatesAutoresizingMaskIntoConstraints = false
        sampleButton.translatesAutoresizingMaskIntoConstraints = false
        
        titleLabel.backgroundColor = .black
        titleLabel.textColor = .white
        
        sampleTextField.backgroundColor = UIColor(red: 48/255, green: 25/255, blue: 52/255, alpha: 1)
        sampleTextField.textColor = .white
        
        sampleButton.backgroundColor = .purple
        
        view.backgroundColor = .black
        
        titleLabel.text = "Sample View Controller"
        sampleTextField.text = "ValueFromXamarin: " + valueFromXamarinProject
        sampleButton.setTitle("Button title", for: .normal)
    }   
}
