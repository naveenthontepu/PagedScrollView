//
//  ViewController.swift
//  PagedScroll
//
//  Created by Mac on 2/10/17.
//  Copyright © 2017 naveen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var images = [UIImageView]()
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let scrollViewWidth = scrollView.frame.size.width;
        let contentSize:CGFloat = scrollViewWidth*3
        for x in 0...2{
            let image = UIImage(named: "icon\(x).png")
            images.append(UIImageView(image: image))
            
            let newX = scrollViewWidth/2 + scrollViewWidth * CGFloat(x)
            
            scrollView.addSubview(images[x])
            
            images[x].frame = CGRect(x: newX-75, y: (scrollView.frame.height/2)-75, width: 150, height: 150)
            
        }
        scrollView.contentSize = CGSize(width: contentSize, height: scrollView.frame.height)
        scrollView.clipsToBounds = false
        view.addGestureRecognizer(scrollView.panGestureRecognizer)
        print("the count = \(images.count)")
    }


}

