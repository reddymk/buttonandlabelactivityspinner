//
//  ButtonActivitySpinner.swift
//  ButtonAndLabelActivitySpinner
//
//  Created by Manish Reddy on 9/5/16.
//  Copyright © 2016 KMR. All rights reserved.
//

import UIKit

@IBDesignable public class LabelActivitySpinner: UILabel {
    
    public var activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .Gray) {
        didSet {
            setNeedsLayout()
        }
    }

    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialiseView()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialiseView()
    }
    
    private func initialiseView() {
        addSubview(activityIndicator)
    }
    
    override public func layoutSubviews() {
        super.layoutSubviews()
        activityIndicator.frame = bounds
    }

    public func startAnimating() {
        textColor = textColor.colorWithAlphaComponent(0)
        activityIndicator.hidden = false
        activityIndicator.startAnimating()
    }
    
    public func stopAnimating() {
        textColor = textColor.colorWithAlphaComponent(1)
        activityIndicator.hidden = true
        activityIndicator.stopAnimating()
    }


}
