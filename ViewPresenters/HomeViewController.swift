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
        modalViewButton.addTarget(self, action: #selector(presentModal), for: .touchUpInside)
        
        seconViewControllerButton = makeButton(withText: "Second View")
        
        view.addSubview(modalViewButton)
        view.addSubview(seconViewControllerButton)
    }
    
    private func setupLayouts() {
        NSLayoutConstraint.activate([
            modalViewButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            modalViewButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -20),
            seconViewControllerButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            seconViewControllerButton.topAnchor.constraint(equalTo: modalViewButton.bottomAnchor, constant: 20)
        ])
    }
}

// MARK: - Button actions
extension HomeViewController {
    @objc func presentModal() {
        let modalViewController = ModalViewController()
        // without fullscreen presentation style it will present as a card
        // at top of the current view
        // just comment the following line and run it to see in action
        modalViewController.modalPresentationStyle = .fullScreen
        present(modalViewController, animated: true, completion: nil)
    }
}
