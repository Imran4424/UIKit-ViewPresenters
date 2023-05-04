//
//  HomeViewController.swift
//  ViewPresenters
//
//  Created by Shah Md Imran Hossain on 4/5/23.
//

import UIKit

class HomeViewController: UIViewController {
    var navBarTitle: String
    var modalViewButton: UIButton!
    var seconViewControllerButton: UIButton!
    
    init(navBarTitle: String) {
        self.navBarTitle = navBarTitle
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupLayouts()
    }

    private func setupViews() {
        modalViewButton = makeButton(withText: "Modal View")
        seconViewControllerButton = makeButton(withText: "Second View")
        
        view.addSubview(modalViewButton)
        view.addSubview(seconViewControllerButton)
    }
    
    private func setupLayouts() {
        
    }
}

