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
@IBDesignable public class ButtonActivitySpinner: UIButton {
    
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
    
    ///Initialises the View
    private func initialiseView() {
        addSubview(activityIndicator)
        setNeedsLayout()
        
    }
    
    ///Layout subviews which takes care of activityindicator and label frames.
    public override func layoutSubviews() {
        super.layoutSubviews()
        activityIndicator.frame = bounds
    }
    
    /**
     startAnimating will set the text to nil,
     start animating the activity indicator.
     */
    public func startAnimating() {
        setTitle("", forState: UIControlState.Normal)
        activityIndicator.startAnimating()
    }
    
    /**
     stopAnimating will set back the original text,
     stop animating the activity indicator.
     */
    public func stopAnimating() {
        setTitle(text, forState: UIControlState.Normal)
        activityIndicator.stopAnimating()
    }
}

