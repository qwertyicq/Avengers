//
//  TeamCell.swift
//  Avengers
//
//  Created by Nikolay T on 18.11.2021.
//

import UIKit

class TeamCell: UITableViewCell {
    
    let teamLogo: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "teamLogoDefault")
        return image
    }()
    
    let teamNameLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    let teamMemberCountLabel: UILabel = {
        let label = UILabel()
        return label
    }()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        setConstraint()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}

extension TeamCell {
    
    private func setConstraint() {
        
        self.addSubview(teamLogo)
        
        NSLayoutConstraint.activate([
            teamLogo.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            teamLogo.topAnchor.constraint(equalTo: self.topAnchor, constant: 5),
            teamLogo.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            teamLogo.widthAnchor.constraint(equalToConstant: 90)])
        
        self.addSubview(teamNameLabel)
        
        NSLayoutConstraint.activate([
            teamNameLabel.leadingAnchor.constraint(equalTo: teamLogo.trailingAnchor, constant: 10),
            teamNameLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            teamNameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            teamNameLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10)])
    }
}
