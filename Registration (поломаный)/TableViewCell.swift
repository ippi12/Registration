//
//  TableViewCell.swift
//  Registration
//
//  Created by MacBookPro on 23.01.2022.
//

import UIKit

protocol TableViewCellDelegate: AnyObject {
    func didInputText(cell: TableViewCell, text: String)
}

class TableViewCell: UITableViewCell {

    @IBOutlet weak var button1: UIButton!
    
    weak var delegate: TableViewCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func newTextInput(text: String) {
        delegate?.didInputText(cell: self, text: text)
    }
    
}
