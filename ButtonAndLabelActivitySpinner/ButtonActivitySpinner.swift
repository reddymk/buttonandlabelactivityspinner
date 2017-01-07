//
//  ButtonActivitySpinner.swift
//  ButtonAndLabelActivitySpinner
//
//  Created by Manish Reddy on 9/5/16.
//  Copyright © 2016 KMR. All rights reserved.
//

import Foundation
import UIKit

///Button that can display activity spinner in place of text to indicate that request is being processed.
@IBDesignable open class ButtonActivitySpinner: UIButton {
    
    var text: String = "" {
        didSet {
            if let title = currentTitle {
                text = title
            }
        }
    }
    
    /**
     Activity indicator which is default UIActivity Indicator.
     */
    open var activityIndicator = UIActivityIndicatorView(activityIndicatorStyle: .gray) {
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
    
    ///Initialises the View
    fileprivate func initialiseView() {
        addSubview(activityIndicator)
        setNeedsLayout()
        
    }
    
    ///Layout subviews which takes care of activityindicator and label frames.
    open override func layoutSubviews() {
        super.layoutSubviews()
        activityIndicator.frame = bounds
    }
    
    /**
     startAnimating will set the text to nil,
     start animating the activity indicator.
     */
    open func startAnimating() {
        setTitle("", for: UIControlState())
        activityIndicator.startAnimating()
    }
    
    /**
     stopAnimating will set back the original text,
     stop animating the activity indicator.
     */
    open func stopAnimating() {
        setTitle(text, for: UIControlState())
        activityIndicator.stopAnimating()
    }
}

