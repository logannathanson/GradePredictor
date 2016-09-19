import UIKit

class ViewController: UIViewController
{
    //All outlets
    @IBOutlet weak var hw: UITextField!
    @IBOutlet weak var w1: UITextField!
    @IBOutlet weak var cw: UITextField!
    @IBOutlet weak var w2: UITextField!
    @IBOutlet weak var mid: UITextField!
    @IBOutlet weak var w3: UITextField!
    @IBOutlet weak var final: UITextField!
    @IBOutlet weak var w4: UITextField!
    @IBOutlet weak var oth1: UITextField!
    @IBOutlet weak var w5: UITextField!
    @IBOutlet weak var oth2: UITextField!
    @IBOutlet weak var w6: UITextField!
    @IBOutlet weak var wtot: UILabel!
    @IBOutlet weak var finscore: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(dissmissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dissmissKeyboard() {
        view.endEditing(true)
    }
    
    //gradePredict function
    @IBAction func gradePredict(_ sender: UIButton)
    {
        var hwval : Int! = Int(hw.text!)
        if (hwval == nil)
        {
            hwval = 0
        }
        
        var w1val : Int! = Int(w1.text!)
        if (w1val == nil)
        {
            w1val = 0
        }
        
        var cwval : Int! = Int(cw.text!)
        if (cwval == nil)
        {
            cwval = 0
        }
        
        var w2val : Int! = Int(w2.text!)
        if (w2val == nil)
        {
            w2val = 0
        }
        
        var midval : Int! = Int(mid.text!)
        if (midval == nil)
        {
            midval = 0
        }
        
        var w3val : Int! = Int(w3.text!)
        if (w3val == nil)
        {
            w3val = 0
        }
        
        var finalval : Int! = Int(final.text!)
        if (finalval == nil)
        {
            finalval = 0
        }
        
        var w4val : Int! = Int(w4.text!)
        if (w4val == nil)
        {
            w4val = 0
        }
        
        var oth1val : Int! = Int(oth1.text!)
        if (oth1val == nil)
        {
            oth1val = 0
        }
        
        var w5val : Int! = Int(w5.text!)
        if (w5val == nil)
        {
            w5val = 0
        }
        
        var oth2val : Int! = Int(oth2.text!)
        if (oth2val == nil)
        {
            oth2val = 0
        }
        
        var w6val : Int! = Int(w6.text!)
        if (w6val == nil)
        {
            w6val = 0
        }
        
        let weighttotal = (w1val + w2val + w3val + w4val + w5val + w6val)
        wtot.text = "\(weighttotal)%"
        
        let finalscore = ((hwval * w1val) + (cwval * w2val) + (midval * w3val) + (finalval * w4val) + (oth1val * w5val) + (oth2val * w6val))
        finscore.text = "\(finalscore / 100)%"
    }//gradePredict
    @IBAction func FinalScore(_ sender: UIButton)
    {
        var hwval : Int! = Int(hw.text!)
        if (hwval == nil)
        {
            hwval = 0
        }
        
        var w1val : Int! = Int(w1.text!)
        if (w1val == nil)
        {
            w1val = 0
        }
        
        var cwval : Int! = Int(cw.text!)
        if (cwval == nil)
        {
            cwval = 0
        }
        
        var w2val : Int! = Int(w2.text!)
        if (w2val == nil)
        {
            w2val = 0
        }
        
        var midval : Int! = Int(mid.text!)
        if (midval == nil)
        {
            midval = 0
        }
        
        var w3val : Int! = Int(w3.text!)
        if (w3val == nil)
        {
            w3val = 0
        }
        
        var finalval : Int! = Int(final.text!)
        if (finalval == nil)
        {
            finalval = 0
        }
        
        var w4val : Int! = Int(w4.text!)
        if (w4val == nil)
        {
            w4val = 0
        }
        
        var oth1val : Int! = Int(oth1.text!)
        if (oth1val == nil)
        {
            oth1val = 0
        }
        
        var w5val : Int! = Int(w5.text!)
        if (w5val == nil)
        {
            w5val = 0
        }
        
        var oth2val : Int! = Int(oth2.text!)
        if (oth2val == nil)
        {
            oth2val = 0
        }
        
        var w6val : Int! = Int(w6.text!)
        if (w6val == nil)
        {
            w6val = 0
        }
        
        let weighttotal = (w1val + w2val + w3val + w4val + w5val + w6val)
        wtot.text = "\(weighttotal)%"
        
        let finalscore = ((hwval * w1val) + (cwval * w2val) + (midval * w3val) + (finalval * w4val) + (oth1val * w5val) + (oth2val * w6val))
        finscore.text = "\(finalscore / 100)%"
    }//FinalScore
}//ViewController

