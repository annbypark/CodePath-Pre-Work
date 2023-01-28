//
//  ViewController.swift
//  Introduction-CodePath
//
//  Created by Annabelle Park on 1/27/23.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var morePetsStepper: UIStepper!
    @IBAction func stepperDidChange(_ sender: UIStepper) {
        numberOfPetsLabel.text = "\(Int(sender.value))"
    }
    @IBOutlet weak var morePetsSwitch: UISwitch!
    @IBOutlet weak var firstNameTextField: UITextField!
    @IBOutlet weak var lastNameTextField: UITextField!
    @IBOutlet weak var schoolNameTextField: UITextField!
    @IBOutlet weak var yearSegmentedControl: UISegmentedControl!
    @IBOutlet weak var favoriteColorTextField: UITextField!
    @IBOutlet weak var favoriteHobbyTextField: UITextField!
    @IBOutlet weak var numberOfPetsLabel: UILabel!
    @IBAction func introduceDidTapped(_ sender: UIButton) {
        // Lets us choose the title we have selected from the segmented control
        // In our example that is whether it is first, second, third or forth
        let year = yearSegmentedControl.titleForSegment(at: yearSegmentedControl.selectedSegmentIndex)
                
        // Creating a constant of type string that holds an introduction. The introduction receives the values from the outlet connections.
        let introduction = "Hi! I'm \(firstNameTextField.text!) \(lastNameTextField.text!), and this is my \(year!) year attending \(schoolNameTextField.text!). I own \(numberOfPetsLabel.text!) lovely cats that I love very much. It's definitely \(morePetsSwitch.isOn) that I want more pets. My favorite color is \(favoriteColorTextField.text!) and my favorite thing to do in my free time is \(favoriteHobbyTextField.text!) :)."
        
        // Creates the alert where we pass in our message, which our introduction.
        let alertController = UIAlertController(title: "My Introduction", message: introduction, preferredStyle: .alert)
                
        // A way to dismiss the box once it pops up
        let action = UIAlertAction(title: "Nice to meet you!", style: .default, handler: nil)
                
        // Passing this action to the alert controller so it can be dismissed
        alertController.addAction(action)
                
        present(alertController, animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

