//
//  CounterTableViewCell.swift
//  Binary Counter
//
//  Created by 라완 💕 on 22/04/1444 AH.
//

import UIKit

protocol CounterTableViewCellDelegate: AnyObject{
    func theTotalPlus(counter: Int)
    func theTotalMinus(counter: Int)
}
class CounterTableViewCell: UITableViewCell {

    
    @IBOutlet weak var numberLabel: UILabel!
    
    weak var delegate: CounterTableViewCellDelegate?
    @IBAction func plusButton(_ sender: UIButton) {
       
        guard let counterText = numberLabel.text,
              let counter = Int(counterText) else {return}
        delegate?.theTotalPlus(counter: counter)
       
    }
    
    @IBAction func minusButton(_ sender: UIButton) {
        guard let counterText = numberLabel.text,
              let counter = Int(counterText) else {return}
        delegate?.theTotalMinus(counter: counter)
    }
    
}
