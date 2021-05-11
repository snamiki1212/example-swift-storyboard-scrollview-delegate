//
//  ViewController.swift
//  ISpy
//
//  Created by shunnamiki on 2021/05/11.
//

import UIKit

class ViewController: UIViewController, UIScrollViewDelegate {

    @IBOutlet var scrollview: UIScrollView!
    @IBOutlet var imageview: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollview.delegate = self
    }
    
    override func viewDidAppear(_ animated: Bool) {
        updateZoomFor(size: view.bounds.size)
    }
    
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return imageview
    }
    
    func updateZoomFor(size: CGSize){
        let widthScale = size.width / imageview.bounds.width
        let heightScale = size.height / imageview.bounds.height
        let scale = min(widthScale, heightScale)
        scrollview.minimumZoomScale = scale
        scrollview.zoomScale = scale
    }


}

