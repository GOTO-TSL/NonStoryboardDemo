//
//  ViewController.swift
//  NonStoryboardDemo
//
//  Created by 後藤孝輔 on 2021/07/13.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .red
        
        let view1 = UIView()
        view1.backgroundColor = .blue
        
        let view2 = UIView()
        view2.backgroundColor = .green
        
        let view3 = BottomView()
        
        let stackView = UIStackView(arrangedSubviews: [view1, view2, view3])
        stackView.axis = .vertical
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(stackView)
        
        [
            view1.heightAnchor.constraint(equalToConstant: 100),
            view3.heightAnchor.constraint(equalToConstant: 100),
            
            stackView.topAnchor.constraint(equalTo: view.topAnchor),
            stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            stackView.leftAnchor.constraint(equalTo: view.leftAnchor),
            stackView.rightAnchor.constraint(equalTo: view.rightAnchor)
            
        ].forEach { $0.isActive = true }
    }


}

