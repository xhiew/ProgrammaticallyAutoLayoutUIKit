//
//  ViewController.swift
//  ProgramingAutoLayoutUIKit
//
//  Created by xhieu21 on 05/08/2022.
//

import Foundation
import UIKit

class ViewController: UIViewController {
    
    let btnBack: UIButton = {
        let btnBack = UIButton()
        btnBack.setImage(UIImage(named: "btn_back"), for: .normal)
        btnBack.translatesAutoresizingMaskIntoConstraints = false
        return btnBack
    }()
    
    let stepView: UIView = {
       let stepView = UIView()
        stepView.translatesAutoresizingMaskIntoConstraints = false
        stepView.backgroundColor = UIColor.systemGray6
        stepView.layer.cornerRadius = 10
        return stepView
    }()
    
    let stepLabel: UILabel = {
        let stepLabel = UILabel()
        stepLabel.text = "Bước 1/3"
        stepLabel.font = UIFont.systemFont(ofSize: 13)
        stepLabel.textAlignment = .center
        stepLabel.textColor = UIColor.darkGray
        stepLabel.translatesAutoresizingMaskIntoConstraints = false
        return stepLabel
    }()
    
    let titleLabel: UILabel = {
       let titleLabel = UILabel()
        titleLabel.text = "Điền số điện thoại của bạn và tiếp tục"
        titleLabel.numberOfLines = 0
        titleLabel.font = UIFont.boldSystemFont(ofSize: 24)
        titleLabel.textAlignment = .left
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        return titleLabel
    }()
    
    let inputPhoneNumberView: UIView = {
        let inputPhoneNumberView = UIView()
        inputPhoneNumberView.layer.cornerRadius = 15
        inputPhoneNumberView.layer.borderWidth = 1
        inputPhoneNumberView.layer.borderColor = .init(red: 0, green: 255, blue: 0, alpha: 1)
        inputPhoneNumberView.translatesAutoresizingMaskIntoConstraints = false
        return inputPhoneNumberView
    }()
    
    let flagVN: UIImageView = {
        let flagVN = UIImageView()
        flagVN.image = UIImage(named: "flag_vn")
        flagVN.translatesAutoresizingMaskIntoConstraints = false
        return flagVN
    }()
    
    let lineView: UIView = {
       let lineView = UIView()
        lineView.backgroundColor = .systemGray3
        lineView.translatesAutoresizingMaskIntoConstraints = false
        return lineView
    }()
    
    let phoneNumberTextFiled: UITextField = {
       let phoneNumberTextField = UITextField()
        phoneNumberTextField.placeholder = "Nhập số điện thoại"
        phoneNumberTextField.keyboardType = .numberPad
        phoneNumberTextField.font = UIFont.systemFont(ofSize: 15)
        phoneNumberTextField.translatesAutoresizingMaskIntoConstraints = false
        return phoneNumberTextField
    }()
    
    let noteLabel: UILabel = {
       let noteLabel = UILabel()
        noteLabel.text = "Bạn nên sử dụng số điện thoại chính chủ để khoản vay được phê duyệt nhanh hơn !"
        noteLabel.numberOfLines = 0
        noteLabel.font = UIFont.systemFont(ofSize: 13)
        noteLabel.textAlignment = .left
        noteLabel.translatesAutoresizingMaskIntoConstraints = false
        return noteLabel
    }()
    
    let bottomView: UIView = {
       let bottomView = UIView()
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        return bottomView
    }()
    
    let noteLabel2: UILabel = {
       let noteLabel2 = UILabel()
        noteLabel2.text = "Bấm vào nút tiếp tục nếu bạn đồng ý với Điều khoản của Credita"
        noteLabel2.textAlignment = .center
        noteLabel2.font = UIFont.systemFont(ofSize: 13)
        noteLabel2.numberOfLines = 0
        noteLabel2.translatesAutoresizingMaskIntoConstraints = false
        return noteLabel2
    }()
    
    let btnNext: UIButton = {
       let btnNext = UIButton()
        btnNext.setTitle("Tiếp tục", for: .normal)
        btnNext.backgroundColor = UIColor.systemGray4
        btnNext.layer.cornerRadius = 15
        btnNext.translatesAutoresizingMaskIntoConstraints = false
        return btnNext
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //
        addConstraints()
        phoneNumberTextFiled.becomeFirstResponder()
    }
}

