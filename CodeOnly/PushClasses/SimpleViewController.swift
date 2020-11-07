//
//  SimpleViewController.swift
//  CodeOnly
//
//  Created by Don Mag on 11/7/20.
//

import UIKit

class SimpleViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Simple VC"
	
		view.backgroundColor = UIColor(red: 1.0, green: 0.85, blue: 0.6, alpha: 1.0)
		
		let v = UILabel()
		v.font = .systemFont(ofSize: 40, weight: .regular)
		v.text = "This is\nSimple VC"
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
