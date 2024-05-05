//
//  ViewController.swift
//  boardify
//
//  Created by Дмитро Павлов on 05.05.2024.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let vc1 = BoardgamesListVC()
        let vc2 = FavoritesBoardgamesVC()
        
        let nav1 = UINavigationController(rootViewController: vc1)
        let nav2 = UINavigationController(rootViewController: vc2)
        
        nav1.tabBarItem = UITabBarItem(title: "Boardgames", image: UIImage(systemName: "books.vertical"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Favorites", image: UIImage(systemName: "star"), tag: 2)
        nav1.navigationBar.prefersLargeTitles = true
        nav2.navigationBar.prefersLargeTitles = true
        
        setViewControllers([nav1, nav2], animated: true)
        
        let text = "http://192.168.0.102:3000/boardgames"
        
        let url = URL(string: text)!
        
        let urlRequest = URLRequest(url: url)
        
        
        let task = URLSession.shared.dataTask(with: urlRequest) { data, response, error in
            guard let data else { print("no data"); return }
            
            do {
                let result = try JSONDecoder().decode(BFAllBoardames.self, from: data)
                
                print("result")
                print(result.boardgames[0])
            }
            catch {
                print(error)
            }
        }
        
        task.resume()
        
    }


}

