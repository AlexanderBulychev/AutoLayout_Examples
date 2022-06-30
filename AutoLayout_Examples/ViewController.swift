//
//  ViewController.swift
//  AutoLayout_Examples
//
//  Created by asbul on 29.06.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet private var tileView: TileView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func viewDidLayoutSubviews() {
        // 5% radius
        let radius = tileView.bounds.width / 20
        tileView.layer.cornerRadius = radius

    }
}

