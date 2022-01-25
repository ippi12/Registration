//
//  ViewController.swift
//  Registration
//
//  Created by Компьютер on 24.01.2022.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    var loginField = UITextField()
    
    var passField = UITextField()
    
    var loginLabel = UILabel()
    
    var passLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createLoginField()
        createLoginLabel()
        createPassField()
        createPassLabel()
        createSignButton()
    }
    
    @objc func tappedButton(sender: UIButton) {
       

    }
    
// Функция, которая создаёт поле для ввода логина
    
    func createLoginField() {

        let loginFieldFrame = CGRect(x: 120, y: 300, width: 200, height: 50)
       
        loginField = UITextField(frame: loginFieldFrame)
        loginField.borderStyle = .roundedRect
        loginField.contentVerticalAlignment = .center
        loginField.placeholder = "Введите логин"
        view.addSubview(loginField)
    }
    
// Функция, которая создаёт поле для ввода пароля
    
    func createPassField() {
        
        let passFieldFrame = CGRect(x: 120, y: 360, width: 200, height: 50)
        
        passField = UITextField(frame: passFieldFrame)
        passField.borderStyle = .roundedRect
        passField.contentVerticalAlignment = .center
        passField.placeholder = "Введите пароль"
        view.addSubview(passField)
    }

// Функция, которая создаёт кнопку, отображающую поля для ввода логина и пароля
    
    func createSignButton() {
    
    let signButton = UIButton(frame: CGRect(x: 200, y: 500, width: 80, height: 40))
    
        signButton.backgroundColor = .systemBlue
        signButton.setTitle("Войти", for: .normal)
        signButton.setTitleColor(.black, for: .normal)
        signButton.titleLabel?.font = .boldSystemFont(ofSize: 18)
        signButton.addTarget(self, action: #selector(tappedButton), for: .touchUpInside)
        signButton.isEnabled = true
    
    view.addSubview(signButton)
    }
    
// Функция, которая создаёт Label - "Логин"
    func createLoginLabel() {
    
    let loginLabel = UILabel(frame: CGRect(x: 50, y: 300, width: 100, height: 50))
        
    loginLabel.text = "Логин"
    loginLabel.font = .boldSystemFont(ofSize: 18)
    view.addSubview(loginLabel)
    }
    
// Функция, которая создаёт Label - "Пароль"
    
    func createPassLabel() {
        
    let passLabel = UILabel(frame: CGRect(x: 50, y: 360, width: 100, height: 50))
        
    passLabel.text = "Пароль"
    passLabel.font = .boldSystemFont(ofSize: 18)
    view.addSubview(passLabel)
    }
    
   /* func setupUI() {
        loginField.translatesAutoresizingMaskIntoConstraints = false
        loginLabel.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(loginField)
        view.addSubview(loginLabel)
        NSLayoutConstraint.activate([
            loginField.heightAnchor.constraint(equalToConstant: 50),
            loginField.widthAnchor.constraint(equalToConstant: 200),
            loginField.leftAnchor.constraint(equalTo: <#T##NSLayoutAnchor<NSLayoutXAxisAnchor>#>, constant: <#T##CGFloat#>),
            loginField.leadingAnchor.constraint(equalTo: loginLabel.leadingAnchor, constant: 50),
            loginField.trailingAnchor.constraint(equalTo: loginLabel.trailingAnchor, constant: 50),
            
            loginLabel.heightAnchor.constraint(equalToConstant: 50),
            loginLabel.widthAnchor.constraint(equalToConstant: 100),
            loginLabel.bottomAnchor.constraint(equalTo: loginField.bottomAnchor, constant: 350),
            loginLabel.leadingAnchor.constraint(equalTo: loginField.leadingAnchor, constant: 50),
            loginLabel.trailingAnchor.constraint(equalTo: loginField.trailingAnchor, constant: 50)
        ])
        }*/
}
