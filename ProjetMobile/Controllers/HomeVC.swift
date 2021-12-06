//
//  ViewController.swift
//  ProjetMobile
//
//  Created by Dylan Cherrier on 09/11/2021.
//

import UIKit

class HomeVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var bar: UIProgressView!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        
        tableView.delegate = self
        tableView.dataSource = self
    }
    
    //MARK: Methods
    public func initialisation(){
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
    private func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "YourCustomCell") as! TableViewCell

        // Configure YourCustomCell using the outlets that you've defined.

        return cell
    }

}

