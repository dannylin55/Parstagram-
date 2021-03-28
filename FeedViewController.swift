//
//  FeedViewController.swift
//  Parstagram
//
//  Created by Danny Lin on 3/19/21.
//

import UIKit
import Parse
import AlamofireImage

internal class FeedViewController: UIViewController, UITableViewDelegate, UITableVoewDataSource {
    
    @IBOutlet weak internal var tableView: UITableView!
    
    internal var posts: [PRObjects]
    
    override internal func viewDidLoad()
    
    override internal func viewDidAppear(_ animated: Bool)
    
    internal func tableView(_)
    
    
    @IBAction func onLogoutButton(_ sender: Any) {
        PFUser.logOut()
        
        let main = UIStoryboard(name: "Main", bundle: nil)
        let loginViewController = main.instantiateViewController(withIdentifier:"LoginViewController")
        
        UIApplication.shared.delegate as! AppDelegate
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let post = posts[indexPath.row]
        
        let comment = PFObject(className: "Comments")
        comment["text"] = "This is a random comment"
        comment["post"] = post
        comment["author"] = PFUser.current()!
        
        post.add(comment, forKey: "comments")
        
        post.saveInBackground { (success, error) in
            if success {
                print("Comment saved")
            } else {
                print("Error saving comment")
            }
        }
    }

        // Do any additional setup after loading the view.
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
