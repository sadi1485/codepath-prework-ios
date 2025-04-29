//
//  ViewController.swift
//  MyCodepathProject
//
//  Created by Sadichchha Maharjan on 4/29/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        func changeColor() -> UIColor{

                let red = CGFloat.random(in: 0...1)
                let green = CGFloat.random(in: 0...1)
                let blue = CGFloat.random(in: 0...1)

                return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
            }
        let randomColor = changeColor()
            view.backgroundColor = randomColor
    }
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var collegeLabel: UILabel!
    @IBOutlet weak var jobLabel: UILabel!
    
    @IBAction func changeFontColor(_ sender: Any) {
        let currentColor = nameLabel.textColor

        // Toggle color: if it's black, change to white; else change to black
        let newColor: UIColor = (currentColor == UIColor.black) ? .white : .black

        nameLabel.textColor = newColor
        collegeLabel.textColor = newColor
        jobLabel.textColor = newColor
    }
    
    
}

