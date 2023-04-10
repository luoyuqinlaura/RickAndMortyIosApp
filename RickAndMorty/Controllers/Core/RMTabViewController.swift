//
//  ViewController.swift
//  RickAndMorty
//
//  Created by biubiubiu on 2023/4/5.
//

import UIKit

//UIViewController ->

/// Controller to house tabs and root tab controllers
final class RMTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .purple
        setUpTabs()
    }

    /* Part 1: Connect this main controller with other four tabs, set up tabs for character, location and settings view controller.*/
    private func setUpTabs() {
        //create instance for these four controllers and attach them to this main tab bar controller
        let characterVC = RMCharacterViewController()
        let locationVC = RMLocationViewController()
        let settingsVC = RMSettingsViewController()
        let episodeVC = RMEpisodeViewController()
        
        characterVC.navigationItem.largeTitleDisplayMode = .automatic
        locationVC.navigationItem.largeTitleDisplayMode = .automatic
        settingsVC.navigationItem.largeTitleDisplayMode = .automatic
        episodeVC.navigationItem.largeTitleDisplayMode = .automatic
        
        // we want a navigation for each VC to convert from main to sub.(wrap)
        // setViewControllers is a function of UITabBarController to achieve the upper sentense
            
        let nav1 = UINavigationController(rootViewController: characterVC)
        let nav2 = UINavigationController(rootViewController: locationVC);
        let nav3 = UINavigationController(rootViewController: settingsVC);
        let nav4 = UINavigationController(rootViewController: episodeVC);
        
        // the tab bar item reoresent the view controller when added to the tab bar controller
        // 设定下面那小栏tab的图标
        nav1.tabBarItem = UITabBarItem(title: "Characters", image: UIImage(systemName: "person"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 4)
        
        for nav in [nav1,nav2,nav3,nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers([nav1,nav2,nav3,nav4], animated: true)
    }
}

