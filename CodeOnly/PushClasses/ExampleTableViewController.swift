//
//  ExampleTableViewController.swift
//  CodeOnly
//
//  Created by Don Mag on 11/7/20.
//

import UIKit

class ExampleTableViewController: UITableViewController {

	var myData: [String] = []
	
    override func viewDidLoad() {
        super.viewDidLoad()

		title = "Table VC"
	
		myData = "This is an Example Table View Controller".components(separatedBy: " ")
		
		tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return myData.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)

		cell.textLabel?.text = myData[indexPath.row]

        return cell
    }
	
	override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
		let vc = DetailViewController()
		vc.dataItem = myData[indexPath.row]
		navigationController?.pushViewController(vc, animated: true)
	}

}
