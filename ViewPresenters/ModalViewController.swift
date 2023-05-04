//
//  ModalViewController.swift
//  ViewPresenters
//
//  Created by Shah Md Imran Hossain on 4/5/23.
//

import UIKit

class ModalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupLayouts()
    }
    
    func setupViews() {
        view.backgroundColor = .white
        let label = makeLabel(withText: "Modal ViewController")
    }
    
    func setupLayouts() {
        
    }
}
