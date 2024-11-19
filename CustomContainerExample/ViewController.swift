//
//  ViewController.swift
//  CustomContainerExample
//
//  Created by MacBook Pro 15 on 19.11.2024.
//

import UIKit

class ViewController: UIViewController {
    private var contentViewController: UIViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bottomView = UIView()
        bottomView.backgroundColor = .yellow
        bottomView.layer.opacity = 1
        bottomView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(bottomView)
        bottomView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        bottomView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        bottomView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        bottomView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        view.backgroundColor = .red
        
        let childViewController = MyViewController()

        addChild(childViewController)

        childViewController.view.backgroundColor = .magenta
        view.insertSubview(childViewController.view, belowSubview: bottomView)

        if let childView = childViewController.view {
            childView.translatesAutoresizingMaskIntoConstraints = false
            childView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
            childView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
            childView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
            childView.bottomAnchor.constraint(equalTo: bottomView.topAnchor).isActive = true
        }
        
        childViewController.didMove(toParent: self)
    }
    
}
