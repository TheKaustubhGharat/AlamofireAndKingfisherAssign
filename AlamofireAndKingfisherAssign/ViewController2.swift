//
//  ViewController2.swift
//  AlamofireAndKingfisherAssign
//
//  Created by GCO on 09/08/21.
//

import UIKit
import Kingfisher
class ViewController2: UIViewController {

    @IBOutlet weak var imgPassed: UIImageView!
    @IBOutlet weak var lblCompleteName: UILabel!
    @IBOutlet weak var lblEmail: UILabel!
    
    var strname1 = ""
    var strname2 = ""
    var stremail = ""
    var imgpassed = ""
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        lblCompleteName.text = "Name : \(strname1)  \(strname2)"
        lblEmail.text = "Email : \(stremail)"
        imgPassed.kf.setImage(with: URL(string: imgpassed))
        
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
