//
//  CircledTabBarController.swift
//  4inShield
//
//  Created by Mohamed Melek Chtourou on 14/1/2023.
//

import Foundation
import UIKit
class CircledTabBarController: UITabBarController {

    var circle: UIView?

    override func viewDidLoad() {
        super.viewDidLoad()
        let numberOfItems = CGFloat(tabBar.items!.count)
        let tabBarItemSize = CGSize(width: (tabBar.frame.width / numberOfItems) - 20, height: tabBar.frame.height)
        circle = UIView(frame: CGRect(x: 0, y: 5, width: tabBarItemSize.height * 2, height: tabBarItemSize.height))
        circle?.backgroundColor = UIColor(red: 49 / 255, green: 77 / 255, blue: 152 / 255, alpha: 1)
        circle?.layer.cornerRadius = 10
        //circle?.alpha = 0
        tabBar.addSubview(circle!)
        tabBar.sendSubviewToBack(circle!)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let index = -(tabBar.items?.firstIndex(of: tabBar.selectedItem!)?.distance(to: 0))!
        let frame = frameForTabAtIndex(index: index)
        circle?.center.x = frame.origin.x + frame.width/2
        circle?.alpha = 1
    }

    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        let index = -(tabBar.items?.firstIndex(of: item)?.distance(to: 0))!
        let frame = frameForTabAtIndex(index: index)
        self.circle?.center.x = frame.origin.x + frame.width/2
    }

    func frameForTabAtIndex(index: Int) -> CGRect {
        var frames = tabBar.subviews.compactMap { (view:UIView) -> CGRect? in
            if let view = view as? UIControl {
                for item in view.subviews {
                    if let image = item as? UIImageView {
                        return image.superview!.convert(image.frame, to: tabBar)
                    }
                }
                return view.frame
            }
            return nil
        }
        frames.sort { $0.origin.x < $1.origin.x }
        if frames.count > index {
            return frames[index]
        }
        return frames.last ?? CGRect.zero
    }

}
