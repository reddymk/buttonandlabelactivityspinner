//
//  ButtonActivitySpinner.swift
//  ButtonAndLabelActivitySpinner
//
//  Created by Manish Reddy on 9/5/16.
//  Copyright © 2016 KMR. All rights reserved.
//

import Foundation
import UIKit

@IBDesignable public class ButtonActivitySpinner: UIButton {
    
    var text: String = "" {
        didSet {
            if let title = currentTitle {
                text = title
            }
        }
    }
    
    public var activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .Gray) {
        didSet {
            setNeedsLayout()
        }
    }
    
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialiseView()
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        initialiseView()
    }
    
    
    private func initialiseView() {
        addSubview(activityIndicator)
        setNeedsLayout()
        
    }
    
    public override func layoutSubviews() {
        super.layoutSubviews()
        activityIndicator.frame = bounds
    }
    
    public func startAnimating() {
        setTitle("", forState: UIControlState.Normal)
        activityIndicator.startAnimating()
    }
    
    public func stopAnimating() {
        setTitle(text, forState: UIControlState.Normal)
        activityIndicator.stopAnimating()
    }
}

