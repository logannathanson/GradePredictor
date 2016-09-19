//
//  GPAViewController.swift
//  GradePredictor
//
//  Created by Logan Nathanson on 9/7/16.
//  Copyright © 2016 Logan Nathanson. All rights reserved.
//

import UIKit

class GPAViewController: UIViewController {
    
    //Credits text fields
    @IBOutlet weak var yearOneCredits: UITextField?
    @IBOutlet weak var yearTwoCredits: UITextField?
    @IBOutlet weak var yearThreeCredits: UITextField?
    @IBOutlet weak var yearFourCredits: UITextField?
    
    //GPA text fields
    @IBOutlet weak var yearOneGPA: UITextField?
    @IBOutlet weak var yearTwoGPA: UITextField?
    @IBOutlet weak var yearThreeGPA: UITextField?
    @IBOutlet weak var yearFourGPA: UITextField?
    
    //Labels for calculation
    @IBOutlet weak var totalCredits: UILabel!
    @IBOutlet weak var weightedGPA: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dissmissKeyboard))
        view.addGestureRecognizer(tap)
        
    }
    
    func dissmissKeyboard() {
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func clickToCalculate(_ sender: UIButton) {
        var totalCreditsFloat: Float = 0
        var weightedGPAFloat: Float = 0.0
        
        //Credits for each year
        var yearOneCreditsFloat: Float = 0
        var yearTwoCreditsFloat: Float = 0
        var yearThreeCreditsFloat: Float = 0
        var yearFourCreditsFloat: Float = 0
        
        //GPA for each year
        var yearOneGPAFloat: Float = 0
        var yearTwoGPAFloat: Float = 0
        var yearThreeGPAFloat: Float = 0
        var yearFourGPAFloat: Float = 0
        
        if let creditsOne: Float = Float(yearOneCredits!.text!), let GPAOne: Float = Float(yearOneGPA!.text!) {
            yearOneCreditsFloat = creditsOne
            yearOneGPAFloat = GPAOne
        }
        
        if let creditsTwo: Float = Float(yearTwoCredits!.text!), let GPATwo: Float = Float(yearTwoGPA!.text!) {
            yearTwoCreditsFloat = creditsTwo
            yearTwoGPAFloat = GPATwo
        }
        
        if let creditsThree: Float = Float(yearThreeCredits!.text!), let GPAThree: Float = Float(yearThreeGPA!.text!) {
            yearThreeCreditsFloat = creditsThree
            yearThreeGPAFloat = GPAThree
        }
        
        if let creditsFour: Float = Float(yearFourCredits!.text!), let GPAFour: Float = Float(yearFourGPA!.text!) {
            yearFourCreditsFloat = creditsFour
            yearFourGPAFloat = GPAFour
        }
        
        //Calculations
        totalCreditsFloat = yearOneCreditsFloat + yearTwoCreditsFloat + yearThreeCreditsFloat + yearFourCreditsFloat
        
        weightedGPAFloat = ((yearOneCreditsFloat * yearOneGPAFloat) + (yearTwoCreditsFloat * yearTwoGPAFloat) + (yearThreeCreditsFloat * yearThreeGPAFloat) + (yearFourCreditsFloat * yearFourGPAFloat)) / totalCreditsFloat
        
        
        totalCredits.text = String(totalCreditsFloat)
        weightedGPA.text = String(weightedGPAFloat)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
