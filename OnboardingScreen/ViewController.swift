//
//  ViewController.swift
//  OnboardingScreen
//
//  Created by asmita.borawake on 09/04/18.
//  Copyright © 2018 asmita.borawake. All rights reserved.
//

import UIKit
import paper_onboarding
class ViewController: UIViewController , PaperOnboardingDataSource , PaperOnboardingDelegate{

    @IBOutlet weak var getbuttonstarted: UIButton!
    @IBOutlet weak var onbpardingView: Onboarding!
    override func viewDidLoad() {
        super.viewDidLoad()
       onbpardingView.dataSource = self
        onbpardingView.delegate  = self
    }
    func onboardingItemsCount() -> Int {
        return 3
    }
    
    
    
    func onboardingConfigurationItem(_: OnboardingContentViewItem, index _: Int) {
        
    }
    
    
    
    func onboardingWillTransitonToIndex(_ index: Int) {
        if index == 1 {
            
            if self.getbuttonstarted.alpha == 1 {
                UIView.animate(withDuration: 0.2, animations: {
                    self.getbuttonstarted.alpha = 0
                })
            }
            
        }
    }
    
    func onboardingDidTransitonToIndex(_ index: Int) {
        if index == 2 {
            UIView.animate(withDuration: 0.4, animations: {
                self.getbuttonstarted.alpha = 1
            })
        }
    }
    
    
    
    
    @IBAction func getstarted_click(_ sender: Any) {
        
        let userdefaults = UserDefaults.standard
       userdefaults.set(true, forKey: "onboarding")
        userdefaults.synchronize()
        
        
    }
    
    func onboardingItem(at index: Int) -> OnboardingItemInfo {
        let backgroundcolcor1 = UIColor(displayP3Red: 217/255, green: 72/255, blue: 89/255, alpha: 1)
         let backgroundcolcor2 = UIColor(displayP3Red: 106/255, green: 166/255, blue: 211/255, alpha: 1)
         let backgroundcolcor3 = UIColor(displayP3Red: 168/255, green: 200/255, blue: 78/255, alpha: 1)
        let titleFont  = UIFont(name: "AvenirNext-Bold", size: 20)!
        let descriptionFont  = UIFont(name: "AvenirNext-Regular", size: 18)!
        

        return[OnboardingItemInfo(informationImage: UIImage(named:"rocket")!,
                                  title: "A Great Rocket Start",
                                  description: "Caramels cheesecake bonbon bonbon topping. Candy halvah cotton candy chocolate bar cake",
                                  pageIcon: UIImage(named:"circle-outline")!,
                                  color: backgroundcolcor1,
                                  titleColor: UIColor.white,
                                  descriptionColor: UIColor.white,
                                  titleFont: titleFont,
                                  descriptionFont: descriptionFont),
               OnboardingItemInfo(informationImage: UIImage(named:"brush")!,
                                  title: "A Great brush Start",
                                  description: "Caramels cheesecake bonbon bonbon topping. Candy halvah cotton candy chocolate bar cake",
                                  pageIcon: UIImage(named:"circle-outline")!,
                                  color: backgroundcolcor2,
                                  titleColor: UIColor.white,
                                  descriptionColor: UIColor.white,
                                  titleFont: titleFont,
                                  descriptionFont: descriptionFont),
               OnboardingItemInfo(informationImage: UIImage(named:"notification")!,
                                  title: "A Great notification Start",
                                  description: "Caramels cheesecake bonbon bonbon topping. Candy halvah cotton candy chocolate bar cake",
                                  pageIcon: UIImage(named:"circle-outline")!,
                                  color: backgroundcolcor3,
                                  titleColor: UIColor.white,
                                  descriptionColor: UIColor.white,
                                  titleFont: titleFont,
                                  descriptionFont: descriptionFont)
               
               
               ][index]
//
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

