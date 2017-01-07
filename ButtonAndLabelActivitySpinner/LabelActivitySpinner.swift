//
//  ButtonActivitySpinner.swift
//  ButtonAndLabelActivitySpinner
//
//  Created by Manish Reddy on 9/5/16.
//  Copyright © 2016 KMR. All rights reserved.
//

import UIKit


///Label that can display activity spinner in place of text to indicate that request is being processed.
@IBDesignable open class LabelActivitySpinner: UILabel {
    
    /**
     Activity indicator which is default UIActivity Indicator.
    */
    open var activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .gray) {
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
    fileprivate func initialiseView() {
        addSubview(activityIndicator)
    }
    
    ///Layout subviews which takes care of activityindicator and label frames.
    override open func layoutSubviews() {
        super.layoutSubviews()
        activityIndicator.frame = bounds
    }
    
    /**
     startAnimating will remove the text from the label,
     Unhide the activityIndicator and start animating the activity indicator.
    */
    open func startAnimating() {
        textColor = textColor.withAlphaComponent(0)
        activityIndicator.isHidden = false
        activityIndicator.startAnimating()
    }
    
    /**
     stopAnimating will bring back the text color and,
     Hide the activityIndicator and stop animating the activity indicator. 
    */
    open func stopAnimating() {
        textColor = textColor.withAlphaComponent(1)
        activityIndicator.isHidden = true
        activityIndicator.stopAnimating()
    }


}
