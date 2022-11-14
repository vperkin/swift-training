//
//  ViewController.swift
//  SimpleTableView
//
//  Created by admin on 13.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    var testTableView = UITableView()
    var identifier = "MyCell"
    var dataArray = ["Swift", "C#", "JavaScript", "C++", "Java", "Python", "Go", "PHP"]

    override func viewDidLoad() {
        super.viewDidLoad()
        testTableView = UITableView(frame: view.bounds, style: .plain )
        testTableView.register(UITableViewCell.self, forCellReuseIdentifier: identifier)
        testTableView.delegate = self
        testTableView.dataSource = self
        view.addSubview(testTableView)
    }


}

extension ViewController: UITableViewDelegate {
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath)
        cell.textLabel?.text = dataArray[indexPath.row]
        return cell
    }
}
