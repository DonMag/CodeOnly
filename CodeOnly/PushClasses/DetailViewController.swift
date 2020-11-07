//
//  DetailViewController.swift
//  CodeOnly
//
//  Created by Don Mag on 11/7/20.
//

import UIKit

class DetailViewController: UIViewController {

	var dataItem: String = ""
	
    override func viewDidLoad() {
        super.viewDidLoad()

		title = "Detail VC"
		
		view.backgroundColor = UIColor(red: 0.4, green: 0.75, blue: 1.0, alpha: 1.0)
		
		let v = UILabel()
		v.font = .systemFont(ofSize: 40, weight: .regular)
		v.textAlignment = .center
		v.numberOfLines = 0
		v.translatesAutoresizingMaskIntoConstraints = false

		v.text = "This is\nDetail VC\n\nfor\n\n[\(dataItem)]"
		
		view.addSubview(v)
		
		let g = view.safeAreaLayoutGuide
		NSLayoutConstraint.activate([
			v.centerXAnchor.constraint(equalTo: g.centerXAnchor),
			v.topAnchor.constraint(equalTo: g.topAnchor, constant: 80.0),
			v.widthAnchor.constraint(equalTo: g.widthAnchor, multiplier: 0.75),
		])
		
    }

}
