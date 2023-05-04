//
//  Factories.swift
//  ViewPresenters
//
//  Created by Shah Md Imran Hossain on 4/5/23.
//

import UIKit

func makeButton(withText text: String) -> UIButton {
    let button = UIButton(type: .system)
    button.translatesAutoresizingMaskIntoConstraints = false
    button.setTitle(text, for: .normal)

    var config = UIButton.Configuration.filled()
    config.baseBackgroundColor = .systemBlue
    config.cornerStyle = .capsule
    config.contentInsets = NSDirectionalEdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16)
    button.configuration = config
    return button
}
