//
//  ViewController.swift
//  Animation
//
//  Created by Aykut Doğru on 22.12.2019.
//  Copyright © 2019 Aykut Doğru. All rights reserved.
//

import UIKit
import Canvas
import Social

class ViewController: UIViewController {

	var imagesArray = ["1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16"]
	var images = [UIImage]()
	@IBOutlet weak var animView: CSAnimationView!
	
	var timer = Timer()
	@IBOutlet weak var imageView: UIImageView!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		
		for i in 0..<imagesArray.count {
			images.append(UIImage(named: imagesArray[i])!)
		}
		
		imageView.animationImages = images
		imageView.animationDuration = 1
		imageView.startAnimating()
		
		Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(randomColor), userInfo: nil, repeats: true)
		}
	
	@IBAction func buttonClick(_ sender: Any) {
		animView.type = "pop"
		animView.duration = 0.3
		animView.delay = 0
		animView.startCanvasAnimation()
		
		let redValue = CGFloat(drand48())
		let greenValue = CGFloat(drand48())
		let blueValue = CGFloat(drand48())
		
		self.view.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
	}
	
	@objc func randomColor() {
		let redValue = CGFloat(drand48())
		let greenValue = CGFloat(drand48())
		let blueValue = CGFloat(drand48())
		
		self.view.backgroundColor = UIColor(red: redValue, green: greenValue, blue: blueValue, alpha: 1.0)
	}
}