//MARK: - Add Constraints
extension ViewController {
    func addConstraints() {
        
        // add view
        view.addSubview(btnBack)
        view.addSubview(stepView)
        stepView.addSubview(stepLabel)
        view.addSubview(titleLabel)
        view.addSubview(inputPhoneNumberView)
        inputPhoneNumberView.addSubview(flagVN)
        inputPhoneNumberView.addSubview(lineView)
        inputPhoneNumberView.addSubview(phoneNumberTextFiled)
        view.addSubview(noteLabel)
        view.addSubview(bottomView)
        bottomView.addSubview(noteLabel2)
        bottomView.addSubview(btnNext)
        
        // button Back
        btnBack.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 14).isActive = true
        btnBack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        
        // step view
        stepView.centerYAnchor.constraint(equalTo: btnBack.centerYAnchor).isActive = true
        stepView.widthAnchor.constraint(equalToConstant: 80).isActive = true
        stepView.heightAnchor.constraint(equalToConstant: 28).isActive = true
        view.trailingAnchor.constraint(equalTo: stepView.trailingAnchor, constant: 16).isActive = true
        stepLabel.centerXAnchor.constraint(equalTo: stepView.centerXAnchor).isActive = true
        stepLabel.centerYAnchor.constraint(equalTo: stepView.centerYAnchor).isActive = true
        
        // title Label
        titleLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 16).isActive = true
        titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 59).isActive = true
        view.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 71).isActive = true
        
        // input phone number
        inputPhoneNumberView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputPhoneNumberView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        view.trailingAnchor.constraint(equalTo: inputPhoneNumberView.trailingAnchor, constant: 16).isActive = true
        inputPhoneNumberView.heightAnchor.constraint(equalToConstant: 52).isActive = true
        inputPhoneNumberView.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 23).isActive = true
        flagVN.widthAnchor.constraint(equalToConstant: 28).isActive = true
        flagVN.heightAnchor.constraint(equalToConstant: 28).isActive = true
        flagVN.centerYAnchor.constraint(equalTo: inputPhoneNumberView.centerYAnchor).isActive = true
        flagVN.leadingAnchor.constraint(equalTo: inputPhoneNumberView.leadingAnchor, constant: 16).isActive = true
        lineView.widthAnchor.constraint(equalToConstant: 1).isActive = true
        lineView.heightAnchor.constraint(equalToConstant: 30).isActive = true
        lineView.centerYAnchor.constraint(equalTo: inputPhoneNumberView.centerYAnchor).isActive = true
        lineView.leadingAnchor.constraint(equalTo: flagVN.trailingAnchor, constant: 12).isActive = true
        phoneNumberTextFiled.trailingAnchor.constraint(equalTo: inputPhoneNumberView.trailingAnchor, constant: 10).isActive = true
        phoneNumberTextFiled.leadingAnchor.constraint(equalTo: lineView.trailingAnchor, constant: 12).isActive = true
        phoneNumberTextFiled.centerYAnchor.constraint(equalTo: inputPhoneNumberView.centerYAnchor).isActive = true
        phoneNumberTextFiled.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        // note label
        noteLabel.topAnchor.constraint(equalTo: inputPhoneNumberView.bottomAnchor, constant: 8).isActive = true
        noteLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        view.trailingAnchor.constraint(equalTo: noteLabel.trailingAnchor, constant: 16).isActive = true
        
        // điều khoản + button tiếp tục
        bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
        view.safeAreaLayoutGuide.bottomAnchor.constraint(equalTo: bottomView.bottomAnchor, constant: 16).isActive = true
        view.trailingAnchor.constraint(equalTo: bottomView.trailingAnchor, constant: 16).isActive = true
        noteLabel2.topAnchor.constraint(equalTo: bottomView.topAnchor).isActive = true
        noteLabel2.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor).isActive = true
        bottomView.trailingAnchor.constraint(equalTo: noteLabel2.trailingAnchor).isActive = true
        
        btnNext.topAnchor.constraint(equalTo: noteLabel2.bottomAnchor, constant: 13).isActive = true
        btnNext.leadingAnchor.constraint(equalTo: bottomView.leadingAnchor).isActive = true
        bottomView.trailingAnchor.constraint(equalTo: btnNext.trailingAnchor).isActive = true
        bottomView.bottomAnchor.constraint(equalTo: btnNext.bottomAnchor).isActive = true
        btnNext.heightAnchor.constraint(equalToConstant: 44).isActive = true
    }
}
