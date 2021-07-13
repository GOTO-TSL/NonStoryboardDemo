//
//  BottomView.swift
//  NonStoryboardDemo
//
//  Created by 後藤孝輔 on 2021/07/14.
//

import UIKit

class BottomView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .purple
        
        let view1 = ButtomButtonView()
        view1.backgroundColor = .orange
        
        let view2 = ButtomButtonView()
        view2.backgroundColor = .orange
        
        let view3 = ButtomButtonView()
        view3.backgroundColor = .orange
        
        let bottomStackView = UIStackView(arrangedSubviews: [view1, view2, view3])
        bottomStackView.axis = .horizontal
        bottomStackView.translatesAutoresizingMaskIntoConstraints = false
        bottomStackView.distribution = .fillEqually
        bottomStackView.spacing = 10
        
        addSubview(bottomStackView)
        
        
        [
            bottomStackView.topAnchor.constraint(equalTo: topAnchor),
            bottomStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            bottomStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 10),
            bottomStackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -10)
            
        ].forEach { $0.isActive = true }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
