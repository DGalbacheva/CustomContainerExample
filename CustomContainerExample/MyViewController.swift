//
//  MyViewController.swift
//  CustomContainerExample
//
//  Created by Doroteya Galbacheva on 19.11.2024.
//

import UIKit

class MyViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .magenta
        
        let label1 = UILabel()
        label1.text = "Label 1"
        
        let label2 = UILabel()
        label2.text = "Label 2"
        
        let label3 = UILabel()
        label3.text = "Label 3"
        
        label1.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label1)
        label1.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive  = true
        label1.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        label2.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label2)
        label2.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        label2.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        label3.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(label3)
        label3.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        label3.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
