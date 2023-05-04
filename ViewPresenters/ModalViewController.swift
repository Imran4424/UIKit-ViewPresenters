//
//  ModalViewController.swift
//  ViewPresenters
//
//  Created by Shah Md Imran Hossain on 4/5/23.
//

import UIKit

class ModalViewController: UIViewController {
    var label = UILabel()
    var dismissButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupLayouts()
    }
    
    func setupViews() {
        view.backgroundColor = .white
        label = makeLabel(withText: "Modal ViewController")
        
        dismissButton = makeButton(withText: "Dismiss")
        dismissButton.addTarget(self, action: #selector(closeModal), for: .touchUpInside)
        
        view.addSubview(label)
        view.addSubview(dismissButton)
    }
    
    func setupLayouts() {
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            dismissButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            dismissButton.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 20)
        ])
    }
}

// MARK: - Button actions
extension ModalViewController {
    @objc func closeModal() {
        dismiss(animated: true)
    }
}
