//
//  TileView.swift
//  AutoLayout_Examples
//
//  Created by asbul on 29.06.2022.
//

import UIKit

@IBDesignable
class TileView: UIView {

    @IBInspectable var padding: CGFloat = 25.0 {
        didSet {
            setNeedsLayout()
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }

    private func setupView() {
        addSubview(blueView)
        addSubview(redView)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        let containerWidth = bounds.width
        let containerHeight = bounds.height

        let numberOfItems: CGFloat = 2
        let itemWidth = (containerWidth - (numberOfItems + 1) * padding) / numberOfItems
        let itemHeight = containerHeight - 2 * padding

        blueView.frame = CGRect(x: padding, y: padding, width: itemWidth, height: itemHeight)
        redView.frame = CGRect(x: 2 * padding + itemWidth, y: padding, width: itemWidth, height: itemHeight)
    }
}

private let redView: UIView = {
    let view = UIView()
    view.backgroundColor = .red
    return view
}()

private let blueView: UIView = {
    let view = UIView()
    view.backgroundColor = .blue
    return view
}()

