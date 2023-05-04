//
//  ViewController.swift
//  ViewPresenters
//
//  Created by Shah Md Imran Hossain on 4/5/23.
//

import UIKit

class ViewController: UIViewController {
    var navBarTitle: String
    
    init(navBarTitle: String) {
        self.navBarTitle = navBarTitle
        
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

