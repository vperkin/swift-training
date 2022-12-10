//
//  ViewController.swift
//  MailClient
//
//  Created by Vyacheslav Perkin on 25.11.2022.
//

import UIKit

class ViewController: UIViewController {
    let idCell = "mailCell"

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        //tableView.isEditing = true
        //tableView.register(UINib(nibName: "MailTableViewCell", bundle: nil), forCellReuseIdentifier: idCell)
        self.navigationController?.navigationBar.prefersLargeTitles = true
        
        let search = UISearchController(searchResultsController: nil)
        search.searchResultsUpdater = self
        self.navigationItem.searchController = search
        
        let btnSettings = UIBarButtonItem(title: "Settings", style: .plain, target: self, action: #selector(goToSettings))
        navigationItem.rightBarButtonItem = btnSettings
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationItem.largeTitleDisplayMode = .always

    }
    
    @objc func goToSettings() {
        let vc = storyboard?.instantiateViewController(withIdentifier: "SettingsViewController") as! SettingsViewController
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    func tableView(_ tableView: UITableView, leadingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let swipeRead = UIContextualAction(style: .normal, title: "Unread"){(action,view, success) in print("Unread swipe")}
        //swipeRead.image = UIImage(named: "emailIcon")
        swipeRead.backgroundColor = .systemIndigo
        return UISwipeActionsConfiguration(actions:[swipeRead])
    }
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return 15
        }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idCell) as! MailTableViewCell
        //cell.titleLabel.text = "Email subject"
        //cell.subtitleLabel.text = "Email content"
        
        return cell
    }
    
    func tableView(_ tableView: UITableView , heightForRowAt: IndexPath) -> CGFloat {
        return 80.0
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("\(indexPath.row)")
    }
    func tableView(_ tableView: UITableView, accessoryButtonTappedForRowWith indexPath: IndexPath) {
        print("details\(indexPath.row)")
    }
}

extension ViewController: UISearchResultsUpdating {
    func updateSearchResults(for searchController: UISearchController) {
        print(searchController.searchBar.text!)
    }
}
