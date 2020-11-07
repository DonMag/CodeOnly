//
//  ViewController.swift
//  CodeOnly
//
//  Created by Don Mag on 11/7/20.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		
		title = "Menu"
		
		view.backgroundColor = UIColor(white: 0.9, alpha: 1.0)
		
		let stack = UIStackView()
		stack.translatesAutoresizingMaskIntoConstraints = false
		stack.axis = .vertical
		stack.spacing = 30
		
		let b1 = UIButton()
		let b2 = UIButton()
		let b3 = UIButton()

		b1.setTitle("Simple VC", for: [])
		b2.setTitle("Table VC", for: [])
		b3.setTitle("Gradient VC", for: [])

		b1.tag = 1
		b2.tag = 2
		b3.tag = 3

		[b1, b2, b3].forEach { b in
			b.backgroundColor = .red
			b.setTitleColor(.white, for: .normal)
			b.setTitleColor(.gray, for: .highlighted)
			stack.addArrangedSubview(b)
			b.addTarget(self, action: #selector(self.btnTapped(_:)), for: .touchUpInside)
		}
		
		view.addSubview(stack)
		
		let g = view.safeAreaLayoutGuide
		NSLayoutConstraint.activate([
			stack.centerXAnchor.constraint(equalTo: g.centerXAnchor),
			stack.centerYAnchor.constraint(equalTo: g.centerYAnchor),
			stack.widthAnchor.constraint(equalTo: g.widthAnchor, multiplier: 0.75),
		])
		
	}

	@objc func btnTapped(_ sender: Any?) -> Void {
		guard let b = sender as? UIButton else { return }
		switch b.tag {

		case 1:
			let vc = SimpleViewController()
			navigationController?.pushViewController(vc, animated: true)

		case 2:
			let vc = ExampleTableViewController()
			navigationController?.pushViewController(vc, animated: true)
			
		case 3:
			let vc = GradientViewController()
			navigationController?.pushViewController(vc, animated: true)
			
		default:
			print("Action for Tag: \(b.tag) has not been defined.")
		}
	}

}

