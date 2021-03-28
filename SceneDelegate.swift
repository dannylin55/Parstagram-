//
//  SceneDelegate.swift
//  Parstagram
//
//  Created by Danny Lin on 3/26/21.
//

import UIKit
import Parse

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOption: UIScene.ConnectionOptions) ->  {
        
        if PFUser.current() != nil {
            let main = UIStoryboard(name: "Main", bundle: nil)
            let feedNavigationController = main.instantiateViewController(withIdentifier: "FeedNavigationController")
            
            window?.rootViewController = feedNavigationController
             
            
        }
        
        return true

        guard let_ =  (scene as? UIWindowScene) else { return }
  
    }
}

func sceneDidDisconnect(_ scene: UIScene) {
    
    if PFUser.current() != nil {
        let main = UIStoryboard(name: "Main", bundle: nil)
    }
    
    return true
}
