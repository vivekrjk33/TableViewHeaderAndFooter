//
//  ViewController.swift
//  TableViewHeaderAndFooter
//
//  Created by Vivek on 02/02/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var nameArray = ["Anish", "Ravnish" , "Mohit", "Rockey","Anish", "Ravnish" , "Mohit", "Rockey","Anish", "Ravnish" , "Mohit", "Rockey","Anish", "Ravnish" , "Mohit", "Rockey","Anish", "Ravnish" , "Mohit", "Rockey","Anish", "Ravnish" , "Mohit", "Rockey","Anish", "Ravnish" , "Mohit", "Rockey","Anish", "Ravnish" , "Mohit", "Rockey","Anish", "Ravnish" , "Mohit", "Rockey"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }


}


extension ViewController : UITableViewDelegate, UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = nameArray[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 200))
        headerView.backgroundColor = .purple
        
        let headerImage = UIImageView(frame: headerView.bounds)
        headerView.addSubview(headerImage)
        headerImage.contentMode = .scaleToFill
        headerImage.image = UIImage(named: "profileFrame")
        
        
        return headerView
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        let footer = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 30))
        footer.backgroundColor = .systemOrange
        
        let footerTitle = UILabel(frame: footer.bounds)
        footerTitle.textAlignment = .center
        footerTitle.text = "Thank You"
        footerTitle.textColor = .systemPink
        footer.addSubview(footerTitle)
        return footer
    }
    
    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
        30
    }
    
    
}
