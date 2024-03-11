//
//  ViewController.swift
//  SimpleCalculator
//
//  Created by Gagana Ananda on 3/11/24.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: declaring the UI elements...
    var labelCalculator: UILabel! //"Basic Calculator" Label...
    var textFieldUser1: UITextField! //TextField for input 1...
    var textFieldUser2: UITextField!
    var OperatorsLabel: UILabel!//TextField for input 2...
    var buttonAddition: UIButton!//Button...Add
    var buttonSubtract: UIButton!//Button...Sub
    var buttonMultiply: UIButton!//Button...Mul
    var buttonDivide: UIButton!//Button...Div
    var resultLabel: UILabel! //Label to display the result
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //MARK: setting up UI elements...
        setupLabelTitle()
        setupTextFieldUser1()
        setupTextFieldUser2()
        setupOperatorsLabel()
        setupButtonAddition()
        setupButtonSubtraction()
        setupButtonMultipy()
        setupButtonDivide()
        setupResultLabel()
        
        //MARK: initializing the constraints...
        initConstraints()
    }
    
    //Defining the Label attributes...
    func setupLabelTitle() {
        labelCalculator = UILabel()
        labelCalculator.text = "Basic Calculator"
        labelCalculator.font = UIFont.systemFont(ofSize: 24)
        labelCalculator.textColor = .systemBlue
        labelCalculator.textAlignment = .center
        labelCalculator.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(labelCalculator)
    }
    
    //Defining the TextField attributes for input 1...
    func setupTextFieldUser1() {
        textFieldUser1 = UITextField()
        textFieldUser1.placeholder = "First Number"
        textFieldUser1.keyboardType = .decimalPad
        textFieldUser1.borderStyle = .roundedRect
        textFieldUser1.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textFieldUser1)
    }
    
    //Defining the TextField attributes for input 2...
    func setupTextFieldUser2() {
        textFieldUser2 = UITextField()
        textFieldUser2.placeholder = "Second Number"
        textFieldUser2.keyboardType = .decimalPad
        textFieldUser2.borderStyle = .roundedRect
        textFieldUser2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(textFieldUser2)
    }
    
    func setupOperatorsLabel() {
        OperatorsLabel = UILabel()
        OperatorsLabel.font = UIFont.systemFont(ofSize: 18)
        OperatorsLabel.text = "Operators"
        OperatorsLabel.textColor = .black
        OperatorsLabel.textAlignment = .center
        OperatorsLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(OperatorsLabel)
    }
    
    //Defining the Button attributes for Addition...
    func setupButtonAddition() {
        buttonAddition = UIButton(type: .system) //You need to set the type when you create a Button. We use default system button...
        buttonAddition.setTitle("Addition", for: .normal)
        buttonAddition.tintColor = .systemBlue
        buttonAddition.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonAddition)
        
        //MARK: adding action...
        buttonAddition.addTarget(self, action: #selector(onButtonAddTapped), for: .touchUpInside)
    }
    //Defining the Button attributes for Subtraction
    func setupButtonSubtraction() {
        buttonSubtract = UIButton(type: .system) //You need to set the type when you create a Button. We use default system button...
        buttonSubtract.setTitle("Subtraction", for: .normal)
        buttonSubtract.tintColor = .systemBlue
        buttonSubtract.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonSubtract)
        
        //MARK: Subtracting action...
        buttonSubtract.addTarget(self, action: #selector(onButtonSubTapped), for: .touchUpInside)
    }
    //Defining the Button attributes for multiplication
    func setupButtonMultipy() {
        buttonMultiply = UIButton(type: .system) //You need to set the type when you create a Button. We use default system button...
        buttonMultiply.setTitle("Multiply", for: .normal)
        buttonMultiply.tintColor = .systemBlue
        buttonMultiply.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonMultiply)
        
        //MARK: Multiplying action...
        buttonMultiply.addTarget(self, action: #selector(onButtonMulTapped), for: .touchUpInside)
    }
    //Defining the Button attributes for Division
    func setupButtonDivide() {
        buttonDivide = UIButton(type: .system) //You need to set the type when you create a Button. We use default system button...
        buttonDivide.setTitle("Divide", for: .normal)
        buttonDivide.tintColor = .systemBlue
        buttonDivide.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(buttonDivide)
        
        //MARK: adding action...
        buttonDivide.addTarget(self, action: #selector(onButtonDivTapped), for: .touchUpInside)
    }
    
    // Defining the Label attributes to display the result
    func setupResultLabel() {
        resultLabel = UILabel()
        resultLabel.font = UIFont.boldSystemFont(ofSize: 18)
        resultLabel.text = "Result"
        resultLabel.textColor = .black
        resultLabel.textAlignment = .center
        resultLabel.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(resultLabel)
    }
    
    //MARK: Initializing the constraints...
    func initConstraints() {
        NSLayoutConstraint.activate(
            [
                //MARK: constraints for labelHello...
                labelCalculator.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 32),
                labelCalculator.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
                
                //MARK: constraints for textFieldUser1...
                textFieldUser1.topAnchor.constraint(equalTo: labelCalculator.bottomAnchor, constant: 16),
                textFieldUser1.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
                
                //MARK: constraints for textFieldUser2...
                textFieldUser2.topAnchor.constraint(equalTo: textFieldUser1.bottomAnchor, constant: 16),

                textFieldUser2.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
                
                //MARK: constraints for resultLabel...
                OperatorsLabel.topAnchor.constraint(equalTo: textFieldUser2.bottomAnchor, constant: 16),
                OperatorsLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
                
                
                //MARK: constraints for buttonAdd...
                buttonAddition.topAnchor.constraint(equalTo: OperatorsLabel.bottomAnchor, constant: 16),
                buttonAddition.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
                
                //MARK: constraints for buttonSubtraction...
                buttonSubtract.topAnchor.constraint(equalTo: buttonAddition.bottomAnchor, constant: 16),
                buttonSubtract.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),

                //MARK: constraints for buttonMultipy...
                buttonMultiply.topAnchor.constraint(equalTo:buttonSubtract.bottomAnchor, constant: 16),
                buttonMultiply.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),

                //MARK: constraints for buttonDivide...
                buttonDivide.topAnchor.constraint(equalTo: buttonMultiply.bottomAnchor, constant: 16),
                buttonDivide.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),

                //MARK: constraints for resultLabel...
                resultLabel.topAnchor.constraint(equalTo: buttonDivide.bottomAnchor, constant: 16),
                resultLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor)
            ]
        )
    }
    
    //MARK: buttonClickMe tap action...
    @objc func onButtonAddTapped() {
        // MARK: fetching the text the user typed...
        guard let text1 = textFieldUser1.text,
              let text2 = textFieldUser2.text,
              !text1.isEmpty, !text2.isEmpty,
                        let number1 = Double(text1),
                        let number2 = Double(text2) else {
                      showErrorAlert()
                      return
        }
        
        let result = number1 + number2 // Perform arithmetic calculation, e.g., addition
        
        resultLabel.text = "\(result)"
    }
    
    //MARK: buttonClickMe tap action...
    @objc func onButtonSubTapped() {
        // MARK: fetching the text the user typed...
        guard let text1 = textFieldUser1.text,
              let text2 = textFieldUser2.text,
              !text1.isEmpty, !text2.isEmpty,
                        let number1 = Double(text1),
                        let number2 = Double(text2) else {
                      showErrorAlert()
                      return
        }
        
        let result = number1 - number2 // Perform arithmetic calculation, e.g., addition
        
        resultLabel.text = "\(result)"
    }
    
    //MARK: buttonClickMe tap action...
    @objc func onButtonMulTapped() {
        // MARK: fetching the text the user typed...
        guard let text1 = textFieldUser1.text,
              let text2 = textFieldUser2.text,
              !text1.isEmpty, !text2.isEmpty,
                        let number1 = Double(text1),
                        let number2 = Double(text2) else {
                      showErrorAlert()
                      return
        }
        
        let result = number1 * number2 // Perform arithmetic calculation, e.g., addition
        
        resultLabel.text = "\(result)"
    }
    
    //MARK: buttonClickMe tap action...
    @objc func onButtonDivTapped() {
        // MARK: fetching the text the user typed...
        guard let text1 = textFieldUser1.text,
              let text2 = textFieldUser2.text,
              !text1.isEmpty, !text2.isEmpty,
                        let number1 = Double(text1),
                        let number2 = Double(text2) else {
                      showErrorAlert()
                      return
        }
        
        let result = number1 / number2 // Perform arithmetic calculation, e.g., addition
        
        resultLabel.text = "\(result)"
    }
    
    //MARK: Alert controller logic...
    func showErrorAlert() {
        let alert = UIAlertController(title: "Error!", message: "The numbers cannot be empty!", preferredStyle: .alert)
        
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        
        self.present(alert, animated: true)
    }
}


