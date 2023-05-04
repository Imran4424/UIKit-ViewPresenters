//
//  Factories.swift
//  ViewPresenters
//
//  Created by Shah Md Imran Hossain on 4/5/23.
//

import UIKit

func makeLabel(withText text: String) -> UILabel {
    let label = UILabel()
    label.translatesAutoresizingMaskIntoConstraints = false // important!
    label.backgroundColor = .yellow
    label.textAlignment = .center
    label.numberOfLines = 0
    label.text = text

    return label
}

func makeLabel(withText text: String, size: CGFloat) -> UILabel {
    let label = makeLabel(withText: text)
    label.font = UIFont.systemFont(ofSize: size)

    return label
}

func makeLabel(withText text: String, size: CGFloat, color: UIColor) -> UILabel {
    let label = makeLabel(withText: text, size: size)
    label.backgroundColor = color
    
    return label
}

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

func makeStackView(withOrientation axis: NSLayoutConstraint.Axis) -> UIStackView {
    let stackView = UIStackView()
    stackView.translatesAutoresizingMaskIntoConstraints = false
    stackView.axis = axis
    stackView.distribution = .fill
    stackView.alignment = .fill
    stackView.spacing = 8.0

    return stackView
}

func makeView(color: UIColor = .red) -> UIView {
    let view = UIView()
    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = color

    return view
}
