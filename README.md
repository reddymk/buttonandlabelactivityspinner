# Description:
Label and Button that can display activity spinner in place of text to indicate that request is being processed.

![Animating.gif](https://bitbucket.org/repo/gj9GdG/images/3373217030-Animating.gif)

# Usage:
Add a label or button and declare its class as 
For Button: ButtonActivitySpinner
For Label: LabelActivitySpinner
and Module as ButtonAndLabelActivitySpinner

![Screen Shot 2016-09-05 at 2.33.06 PM.png](https://bitbucket.org/repo/gj9GdG/images/3145537823-Screen%20Shot%202016-09-05%20at%202.33.06%20PM.png)
![Screen Shot 2016-09-05 at 2.33.20 PM.png](https://bitbucket.org/repo/gj9GdG/images/2089856220-Screen%20Shot%202016-09-05%20at%202.33.20%20PM.png)

Then in the code while request is being processed, use 

```
#!

Button.startAnimating()
Label.startAnimating()
```

to start the activity indicator in the center of button of label. 

To Stop Animating, Use


```
#!

Button.stopanimating
Label.stopanimating
```
to stop the activity indicator from animating. 



You can also change the color of activityIndicator by 
```
#!

Button.activityIndicator.color = UIColor.blueColor()
```

	
# Cocoa Pods: 
CocoaPods is a dependency manager for Cocoa projects. 
You can install it with the following command:


```
#!

$ gem install cocoa pods

```

To integrate ButtonAndLableActivitySpinner into your Xcode project using CocoaPods, specify this in your Podfile: 

```
#!

source 'https://reddymk@bitbucket.org/reddymk/buttonandlabelactivityspinner.git'
platform :ios, '9.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'ButtonAndLabelActivitySpinner', '~> 1.0'
end
```

Run the following command:


```
#!

$ pod install

```

# Author #
### Manish Reddy ###