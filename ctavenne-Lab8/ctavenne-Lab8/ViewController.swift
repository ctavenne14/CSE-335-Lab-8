//
//  ViewController.swift
//  ctavenne-Lab8
//
//  Created by Cody Tavenner on 4/18/19.
//  Copyright © 2019 Cody Tavenner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var monkey: UIImageView!
    @IBOutlet weak var apple1: UIImageView!
    @IBOutlet weak var apple2: UIImageView!
    @IBOutlet weak var apple3: UIImageView!
    @IBOutlet weak var apple4: UIImageView!
    @IBOutlet weak var timerVal: UILabel!
    
    var timer: Timer?
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.monkey.image = UIImage(named: "appleMonkey.jpeg")
        self.apple1.image = UIImage(named: "apple.png")
        self.apple2.image = UIImage(named: "apple.png")
        self.apple3.image = UIImage(named: "apple.png")
        self.apple4.image = UIImage(named: "apple.png")

        timer = Timer();
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.count), userInfo: nil, repeats: true)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    @objc func count()
    {
        counter = counter + 1
        let seconds = Int(counter) % 60
        timerVal.text  = String(format:"%02i", seconds)
    }
    @IBAction func up(_ sender: UIButton) {
        var frame  = self.monkey.frame
        frame.origin.y -= 10
        self.monkey.frame =  frame
        
        if(viewIntersectsView(monkey, second_View: apple1))
        {
            self.apple1.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: apple2))
        {
            self.apple2.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: apple3))
        {
            self.apple3.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: apple4))
        {
            self.apple4.isHidden = true
        }
        if(self.apple1.isHidden == true && self.apple2.isHidden == true && self.apple3.isHidden == true && self.apple4.isHidden == true && counter <= 10)
        {
            // show the alert controller to select an image for the row
            let alertController = UIAlertController(title: "You Won", message: "Congratulations", preferredStyle: .alert)
            
            
            let cancelAction = UIAlertAction(title: "Ok", style: .default) { (action) in
            }
            
            alertController.addAction(cancelAction)
            
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    @IBAction func down(_ sender: UIButton) {
        var frame  = self.monkey.frame
        frame.origin.y += 10
        self.monkey.frame =  frame
        
        if(viewIntersectsView(monkey, second_View: apple1))
        {
            self.apple1.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: apple2))
        {
            self.apple2.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: apple3))
        {
            self.apple3.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: apple4))
        {
            self.apple4.isHidden = true
        }
        if(self.apple1.isHidden == true && self.apple2.isHidden == true && self.apple3.isHidden == true && self.apple4.isHidden == true && counter <= 10)
        {
            // show the alert controller to select an image for the row
            let alertController = UIAlertController(title: "You Won", message: "Congratulations", preferredStyle: .alert)
            
            
            let cancelAction = UIAlertAction(title: "Ok", style: .default) { (action) in
            }
            
            alertController.addAction(cancelAction)
            
            self.present(alertController, animated: true, completion: nil)
        }
    }
    @IBAction func left(_ sender: UIButton) {
        var frame  = self.monkey.frame
        frame.origin.x -= 10
        self.monkey.frame =  frame
        
        if(viewIntersectsView(monkey, second_View: apple1))
        {
            self.apple1.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: apple2))
        {
            self.apple2.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: apple3))
        {
            self.apple3.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: apple4))
        {
            self.apple4.isHidden = true
        }
        if(self.apple1.isHidden == true && self.apple2.isHidden == true && self.apple3.isHidden == true && self.apple4.isHidden == true && counter <= 10)
        {
            // show the alert controller to select an image for the row
            let alertController = UIAlertController(title: "You Won", message: "Congratulations", preferredStyle: .alert)
            
            
            let cancelAction = UIAlertAction(title: "Ok", style: .default) { (action) in
            }
            
            alertController.addAction(cancelAction)
            
            self.present(alertController, animated: true, completion: nil)
        }
    }
    @IBAction func right(_ sender: UIButton) {
        var frame  = self.monkey.frame
        frame.origin.x += 10
        self.monkey.frame =  frame
        
        if(viewIntersectsView(monkey, second_View: apple1))
        {
            self.apple1.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: apple2))
        {
            self.apple2.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: apple3))
        {
            self.apple3.isHidden = true
        }
        if(viewIntersectsView(monkey, second_View: apple4))
        {
            self.apple4.isHidden = true
        }
        if(self.apple1.isHidden == true && self.apple2.isHidden == true && self.apple3.isHidden == true && self.apple4.isHidden == true && counter <= 10)
        {
            // show the alert controller to select an image for the row
            let alertController = UIAlertController(title: "You Won", message: "Congratulations", preferredStyle: .alert)
            
            
            let cancelAction = UIAlertAction(title: "Ok", style: .default) { (action) in
            }
            
            alertController.addAction(cancelAction)
            
            self.present(alertController, animated: true, completion: nil)
        }
    }
    
    func viewIntersectsView(_ first_View: UIView, second_View:UIView) -> Bool
    {
        return first_View.frame.intersects(second_View.frame)
    }
}

