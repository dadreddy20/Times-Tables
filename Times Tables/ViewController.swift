//
//  ViewController.swift
//  Times Tables
//
//  Created by Anudeep Reddy Dwaram on 31/05/15.
//  Copyright (c) 2015 iDev. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

	@IBOutlet weak var sliderValue: UISlider!
	
	@IBOutlet weak var table: UITableView!
	
	@IBAction func sliderMoved(sender: AnyObject) {
		table.reloadData()
	}
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		return 20;
	}
	
	func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
		let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
		let timesTable = Int(sliderValue.value * 20)
		// http://commandshift.co.uk/blog/2014/06/11/understanding-optionals-in-swift/
		cell.textLabel?.text = "\(timesTable * (indexPath.row + 1))"
		
		return cell;
	}
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

