//
//  RepoResultsCell.swift
//  GithubDemo
//
//  Created by Kevin Alfonso on 2/16/17.
//  Copyright © 2017 codepath. All rights reserved.
//

import UIKit

class RepoResultsCell: UITableViewCell {

    @IBOutlet weak var githubTitleLabel: UILabel!
    @IBOutlet weak var creatorLabel: UILabel!
    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    var githubRepo: GithubRepo! {
        didSet {
            // Wiring data to labels
            githubTitleLabel.text = githubRepo.name
            creatorLabel.text = githubRepo.ownerHandle
            //avatarImageView.setImageWith(githubRepo.ownerAvatarUrl)
            descriptionLabel.text = githubRepo.description

        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
