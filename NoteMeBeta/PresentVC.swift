//
//  ViewController.swift
//  NoteMeBeta
//
//  Created by George Popkich on 18.10.23.
//

import UIKit

final class PresentVC: UIViewController {
    
    private var logoImageView: UIImageView  = {
        let image = UIImage(named: "logo")
        let imageView = UIImageView()
        imageView.image = image
        imageView.contentMode = .scaleAspectFill
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private var welcomMassage: UILabel = {
        let label = UILabel()
        label.text = "Welcom back!"
        label.font  = UIFont(name: "Helvetica", size: 25)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()

    private var userEmailTextField: UITextField = {
        let textField = UITextField()
        textField.text = "Enter E-mail"
        textField.font = UIFont(name: "Helvetica", size: 15)
        textField.textColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private var userPasswordTextField: UITextField = {
        let textField = UITextField()
        textField.text = "Enter Password"
        textField.font = UIFont(name: "Helvetica", size: 15)
        textField.textColor = UIColor(red: 0.8, green: 0.8, blue: 0.8, alpha: 1)
        textField.translatesAutoresizingMaskIntoConstraints = false
        return textField
    }()
    
    private var forgorPasswordButton: UIButton = {
        let button = UIButton()
        button.setTitle("ForgotPassword", for: .normal)
        button.titleLabel?.font = UIFont(name: "Helvetica", size: 15)
        button.setTitleColor(UIColor(red: 0.667, green: 0.667, blue: 0.667, alpha: 1), for: .normal)
        button.underline()
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUp()
        
    }
    
    
    
    
    
    
    private func setUp() {
        view.backgroundColor = UIColor.white

        let userRegView = UIView.createRegistrationView()
        let topView = UIView.createTopView()
        let bottomView = UIView.createTopView()
        self.view.addSubview(self.welcomMassage)
        self.view.addSubview(self.logoImageView)
        self.view.addSubview(topView)
        self.view.addSubview(bottomView)
        self.view.addSubview(userRegView)
        NSLayoutConstraint.activate([
            self.logoImageView.topAnchor.constraint(equalTo: self.view.topAnchor, constant: 116),
            self.logoImageView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: UIScreen.main.bounds.width / 2 - 96/2),
            self.logoImageView.widthAnchor.constraint(equalToConstant: 96),
            self.welcomMassage.topAnchor.constraint(equalTo: self.logoImageView.bottomAnchor, constant: 72),
            self.welcomMassage.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 97),
           
            userRegView.topAnchor.constraint(equalTo: self.welcomMassage.bottomAnchor, constant: 8),
            userRegView.leftAnchor.constraint(equalTo: self.view.leftAnchor, constant: 16),
            userRegView.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 32),
            userRegView.heightAnchor.constraint(equalToConstant: 165),
            
            topView.widthAnchor.constraint(equalToConstant: self.view.bounds.width),
            topView.topAnchor.constraint(equalTo: self.view.topAnchor),
            topView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor),
            bottomView.widthAnchor.constraint(equalToConstant: self.view.bounds.width),
            bottomView.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor),
            bottomView.bottomAnchor.constraint(equalTo: self.view.bottomAnchor),
            ])
        
        
        userRegView.addSubview(userEmailTextField)
        NSLayoutConstraint.activate([
            self.userEmailTextField.topAnchor.constraint(equalTo: userRegView.topAnchor, constant: 35),
            self.userEmailTextField.leftAnchor.constraint(equalTo: userRegView.leftAnchor, constant: 16),
            self.userEmailTextField.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 64),
            self.userEmailTextField.heightAnchor.constraint(equalToConstant: 17),
        ])
        
        userRegView.addSubview(userPasswordTextField)
        NSLayoutConstraint.activate([
            self.userPasswordTextField.topAnchor.constraint(equalTo: userRegView.topAnchor, constant: 91),
            self.userPasswordTextField.leftAnchor.constraint(equalTo: userRegView.leftAnchor, constant: 16),
            self.userPasswordTextField.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 64),
            self.userPasswordTextField.heightAnchor.constraint(equalToConstant: 17),
        ])
        
        userRegView.addSubview(forgorPasswordButton)
        NSLayoutConstraint.activate([
            self.forgorPasswordButton.topAnchor.constraint(equalTo: userRegView.topAnchor, constant: 132),
            self.forgorPasswordButton.leftAnchor.constraint(equalTo: userRegView.leftAnchor, constant: 8),
            self.forgorPasswordButton.widthAnchor.constraint(equalToConstant: 123),
            self.forgorPasswordButton.heightAnchor.constraint(equalToConstant: 17),
        ])
 
        
    }

}

