//
//  ViewController.swift
//  SNAlert
//
//  Created by suni on 2021/04/06.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    let arrAlertStyle = ["Alert Style", "Action Sheet Style"]
    let arrAlert = ["1 Button Alert", "2 Button Alert", "3 Button Alert"]
    let arrActionSheet = ["1 Button Action Sheet", "2 Button Action Sheet", "3 Button Action Sheet"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "alertCell")
        tableView.delegate = self
        tableView.dataSource = self
        
    }

}
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0:
            return arrAlert.count
        case 1:
            return arrActionSheet.count
        default:
            return 0
        }
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrAlertStyle.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return arrAlertStyle[section]
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "alertCell", for: indexPath)
        
        switch indexPath.section {
        case 0:
            cell.textLabel?.text = "\(arrAlert[indexPath.row])"
        case 1:
            cell.textLabel?.text = "\(arrActionSheet[indexPath.row])"
        default:
            break
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let title: String = arrAlertStyle[indexPath.section]
        var message: String = arrAlert[0]
        var preferredStyle: UIAlertController.Style = .alert
        
        switch indexPath.section {
        case 0:
            preferredStyle = .alert
            message = arrAlert[indexPath.row]
        case 1:
            preferredStyle = .actionSheet
            message = arrActionSheet[indexPath.row]
        default:
            break
        }
        
        switch indexPath.row {
        case 0:
            CommonAlert.showAlertAction1(vc: self, preferredStyle: preferredStyle, title: title, message: message)
        case 1:
            CommonAlert.showAlertAction2(vc: self, preferredStyle: preferredStyle, title: title, message: message)
        case 2:
            CommonAlert.showAlertAction3(vc: self, preferredStyle: preferredStyle, title: title, message: message)
        default:
            break
        }
    }
}
