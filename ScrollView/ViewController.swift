//
//  ViewController.swift
//  ScrollView
//
//  Created by Vignesh Ravichandran on 1/7/17.
//  Copyright © 2017 Vignesh Ravichandran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ScrollViewObj: UIScrollView!
    
    var Images = [UIImageView]()
    
    override func viewDidLoad() {
       
        
    }
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        super.viewDidLoad()
        
        var contentWidth:CGFloat = 0.0
        
        for x in 0...2
        {
            let image = UIImage(named: "icon\(x).png")
            let imageView = (UIImageView(image: image))
            Images.append(imageView)
            
            var newX:CGFloat = 0.0
            
            let ScrollViewWidth = ScrollViewObj.frame.size.width
            
            newX = ScrollViewWidth/2 + ScrollViewWidth * CGFloat(x)
            contentWidth += newX
            
            ScrollViewObj.addSubview(imageView)
            imageView.frame=CGRect(x:newX-75,y : (ScrollViewObj.frame.size.height/2)-75,width:150,height:150)
            
        }
        ScrollViewObj.clipsToBounds = false //this does the trick
        ScrollViewObj.contentSize=CGSize(width: contentWidth, height: view.frame.size.width)
        
    }

    


}

