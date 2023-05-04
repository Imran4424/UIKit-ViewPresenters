//
//  SecondViewController.swift
//  ViewPresenters
//
//  Created by Shah Md Imran Hossain on 4/5/23.
//

import UIKit

class SecondViewController: UIViewController {
    var label = UILabel()
    var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupLayouts()
    }
    
    private func setupViews() {
        label = makeLabel(withText: "Second View Controller")
        
        button = makeButton(withText: "Third View")
        
        view.addSubview(label)
        view.addSubview(button)
    }
    
    private func setupLayouts() {
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20)
        ])
    }
}

