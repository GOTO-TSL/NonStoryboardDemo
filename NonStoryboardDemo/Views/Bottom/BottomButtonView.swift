//
//  BottomButtonView.swift
//  NonStoryboardDemo
//
//  Created by 後藤孝輔 on 2021/07/14.
//

import UIKit

class ButtomButtonView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        let button = UIButton(type: .system)
        button.setTitle("tap", for: .normal)
        button.backgroundColor = .white
        button.translatesAutoresizingMaskIntoConstraints = false
        button.layer.cornerRadius = 25
        
        addSubview(button)
        
        button.addTarget(self, action: #selector(tapped(_ :)), for: .touchUpInside)
        
        [
            button.centerXAnchor.constraint(equalTo: centerXAnchor),
            button.centerYAnchor.constraint(equalTo: centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 50),
            button.heightAnchor.constraint(equalToConstant: 50)
            
        ].forEach { $0.isActive = true }
    }
    
    @objc func tapped(_ sender: UIButton) {
        print("tapped!")
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
