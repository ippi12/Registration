//
//  ViewController.swift
//  Registration
//
//  Created by MacBookPro on 23.01.2022.
//

import UIKit


class ViewController: UIViewController {

var loginLabel = UILabel()
    
var passLabel = UILabel()
    
    func loginLabelConfig() {
        loginLabel.text = "Логин"
        loginLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        loginLabel.frame = CGRect.init(x: 50, y: 300, width: 100, height: 100)
        view.addSubview(loginLabel)
    }
    
    func passLabelConfig() {
        passLabel.text = "Пароль"
        passLabel.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        passLabel.frame = CGRect.init(x: 50, y: 450, width: 100, height: 100)
        view.addSubview(passLabel)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Войдите в учётную запись"
        navigationController?.navigationBar.standardAppearance.titleTextAttributes = [.font:UIFont.systemFont(ofSize: 18, weight: .bold)]
        loginLabelConfig()
        passLabelConfig()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    
    }
    
//    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
//        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
//        title = "Signing"
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    private let tableView = UITableView()


    private func setupTableView() {
        tableView.register(TableViewCell.self, forCellReuseIdentifier: "CodeTableViewCell")
        tableView.register(UINib(nibName: "XibTableViewCell", bundle: nil), forCellReuseIdentifier: "XibTableViewCell")
        tableView.separatorStyle = .none
        tableView.clipsToBounds = false
        tableView.dataSource = self
        tableView.delegate = self
    }
}

extension UIViewController: UITableViewDelegate {
    
}

extension UIViewController: UITableViewDataSource {
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CodeTableViewCell") as! TableViewCell
        cell.delegate = self
        return cell
        
    }

    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
}

extension UIViewController: TableViewCellDelegate {
    func didInputText(cell: TableViewCell, text: String) {
        <#code#>
    }
    

}

