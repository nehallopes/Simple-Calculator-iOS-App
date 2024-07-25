//
//  ViewController.swift
//  HW3
//
//  Created by Rohan Panchal on 1/22/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        Clrr()
    }

    var storeData:String = ""
    var countt:Int = 0
    
    func Clrr() {  //Here is the function to perform clear operation
        storeData = ""
        Resultt.text = "0"
        countt = 0
    }
    
    func LabelDisplay(displayy : String) {   //Here is the function to display desired output in the label
        storeData = storeData + displayy
        Resultt.text = storeData
    }
    
    func equalsToo() {        //Here is the function that gives out results according to users input
        let operandD = storeData.components(separatedBy: "+")
        let valuz = operandD.compactMap {Int($0)}

        if let lstNumb = valuz.last {
            if countt == 0 {
                var Anss = 0
                for numb in valuz {
                    Anss += numb
                }
                Resultt.text = "\(Anss)"
            } else {
                let addEquals = Resultt.text.flatMap {Int($0)} ?? 0
                let addsupTo = addEquals + lstNumb
                Resultt.text = "\(addsupTo)"
            }
            countt += 1
        }
    }
    
     //Below are all label and buttons
       
    @IBOutlet weak var Resultt: UILabel!
    
    @IBAction func btn_1(_ sender: Any) {
        LabelDisplay(displayy : "1")
    }
                    
    @IBAction func btn_2(_ sender: Any) {
        LabelDisplay(displayy : "2")
    }
       
    @IBAction func btn_3(_ sender: Any) {
        LabelDisplay(displayy : "3")
    }
           
    @IBAction func btn_4(_ sender: Any) {
        LabelDisplay(displayy : "4")
    }
    
    @IBAction func btn_5(_ sender: Any) {
        LabelDisplay(displayy : "5")
    }
       
    @IBAction func btn_6(_ sender: Any) {
        LabelDisplay(displayy : "6")
    }
    
    @IBAction func btn_7(_ sender: Any) {
        LabelDisplay(displayy : "7")
    }
             
    @IBAction func btn_8(_ sender: Any) {
        LabelDisplay(displayy : "8")
    }
    
    @IBAction func btn_9(_ sender: Any) {
        LabelDisplay(displayy : "9")
    }
    
    @IBAction func btn_0(_ sender: Any) {
        LabelDisplay(displayy : "0")
    }
    
    @IBAction func btn_pluss(_ sender: Any) {
        LabelDisplay(displayy : "+")
        countt = 0
    }
    
    @IBAction func btn_equall(_ sender: Any) {
        equalsToo()   //Here we are calling equalsToo function
    }
    
    @IBAction func btn_clearr(_ sender: Any) {
        Clrr()  //Here we are calling Clrr function
    }
    
}

