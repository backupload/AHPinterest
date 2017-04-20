//
//  AHPinContentStickyHeader.swift
//  AHPinterest
//
//  Created by Andy Hurricane on 4/19/17.
//  Copyright © 2017 AndyHurricane. All rights reserved.
//

import UIKit

class AHPinNavBar: UICollectionReusableView {
    @IBOutlet weak var moreLabel: UILabel!
    @IBOutlet weak var optionContainer: UIView!
    
    weak var pinVM: AHPinViewModel?
    weak var detailVC: AHDetailVC? 
    
    var showNavBar = true {
        didSet {
            if showNavBar {
                UIView.animate(withDuration: 0.25, animations: { 
                    self.optionContainer.isHidden = false
                    self.moreLabel.isHidden = true
                })
            }else{
                UIView.animate(withDuration: 0.25, animations: {
                    self.optionContainer.isHidden = true
                    self.moreLabel.isHidden = false
                })
            }
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        backgroundColor = UIColor.white.withAlphaComponent(0.7)
    }

    class func navBar() -> AHPinNavBar {
        return Bundle.main.loadNibNamed("AHPinNavBar", owner: self, options: nil)!.first as! AHPinNavBar
    }
    
    @IBAction func saveBtnTapped(_ sender: AnyObject) {
    }
    
    @IBAction func moreBtnTapped(_ sender: AnyObject) {
    }
    @IBAction func planeBtnTapped(_ sender: AnyObject) {
    }
    @IBAction func checkBtnTapped(_ sender: UIButton) {
    }
    @IBAction func backBtnTapped(_ sender: AnyObject) {
        guard let detailVC = detailVC, let navVC = detailVC.navigationController else {
            return
        }
        navVC.popViewController(animated: true)
    }
    
}
