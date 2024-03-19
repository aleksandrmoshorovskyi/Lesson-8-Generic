//
//  ViewController.swift
//  Lesson-8-Generic
//
//  Created by Aleksandr Moroshovskyi on 14.03.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myBtn: UIButton!
    @IBOutlet weak var mySlider: UISlider!
    @IBOutlet weak var myActivityIndicator: UIActivityIndicatorView!
    
    @IBAction func mySliderAction(_ sender: UISlider) {
        print("\(sender.value)")
    }
    
    @IBAction func myBtnClicked(_ sender: UIButton) {
        
        print("Hello!")
        
        doSomeLogicWithData()
        
        myActivityIndicator.stopAnimating()
        
        print("BB!")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        myActivityIndicator.hidesWhenStopped = true
        myActivityIndicator.startAnimating()
    }


}

func doSomeLogicWithData() {
    
   /*
           var responseStrings = APIStringResponse()
           responseStrings.update(with: ["1", "2", "some string"])
           responseStrings.date = Date()
           
           var responseInt = APIIntResponse()
           responseInt.update(with: [1, 2, 3])
           responseInt.date = Date()
   */
           
           var responseStrings = APIUniversalResponse<String>()
           responseStrings.update(with: ["1", "2", "some string"])
           responseStrings.date = Date()
           
           var responseInt = APIUniversalResponse<Int>()
           responseInt.update(with: [1, 2, 3])
           responseInt.date = Date()
           
           debugPrint(" ... ")
           
           var doubleResponse = APIDoubleResponse()
           doubleResponse.setup(with: [3.0, 5.0])
           
           debugPrint(" ... ")
}
