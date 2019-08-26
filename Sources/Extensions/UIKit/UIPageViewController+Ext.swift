//
//  UIPageViewController+Ext.swift
//  
//
//  Created by Neil Smith on 26/08/2019.
//

import UIKit

public extension UIPageViewController {

    func goToNextPage(animated: Bool, completion: (() -> Void)? = nil) {
        guard let current = self.viewControllers?.first else { return }
        guard let next = dataSource?.pageViewController(self, viewControllerAfter: current) else { return }
        setViewControllers([next], direction: .forward, animated: animated) { _ in completion?() }
    }

    func goToPreviousPage(animated: Bool, completion: (() -> Void)? = nil) {
        guard let current = self.viewControllers?.first else { return }
        guard let previous = dataSource?.pageViewController(self, viewControllerBefore: current) else { return }
        setViewControllers([previous], direction: .reverse, animated: animated) { _ in completion?() }
    }

}
