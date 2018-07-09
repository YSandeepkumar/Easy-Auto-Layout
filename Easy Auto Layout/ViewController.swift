//
//  ViewController.swift
//  Easy Auto Layout
//
//  Created by Sandeep Kumar  Yaramchitti on 7/8/18.
//  Copyright © 2018 Sandeep Kumar  Yaramchitti. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        //First View
        let redView = UIView()
        redView.backgroundColor = UIColor.red
        view.addSubview(redView)
     
        //Second View
        let greenView = UIView()
        greenView.backgroundColor = UIColor.green
        view.addSubview(greenView)
        
        //Third View
        let blueView = UIView()
        blueView.backgroundColor = UIColor.blue
        view.addSubview(blueView)
        
        redView.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, bottom: nil, padding: .init(top: 0, left: 0, bottom: 0, right: 10), size: .init(width: 100, height: 100))
        
        greenView.anchor(top: redView.bottomAnchor, leading: nil, trailing: view.safeAreaLayoutGuide.trailingAnchor, bottom: nil, padding: .init(top: 10, left: 0, bottom: 0, right: 10), size: .init(width: 100, height: 100))
        
        blueView.anchor(top: redView.topAnchor, leading: view.safeAreaLayoutGuide.leadingAnchor, trailing: redView.leadingAnchor, bottom: greenView.bottomAnchor, padding: .init(top: 0, left: 10, bottom: 0, right: 10))
        
        
        
    }
}

