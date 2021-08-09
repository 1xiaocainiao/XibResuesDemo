//
//  ViewController.swift
//  XibResuesDemo
//
//  Created by xxf on 2021/8/9.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 150
        
        tableView.register(ImageContainerCell.self, forCellReuseIdentifier: "cell")
        // Do any additional setup after loading the view.
    }


}

// MARK: -  UITableViewDelegate, UITableViewDataSource
extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 20
    }
    
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return <#20#>
//    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: ImageContainerCell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ImageContainerCell
        cell.refresh(showMeizi: indexPath.row % 2 == 0)
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        print("\(indexPath.row)")
    }
}

