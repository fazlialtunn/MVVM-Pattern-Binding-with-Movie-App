//
//  MainViewController.swift
//  MVVM Pattern Binding with Movie App
//
//  Created by Fazlı Altun on 3.07.2024.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var viewmodel = MainViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "MVVM"
        setupTableView()
    }
}


extension MainViewController: UITableViewDataSource, UITableViewDelegate {
    
    func setupTableView() {
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        viewmodel.numberOfSections()
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        viewmodel.numberOfRows(in: section)
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }
    
    
}
