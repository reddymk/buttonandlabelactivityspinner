//
//  ButtonActivitySpinner.swift
//  ButtonAndLabelActivitySpinner
//
//  Created by Manish Reddy on 9/5/16.
//  Copyright © 2016 KMR. All rights reserved.
//

import UIKit


///Label that can display activity spinner in place of text to indicate that request is being processed.
@IBDesignable public class LabelActivitySpinner: UILabel {
    
    /**
     Activity indicator which is default UIActivity Indicator.
    */
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
    
    ///Initialises the View
    private func initialiseView() {
        addSubview(activityIndicator)
    }
    
    ///Layout subviews which takes care of activityindicator and label frames.
    override public func layoutSubviews() {
        super.layoutSubviews()
        activityIndicator.frame = bounds
    }
    
    /**
     startAnimating will remove the text from the label,
     Unhide the activityIndicator and start animating the activity indicator.
    */
    public func startAnimating() {
        textColor = textColor.colorWithAlphaComponent(0)
        activityIndicator.hidden = false
        activityIndicator.startAnimating()
    }
    
    /**
     stopAnimating will bring back the text color and,
     Hide the activityIndicator and stop animating the activity indicator. 
    */
    public func stopAnimating() {
        textColor = textColor.colorWithAlphaComponent(1)
        activityIndicator.hidden = true
        activityIndicator.stopAnimating()
    }


}
