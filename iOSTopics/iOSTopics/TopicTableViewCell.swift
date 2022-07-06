//
//  TopicTableViewCell.swift
//  iOSTopics
//
//  Created by M1 on 06.07.2022.
//

import UIKit

class TopicTableViewCell: UITableViewCell {
    
    @IBOutlet private var nameTopicView: UIView!
    @IBOutlet private var nameTopicLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        nameTopicView.backgroundColor = .darkGray
    }
    
    func update(topic: String) {
        nameTopicLabel.text = topic
//        nameTopicView = view
    }
}
