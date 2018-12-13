//
//  ViewController.swift
//  class1204-02
//
//  Created by Yolanda H. on 2018/12/4.
//  Copyright © 2018 Yolanda H. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var alphaLLabel: UILabel!
    @IBOutlet weak var blueLLabel: UILabel!
    @IBOutlet weak var greenLLabel: UILabel!
    @IBOutlet weak var redLLabel: UILabel!
    
    @IBOutlet weak var leftAlphaSlider: UISlider!
    @IBOutlet weak var leftBlueSlider: UISlider!
    @IBOutlet weak var leftGreenSlider: UISlider!
    @IBOutlet weak var leftRedSlider: UISlider!
    
    @IBOutlet weak var alphaLabel: UILabel!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var changeView: UIImageView!
    @IBOutlet weak var rightView: UIImageView!
    @IBOutlet weak var leftView: UIImageView!
    
    @IBOutlet weak var rightLabel: UILabel!
    @IBOutlet weak var upLabel: UILabel!
    @IBOutlet weak var bottomLabel: UILabel!
    
    @IBOutlet weak var leftGraView: UIImageView!
    @IBOutlet weak var graView: UIImageView!
    @IBOutlet weak var finalRGraView: UIImageView!
    @IBOutlet weak var rightGraView: UIImageView!
    
    @IBOutlet weak var alphaSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var redSlider: UISlider!
    
    @IBOutlet weak var gradatioanSwitch: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    let graRightLayer = CAGradientLayer()
    let graRightFLayer = CAGradientLayer()
    let graLeftLayer = CAGradientLayer()
    
    @IBAction func funcRiGra(_ sender: UISwitch) {
        graRightLayer.frame = rightGraView.bounds
        graRightFLayer.frame = finalRGraView.bounds
        graLeftLayer.frame = graView.bounds
        if sender.isOn {
            alphaSlider.isEnabled = false
            redSlider.isEnabled = true
            greenSlider.isEnabled = true
            blueSlider.isEnabled = true
            leftRedSlider.isEnabled = true
            leftGreenSlider.isEnabled = true
            leftBlueSlider.isEnabled = true
            leftAlphaSlider.isEnabled = false
            alphaLabel.text = "1"
            alphaSlider.value = 1
            alphaLLabel.text = "1"
            leftAlphaSlider.value = 1
            rightLabel.text = "關閉漸層"
            upLabel.text = "上層漸變"
            bottomLabel.text = "下層漸變"
            changeView.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 0)
            rightView.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 0)
            leftView.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 0)
            
            graLeftLayer.colors = [UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor,UIColor.init(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor]
            graLeftLayer.startPoint = CGPoint(x: 1, y: 0)
            graLeftLayer.endPoint = CGPoint(x: 0, y: 1)
            graLeftLayer.locations = [0,0.4,0.55,1]
            graView.layer.addSublayer(graLeftLayer)
            //0.7,0.8,1-1,0.7,0.9,0.7,0.8,1
            //1,0.7,0.9-0.7,0.8,1
            graRightLayer.colors = [UIColor.init(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor]
            rightGraView.layer.addSublayer(graRightLayer)
            graRightFLayer.colors = [UIColor.init(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor]
            finalRGraView.layer.addSublayer(graRightFLayer)
        }
        else {
            alphaSlider.isEnabled = true
            redSlider.isEnabled = true
            greenSlider.isEnabled = true
            blueSlider.isEnabled = true
            leftRedSlider.isEnabled = true
            leftGreenSlider.isEnabled = true
            leftBlueSlider.isEnabled = true
            leftAlphaSlider.isEnabled = true
            rightLabel.text = "開啟漸層"
            upLabel.text = "右手美甲"
            bottomLabel.text = "左手美甲"
            changeView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: CGFloat(alphaSlider.value))
            rightView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: CGFloat(alphaSlider.value))
            leftView.backgroundColor = UIColor(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: CGFloat(leftAlphaSlider.value))
            
            graLeftLayer.colors = [UIColor.init(displayP3Red: 0.7, green: 0.8, blue: 1, alpha: 0).cgColor, UIColor.init(displayP3Red: 1, green: 0.7, blue: 0.9, alpha: 0).cgColor, UIColor.init(displayP3Red: 0.7, green: 0.8, blue: 1, alpha: 0).cgColor]
            graView.layer.addSublayer(graLeftLayer)
            
            graRightLayer.colors = [UIColor.init(displayP3Red: 0.4, green: 1, blue: 0.6, alpha: 0).cgColor, UIColor.init(displayP3Red: 1, green: 0.1, blue: 0.3, alpha: 0).cgColor, UIColor.init(displayP3Red: 0.4, green: 1, blue: 0.6, alpha: 0).cgColor]
            graView.layer.addSublayer(graRightLayer)
            
            graRightFLayer.colors = [UIColor.init(displayP3Red: 1, green: 0.1, blue: 0.3, alpha: 0).cgColor, UIColor.init(displayP3Red: 0.4, green: 0.9, blue: 0.7, alpha: 0).cgColor]
            finalRGraView.layer.addSublayer(graRightFLayer)
        }
    }
    
    
    @IBAction func alphaSliderFunc(_ sender: Any) {
       changeView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: CGFloat(alphaSlider.value))
        rightView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: CGFloat(alphaSlider.value))
        alphaLabel.text = String(format:"%.2f", alphaSlider.value)
        
    }
    @IBAction func blueSliderFunc(_ sender: Any) {
        if gradatioanSwitch.isOn {
            changeView.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 0)
            rightView.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 0)
            graRightLayer.frame = rightGraView.bounds
            graRightFLayer.frame = finalRGraView.bounds
            graRightLayer.colors = [UIColor.init(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor]
            rightGraView.layer.addSublayer(graRightLayer)
            graRightFLayer.colors = [UIColor.init(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor]
            finalRGraView.layer.addSublayer(graRightFLayer)
            leftView.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 0)
            graLeftLayer.frame = graView.bounds
            graLeftLayer.colors = [UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor,UIColor.init(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor]
            graLeftLayer.startPoint = CGPoint(x: 1, y: 0)
            graLeftLayer.endPoint = CGPoint(x: 0, y: 1)
            graLeftLayer.locations = [0,0.4,0.55,1]
            graView.layer.addSublayer(graLeftLayer)
        }
        else{
        changeView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: CGFloat(alphaSlider.value))
         rightView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: CGFloat(alphaSlider.value))
        }
        let blueInt = Int(blueSlider.value)
        blueLabel.text = String(blueInt)
        
    }
    @IBAction func greenSliderFunc(_ sender: Any) {
        if gradatioanSwitch.isOn {
            changeView.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 0)
            rightView.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 0)
            graRightLayer.frame = rightGraView.bounds
            graRightFLayer.frame = finalRGraView.bounds
            graRightLayer.colors = [UIColor.init(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor]
            rightGraView.layer.addSublayer(graRightLayer)
            graRightFLayer.colors = [UIColor.init(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor]
            finalRGraView.layer.addSublayer(graRightFLayer)
            leftView.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 0)
            graLeftLayer.frame = graView.bounds
            graLeftLayer.colors = [UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor,UIColor.init(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor]
            graLeftLayer.startPoint = CGPoint(x: 1, y: 0)
            graLeftLayer.endPoint = CGPoint(x: 0, y: 1)
            graLeftLayer.locations = [0,0.4,0.55,1]
            graView.layer.addSublayer(graLeftLayer)
        }
        else{
            changeView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: CGFloat(alphaSlider.value))
            rightView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: CGFloat(alphaSlider.value))
        }
        let greenInt = Int(greenSlider.value)
        greenLabel.text = String(greenInt)
        
        
    }
    
    @IBAction func redSliderFunc(_ sender: Any) {
        if gradatioanSwitch.isOn {
            changeView.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 0)
            rightView.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 0)
            graRightLayer.frame = rightGraView.bounds
            graRightFLayer.frame = finalRGraView.bounds
            graRightLayer.colors = [UIColor.init(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor]
            rightGraView.layer.addSublayer(graRightLayer)
            graRightFLayer.colors = [UIColor.init(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor]
            finalRGraView.layer.addSublayer(graRightFLayer)
            leftView.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 0)
            graLeftLayer.frame = graView.bounds
            graLeftLayer.colors = [UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor,UIColor.init(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor]
            graLeftLayer.startPoint = CGPoint(x: 1, y: 0)
            graLeftLayer.endPoint = CGPoint(x: 0, y: 1)
            graLeftLayer.locations = [0,0.4,0.55,1]
            graView.layer.addSublayer(graLeftLayer)
        }
        else{
            changeView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: CGFloat(alphaSlider.value))
            rightView.backgroundColor = UIColor(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: CGFloat(alphaSlider.value))
        }
        let redInt = Int(redSlider.value)
        redLabel.text = String(redInt)
        
    }
    
    @IBAction func funcAlphaLSlider(_ sender: Any) {
        leftView.backgroundColor = UIColor(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: CGFloat(leftAlphaSlider.value))
        alphaLLabel.text = String(format:"%.2f", leftAlphaSlider.value)
    }
    @IBAction func funcBlueLSlider(_ sender: Any) {
        if gradatioanSwitch.isOn{
            changeView.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 0)
            rightView.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 0)
            graRightLayer.frame = rightGraView.bounds
            graRightFLayer.frame = finalRGraView.bounds
            graRightLayer.colors = [UIColor.init(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor]
            rightGraView.layer.addSublayer(graRightLayer)
            graRightFLayer.colors = [UIColor.init(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor]
            finalRGraView.layer.addSublayer(graRightFLayer)
            leftView.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 0)
            graLeftLayer.frame = graView.bounds
            graLeftLayer.colors = [UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor,UIColor.init(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor]
            graLeftLayer.startPoint = CGPoint(x: 1, y: 0)
            graLeftLayer.endPoint = CGPoint(x: 0, y: 1)
            graLeftLayer.locations = [0,0.4,0.55,1]
            graView.layer.addSublayer(graLeftLayer)
        }
        else{
        leftView.backgroundColor = UIColor(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: CGFloat(leftAlphaSlider.value))
        }
        let blueLInt = Int(leftBlueSlider.value)
        blueLLabel.text = String(blueLInt)
    }
    @IBAction func funcGreenLSlider(_ sender: Any) {
        if gradatioanSwitch.isOn{
            changeView.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 0)
            rightView.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 0)
            graRightLayer.frame = rightGraView.bounds
            graRightFLayer.frame = finalRGraView.bounds
            graRightLayer.colors = [UIColor.init(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor]
            rightGraView.layer.addSublayer(graRightLayer)
            graRightFLayer.colors = [UIColor.init(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor]
            finalRGraView.layer.addSublayer(graRightFLayer)
            leftView.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 0)
            graLeftLayer.frame = graView.bounds
            graLeftLayer.colors = [UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor,UIColor.init(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor]
            graLeftLayer.startPoint = CGPoint(x: 1, y: 0)
            graLeftLayer.endPoint = CGPoint(x: 0, y: 1)
            graLeftLayer.locations = [0,0.4,0.55,1]
            graView.layer.addSublayer(graLeftLayer)
        }
        else{
            leftView.backgroundColor = UIColor(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: CGFloat(leftAlphaSlider.value))
        }
        let greenLInt = Int(leftGreenSlider.value)
        greenLLabel.text = String(greenLInt)
    }
    @IBAction func funcRedLSlider(_ sender: Any) {
        if gradatioanSwitch.isOn{
            changeView.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 0)
            rightView.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 0)
            graRightLayer.frame = rightGraView.bounds
            graRightFLayer.frame = finalRGraView.bounds
            graRightLayer.colors = [UIColor.init(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor]
            rightGraView.layer.addSublayer(graRightLayer)
            graRightFLayer.colors = [UIColor.init(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor]
            finalRGraView.layer.addSublayer(graRightFLayer)
            leftView.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 0)
            graLeftLayer.frame = graView.bounds
            graLeftLayer.colors = [UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor,UIColor.init(displayP3Red: CGFloat(redSlider.value/255), green: CGFloat(greenSlider.value/255), blue: CGFloat(blueSlider.value/255), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: 1).cgColor]
            graLeftLayer.startPoint = CGPoint(x: 1, y: 0)
            graLeftLayer.endPoint = CGPoint(x: 0, y: 1)
            graLeftLayer.locations = [0,0.4,0.55,1]
            graView.layer.addSublayer(graLeftLayer)
        }
        else{
            leftView.backgroundColor = UIColor(displayP3Red: CGFloat(leftRedSlider.value/255), green: CGFloat(leftGreenSlider.value/255), blue: CGFloat(leftBlueSlider.value/255), alpha: CGFloat(leftAlphaSlider.value))
        }
        let redLInt = Int(leftRedSlider.value)
        redLLabel.text = String(redLInt)
    }
    
    
    @IBAction func randomLButton(_ sender: UIButton) {
        let redLrandom = Double.random(in: 0...1)
        let greenLrandom = Double.random(in: 0...1)
        let blueLrandom = Double.random(in: 0...1)
        let alphaLrandom = Double.random(in: 0...1)
        let redRandom = Int(redLrandom * 255)
        let greenRandom = Int(greenLrandom * 255)
        let blueRandom = Int(blueLrandom * 255)
        if gradatioanSwitch .isOn{
            upLabel.text = "上層漸變"
            bottomLabel.text = "下層漸變"
            let redRrandom = Double.random(in: 0...1)
            let greenRrandom = Double.random(in: 0...1)
            let blueRrandom = Double.random(in: 0...1)
            
            graRightLayer.frame = rightGraView.bounds
            graRightFLayer.frame = finalRGraView.bounds
            graRightLayer.colors = [UIColor.init(displayP3Red: CGFloat(redRrandom), green: CGFloat(greenRrandom), blue: CGFloat(blueRrandom), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(redLrandom), green: CGFloat(greenLrandom), blue: CGFloat(blueLrandom), alpha: 1).cgColor]
            rightGraView.layer.addSublayer(graRightLayer)
            graRightFLayer.colors = [UIColor.init(displayP3Red: CGFloat(redRrandom), green: CGFloat(greenRrandom), blue: CGFloat(blueRrandom), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(redLrandom), green: CGFloat(greenLrandom), blue: CGFloat(blueLrandom), alpha: 1).cgColor]
            finalRGraView.layer.addSublayer(graRightFLayer)
            leftView.backgroundColor = UIColor(displayP3Red: 1, green: 1, blue: 1, alpha: 0)
            graLeftLayer.frame = graView.bounds
            graLeftLayer.colors = [UIColor.init(displayP3Red: CGFloat(redLrandom), green: CGFloat(greenLrandom), blue: CGFloat(blueLrandom), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(redRrandom), green: CGFloat(greenRrandom), blue: CGFloat(blueRrandom), alpha: 1).cgColor, UIColor.init(displayP3Red: CGFloat(redLrandom), green: CGFloat(greenLrandom), blue: CGFloat(blueLrandom), alpha: 1).cgColor]
            graLeftLayer.startPoint = CGPoint(x: 1, y: 0)
            graLeftLayer.endPoint = CGPoint(x: 0, y: 1)
            graLeftLayer.locations = [0,0.4,0.55,1]
            graView.layer.addSublayer(graLeftLayer)
            let redRInt = Int(redRrandom * 255)
            let greenRInt = Int(greenRrandom * 255)
            let blueRInt = Int(blueRrandom * 255)
            alphaLabel.text = "1"
            redLabel.text = String(redRInt)
            greenLabel.text = String(greenRInt)
            blueLabel.text = String(blueRInt)
            alphaSlider.value = 1
            redSlider.value = Float(redRrandom) * 255
            greenSlider.value = Float(greenRrandom) * 255
            blueSlider.value = Float(blueRrandom) * 255
            
            alphaLLabel.text = "1"
            redLLabel.text = String(redRandom)
            greenLLabel.text = String(greenRandom)
            blueLLabel.text = String(blueRandom)
            leftAlphaSlider.value = 1
            leftRedSlider.value = Float(redLrandom) * 255
            leftGreenSlider.value = Float(greenLrandom) * 255
            leftBlueSlider.value = Float(blueLrandom) * 255
        }
        else{
            upLabel.text = "右手美甲"
            bottomLabel.text = "左手美甲"
        leftView.backgroundColor = UIColor(displayP3Red: CGFloat(redLrandom), green: CGFloat(greenLrandom), blue: CGFloat(blueLrandom), alpha: CGFloat(alphaLrandom))
        rightView.backgroundColor = leftView.backgroundColor
        changeView.backgroundColor = leftView.backgroundColor
        
        redLLabel.text = String(redRandom)
        greenLLabel.text = String(greenRandom)
        blueLLabel.text = String(blueRandom)
        alphaLLabel.text = String(format:"%.2f", alphaLrandom)
        redLabel.text = String(redRandom)
        greenLabel.text = String(greenRandom)
        blueLabel.text = String(blueRandom)
        alphaLabel.text = String(format:"%.2f", alphaLrandom)
        leftRedSlider.value = Float(redLrandom) * 255
        leftGreenSlider.value = Float(greenLrandom) * 255
        leftBlueSlider.value = Float(blueLrandom) * 255
        leftAlphaSlider.value = Float(alphaLrandom)
        redSlider.value = Float(redLrandom) * 255
        greenSlider.value = Float(greenLrandom) * 255
        blueSlider.value = Float(blueLrandom) * 255
        alphaSlider.value = Float(alphaLrandom)
        }
        
    }
}

