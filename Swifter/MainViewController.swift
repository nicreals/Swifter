//
// Created by Nic on 2018/4/19.
// Copyright (c) 2018 UpChina. All rights reserved.
//

import UIKit

class MainViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var tableView: UITableView!
    var dataArray: NSArray!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Test"

        tableView = UITableView(frame: view.bounds, style: .grouped)
        tableView.estimatedRowHeight = 44
        tableView.rowHeight = UITableViewAutomaticDimension;
        tableView.delegate = self
        tableView.dataSource = self
        view.addSubview(tableView)

        dataArray = [
            ["name": "Basic"]
        ]

        tableView.reloadData()

    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell")
        if (!(cell != nil)) {
            cell = UITableViewCell(style: .default, reuseIdentifier: "TableViewCell")
        }
        cell?.accessoryType = .disclosureIndicator

        if (indexPath.row == 0) {
            cell?.textLabel?.text = "Basic"

        }

//        var dictionary : NSDictionary = dataArray[indexPath.row]
//        var name : NSString = dictionary["name"]
//        cell.textLabel.text = name

        return cell!
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if (indexPath.row == 0) {
            let controller = BasicViewController()
            controller.hidesBottomBarWhenPushed = true
            navigationController?.pushViewController(controller, animated: true)

        }

        tableView.deselectRow(at: indexPath, animated: true)
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }


}
