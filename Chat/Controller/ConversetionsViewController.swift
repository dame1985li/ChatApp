//
//  ConversetionsViewController.swift
//  ConversetionsViewController
//
//  Created by chqn201181 on 2021/09/12.
//

import UIKit

private let reuseIdentifer = "ConversationCell"

class ConversetionsViewController: UIViewController {
    // MARK: - Properties
    
    private let tableView = UITableView()
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        configureUI()
    }
    // MARK: - Selectors
    @objc func showProfile() {
        print(123)
    }
    
    // MARK: - Helpers
    func configureUI() {
        view.backgroundColor = .white
        
        configureNavigationBar()
        configureTableView()
        
        let image = UIImage(systemName: "person.circle.fill")
        navigationItem.leftBarButtonItem = UIBarButtonItem(image: image, style: .plain, target: self, action: #selector(showProfile))
    }
    
    func configureNavigationBar() {
        let appearance = UINavigationBarAppearance()
        appearance.configureWithOpaqueBackground()
        appearance.largeTitleTextAttributes = [.foregroundColor: UIColor.white]
        appearance.backgroundColor = .systemPurple
        
        navigationController?.navigationBar.standardAppearance = appearance
        navigationController?.navigationBar.compactAppearance = appearance
        navigationController?.navigationBar.scrollEdgeAppearance = appearance
        
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationItem.title = "Messagers"
        navigationController?.navigationBar.tintColor = .white
        navigationController?.navigationBar.isTranslucent = true
        
        navigationController?.navigationBar.overrideUserInterfaceStyle = .dark
    }
    
    func configureTableView() {
        tableView.backgroundColor = .systemPink
        
        view.addSubview(tableView)
        tableView.frame = view.frame
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
