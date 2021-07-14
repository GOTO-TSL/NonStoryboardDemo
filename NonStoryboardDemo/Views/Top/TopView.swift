//
//  TopView.swift
//  NonStoryboardDemo
//
//  Created by 後藤孝輔 on 2021/07/14.
//

import UIKit

class TopView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .blue
        
        let titleLabel = UILabel()
        titleLabel.text = "タイトル"
        titleLabel.textColor = .white
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        
        addSubview(titleLabel)
        
        [
            titleLabel.centerXAnchor.constraint(equalTo: centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: centerYAnchor)
        ].forEach { $0.isActive = true }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
