//
//  TileView.swift
//  AutoLayout_Examples
//
//  Created by asbul on 29.06.2022.
//

import UIKit

class TileView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    private func setupView() {
        // setup view code goes here
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        // adjust subviews here
    }
}
