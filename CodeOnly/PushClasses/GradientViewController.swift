//
//  GradientViewController.swift
//  CodeOnly
//
//  Created by Don Mag on 11/7/20.
//

import UIKit

class GradView: UIView {
	var gradLayer: CAGradientLayer!
	
	override class var layerClass: AnyClass {
		return CAGradientLayer.self
	}
	override init(frame: CGRect) {
		super.init(frame: frame)
		commonInit()
	}
	required init?(coder: NSCoder) {
		super.init(coder: coder)
		commonInit()
	}
	func commonInit() -> Void {
		gradLayer = self.layer as? CAGradientLayer
		gradLayer.colors = [UIColor.cyan.cgColor, UIColor.blue.cgColor]
		gradLayer.startPoint = CGPoint(x: 0, y: 0)  // top
		gradLayer.endPoint = CGPoint(x: 0, y: 1)    // bottom
	}
	
}

class GradientViewController: UIViewController {

	override func loadView() {
		// override loadView() to set this controller's
		//	root view to a custom view
		let v = GradView()
		view = v
	}

    override func viewDidLoad() {
        super.viewDidLoad()

		title = "Gradient VC"
		
		let v = UILabel()
		v.font = .systemFont(ofSize: 40, weight: .bold)
		v.textColor = .white
		v.text = "This is\nGradient VC"
		v.textAlignment = .center
		v.numberOfLines = 0
		v.translatesAutoresizingMaskIntoConstraints = false
		
		view.addSubview(v)
		
		let g = view.safeAreaLayoutGuide
		NSLayoutConstraint.activate([
			v.centerXAnchor.constraint(equalTo: g.centerXAnchor),
			v.topAnchor.constraint(equalTo: g.topAnchor, constant: 80.0),
			v.widthAnchor.constraint(equalTo: g.widthAnchor, multiplier: 0.75),
		])
		
    }

}
