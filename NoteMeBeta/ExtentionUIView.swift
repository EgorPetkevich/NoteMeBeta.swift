//
//  ExtentionUIView.swift
//  NoteMeBeta
//
//  Created by George Popkich on 18.10.23.
//

import UIKit

extension UIView{
    static func createTopView() -> UIView{
        let view = UIView()
        view.backgroundColor = UIColor.black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    static func createBottomView() -> UIView{
        let view = UIView()
        view.backgroundColor = UIColor.black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
    
    static func createRegistrationView() -> UIView{
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        let emailLable = UILabel()
        emailLable.text = "E-mail"
        emailLable.textColor = UIColor.black
        emailLable.font = UIFont(name: "Helvetica", size: 13)
        emailLable.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(emailLable)
        NSLayoutConstraint.activate([
            emailLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 16),
            emailLable.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            emailLable.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 64),
            emailLable.heightAnchor.constraint(equalToConstant: 15),
        ])
        let passwordLable = UILabel()
        passwordLable.text = "Password"
        passwordLable.font = UIFont(name: "Helvetica", size: 13)
        passwordLable.textColor = UIColor.black
        passwordLable.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(passwordLable)
        NSLayoutConstraint.activate([
            passwordLable.topAnchor.constraint(equalTo: view.topAnchor, constant: 72),
            passwordLable.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            passwordLable.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 64),
            passwordLable.heightAnchor.constraint(equalToConstant: 15),
        ])
        
        let emailSeparator = UIView.separatorView()
        view.addSubview(emailSeparator)
        NSLayoutConstraint.activate([
            emailSeparator.heightAnchor.constraint(equalToConstant: 1),
            emailSeparator.topAnchor.constraint(equalTo: view.topAnchor, constant: 56),
            emailSeparator.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            emailSeparator.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 64),
        ])
        
        let passwordlSeparator = UIView.separatorView()
        view.addSubview(passwordlSeparator)
        NSLayoutConstraint.activate([
            passwordlSeparator.heightAnchor.constraint(equalToConstant: 1),
            passwordlSeparator.topAnchor.constraint(equalTo: view.topAnchor, constant: 112),
            passwordlSeparator.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16),
            passwordlSeparator.widthAnchor.constraint(equalToConstant: UIScreen.main.bounds.width - 64),
        ])
        
        
        return view
    }
    
    static func separatorView() -> UIView{
        let view = UIView()
        view.backgroundColor = .black
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
}



