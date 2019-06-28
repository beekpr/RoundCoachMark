//
//  DefaultCoachMarkInfoView.swift
//  RoundCoachMark
//
//  Created by Dima Choock on 17/12/2017.
//  Copyright © 2017 GPB DIDZHITAL. All rights reserved.
//

import UIKit

class DefaultCoachMarkInfoView: UIView, CoachMarkInfoView {
    var titleLabel: UILabel?
    var infoText: UITextView?
    var infoWidth: CGFloat = 0
    var topInflatedView = UIView()
    var bottomInflatedView = UIView()
    
    private let verticalMargin: CGFloat = 24.0
    
    convenience init(width: CGFloat) {
        let frame = CGRect(x: 0, y: 0, width: width, height: 100)
        self.init(frame: frame)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        translatesAutoresizingMaskIntoConstraints = false
        backgroundColor = UIColor.clear
        infoWidth = frame.size.width
        
        // Properties:
        titleLabel = UILabel()
        titleLabel?.translatesAutoresizingMaskIntoConstraints = false
        titleLabel?.lineBreakMode = .byWordWrapping
        titleLabel?.numberOfLines = 3
        
        infoText = UITextView()
        infoText?.backgroundColor = UIColor.clear
        infoText?.translatesAutoresizingMaskIntoConstraints = false
        infoText?.textContainer.lineFragmentPadding = 0
        infoText?.isUserInteractionEnabled = false
        infoText?.showsHorizontalScrollIndicator = false
        infoText?.showsVerticalScrollIndicator = false
        
        topInflatedView.translatesAutoresizingMaskIntoConstraints = false
        bottomInflatedView.translatesAutoresizingMaskIntoConstraints = false
        
        // Layout:
        addSubview(topInflatedView)
        addSubview(titleLabel!)
        addSubview(infoText!)
        addSubview(bottomInflatedView)
        
        
        topInflatedView.topAnchor.constraint(equalTo: topAnchor, constant: 0).isActive = true
        topInflatedView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        topInflatedView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true

        titleLabel!.topAnchor.constraint(equalTo: topInflatedView.bottomAnchor, constant: 0).isActive = true
        titleLabel!.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        titleLabel!.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true

        infoText!.topAnchor.constraint(equalTo: titleLabel!.bottomAnchor, constant: 8).isActive = true
        infoText!.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        infoText!.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        infoText?.textContainerInset = UIEdgeInsets.zero

        bottomInflatedView.topAnchor.constraint(equalTo: infoText!.bottomAnchor, constant: 0).isActive = true
        bottomInflatedView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 0).isActive = true
        bottomInflatedView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: 0).isActive = true
        bottomInflatedView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: 0).isActive = true

        topInflatedView.heightAnchor.constraint(equalToConstant: verticalMargin).isActive = true
        bottomInflatedView.heightAnchor.constraint(equalToConstant: verticalMargin).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    var viewSize: CGSize {
        guard let title = titleLabel,
            let text = infoText else { return CGSize(width: infoWidth, height: 100) }
        
        let titleHeight = title.text?.calculateSize(width: infoWidth, font: title.font).height ?? title.bounds.size.height
        let textHeight = text.text.calculateSize(for: text).height
        return CGSize(width: infoWidth, height: 8 + (verticalMargin * 2) + titleHeight + textHeight)
    }
    
    var centerOffset: CGPoint {
        return CGPoint.zero
    }
    
    func setTextInfo(title: String, info: String) {
        titleLabel?.text = title
        infoText?.text = info
    }
    
    func setTitleStyle(font: UIFont, color: UIColor) {
        titleLabel?.font = font
        titleLabel?.textColor = color
    }
    
    func setInfoStyle(font: UIFont, color: UIColor) {
        infoText?.font = font
        infoText?.textColor = color
    }
    
    func setInfo(_: Any) {}
}
