//
//  ViewController.swift
//  autolayout
//
//  Created by Rohmat Suseno on 18/08/18.
//  Copyright © 2018 InnoCent Bandung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

//    let's avoid polluting viewDidLoad
//    {} is referred to as closure, or anon. functions
    let bearImageView: UIImageView = {
        let imageView = UIImageView(image: #imageLiteral(resourceName: "bear_first"))
//        this enables autolayout for imageView
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    let descriptionTextView: UITextView = {
       let textView = UITextView()
        textView.text = "Join us today in our fun and games!"
        textView.font = UIFont.boldSystemFont(ofSize: 18)
        textView.textAlignment = .center
        textView.isEditable = false
        textView.isScrollEnabled = false
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        set image to subView
        view.addSubview(bearImageView)
        view.addSubview(descriptionTextView)
        
        setupLayout()
        
    }
    
    private func setupLayout() {
//        change background
//        view.backgroundColor = .yellow
        
//        set image x y (CGRext)
//        bearImageView.frame = CGRect(x: 0, y: 0, width: 50, height: 50)
        
//        horizontally in container
        bearImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
//        margin top
        bearImageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 100).isActive = true
        
//        image width/height size
        bearImageView.widthAnchor.constraint(equalToConstant: 200).isActive = true
        bearImageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        
        descriptionTextView.topAnchor.constraint(equalTo: bearImageView.bottomAnchor, constant: 120).isActive = true
        descriptionTextView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        descriptionTextView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        descriptionTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
    }
}

