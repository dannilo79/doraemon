//
//  ViewController.swift
//  doraAmo
//
//  Created by DanniLo on 2018/4/14.
//  Copyright © 2018年 AppCoda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var doraAmoImage: UIImageView!
    
    
    @IBOutlet weak var redSlider:  UISlider!
    @IBOutlet weak var buleSlider: UISlider!
    @IBOutlet weak var greenSlder: UISlider!
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBAction func colorChang(_ sender: UISlider) {
        
// String(format: "%.2f", redSlider.value)
        switch sender {
            case redSlider:
                resultLabel.text = "紅色: " + String(format: "%.2f", redSlider.value);
            break;
            case buleSlider:
               resultLabel.text = "藍色: " + String(format: "%.2f", buleSlider.value);
            break;
            case greenSlder:
               resultLabel.text = "綠色: " + String(format: "%.2f", greenSlder.value);
            break;

        default:
            resultLabel.text = ""
        }

        
        doraAmoImage.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlder.value), blue: CGFloat(buleSlider.value), alpha: 1)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func viewWillAppear(_ animated: Bool) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

