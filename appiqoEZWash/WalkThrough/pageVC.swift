//
//  pageVC.swift
//  appiqoEZWash
//
//  Created by Dilip Kumar on 03/08/18.
//  Copyright © 2018 Dilip Kumar. All rights reserved.
//

import UIKit

class pageVC: UIPageViewController, UIPageViewControllerDelegate, UIPageViewControllerDataSource {
  
    lazy var VCArr: [UIViewController] = {
        return [
            self.VCInstate(name: "firstVC"),
            self.VCInstate(name: "secondVC"),
            self.VCInstate(name: "thirdVC")]
    }()
    private func VCInstate(name: String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: name)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        UserDefaults.standard.set(true, forKey: "welcome")

        self.delegate = self
        self.dataSource = self
        if let firstVC = VCArr.first {
            setViewControllers([firstVC], direction: .forward, animated: true, completion: nil)
        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       self.navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController?{
        guard let viewControllerIndex = VCArr.index(of: viewController) else {
            return nil
        }
        let previesIndex = viewControllerIndex - 1
        guard previesIndex >= 0 else {
            return VCArr.last
        }
        guard VCArr.count > previesIndex else {
            return nil
        }
        return VCArr[previesIndex]
    }
    
    public func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewControllerIndex = VCArr.index(of: viewController) else {
            return nil
        }
        let nextIndex = viewControllerIndex + 1
//        guard nextIndex < VCArr.count else {
//            return VCArr.first
//        }
        guard VCArr.count > nextIndex else {
            return nil
        }
        return VCArr[nextIndex]
    }
    
    
   
 public func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return VCArr.count
    }
    
  public func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        guard let firstviewControll = viewControllers?.first, let firstViewControllerIndex = VCArr.index(of: firstviewControll) else {
            return 0
        }
        return firstViewControllerIndex
    }
    
    
   
}
