//
//  ViewController.swift
//  AlamofireAndKingfisherAssign
//
//  Created by makarand gharat on 24/07/21.
//

import UIKit
import Alamofire
import Kingfisher

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var tableview: UITableView!
    
    
    
    //TableViewMethods.
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataArray.count
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomTBV") as! CustomTBV
        cell.lbl1.text = dataArray[indexPath.row].value(forKey: "first_name") as! String
        cell.lbl2.text = dataArray[indexPath.row].value(forKey: "last_name") as! String
        let url = URL(string: dataArray[indexPath.row].value(forKey: "avatar") as! String)
        cell.imgvalue.kf.setImage(with: url)
           return cell
        
    }

    
    
    
    
    
    
    var dataArray: [NSDictionary] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        AF.request("https://reqres.in/api/users").responseJSON { (result) in
            let dict = result.value as! NSDictionary
            let data = dict.value(forKey: "data") as! [NSDictionary]
            self.dataArray = data
            DispatchQueue.main.async {
                self.tableview.reloadData()
            }
                }
    
    


}
}

    class CustomTBV: UITableViewCell{
    
    @IBOutlet weak var lbl1: UILabel!
    @IBOutlet weak var lbl2: UILabel!
    @IBOutlet weak var imgvalue: UIImageView!
}


