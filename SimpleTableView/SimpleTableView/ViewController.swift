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
    var dataArray = ["Swift", "C#", "JavaScript", "C++", "Java", "Python", "Go", "PHP", "Visual Basic", "Perl", "Ruby", "D", "Groovy", "Objective-C", "Erlang", "Kotlin", "Rust", "Delphi"]

    override func viewDidLoad() {
        super.viewDidLoad()
        testTableView = UITableView(frame: view.bounds, style: .plain )
        testTableView.register(DetailTableViewCell.self, forCellReuseIdentifier: identifier)
        testTableView.delegate = self
        testTableView.dataSource = self
        view.addSubview(testTableView)
    }


}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailViewControler = DetailViewController()
        detailViewControler.language = dataArray[indexPath.row]
        present(detailViewControler, animated: true)
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as? DetailTableViewCell
        cell?.setLanguage(language: dataArray[indexPath.row])
        return cell ?? DetailTableViewCell()
    }
}
