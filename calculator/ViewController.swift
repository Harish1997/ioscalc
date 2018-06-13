//
//  ViewController.swift
//  calculator
//
//  Created by Harish Ananth on 13/06/18.
//  Copyright © 2018 harish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var numonscreen:Double=0;
    var prev:Double=0;
    var perform=false;
    var operation=0;
    
    @IBOutlet weak var label: UILabel!
    @IBAction func numbers(_ sender: UIButton)
    {
        if perform==true{
            label.text=String(sender.tag-1)
            numonscreen=Double(label.text!)!
            perform=false
        }
        else{
            label.text=label.text! + String(sender.tag-1)
            numonscreen=Double(label.text!)!
        }
        
    }
    
    @IBAction func buttons(_ sender: UIButton)
    {
        if(label.text != "" && sender.tag != 100 && sender.tag != 15)
        {
            prev=Double(label.text!)!
            if sender.tag==11{//divide
                label.text="/"
            }
            else if sender.tag==12{//mul
                label.text="x"
            }
            else if sender.tag==13{//sub
                label.text="-"
            }
            else if sender.tag==14{//add
                label.text="+";
            }
            perform=true;
            operation=sender.tag
        }
        else if sender.tag==15{
            if operation==11{
              label.text=String(prev/numonscreen)
            }
            if operation==12{
                label.text=String(prev*numonscreen)
            }
            if operation==13{
                label.text=String(prev-numonscreen)
            }
            if operation==14{
                label.text=String(prev+numonscreen)
            }
        }
        else if sender.tag==100{
            label.text=""
            prev=0
            operation=0
            numonscreen=0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

