//
//  TrackCell.swift
//  lab-tunley
//
//  Created by user230516 on 2/4/23.
//

import UIKit
import Nuke
class TrackCell: UITableViewCell {

    @IBOutlet weak var trackNameLabel: UILabel!
    @IBOutlet weak var albumNameLabel: UILabel!
    @IBOutlet weak var artistNameLabel: UILabel!
    @IBOutlet weak var trackImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    func configure(with track: Track) {
        trackNameLabel.text = track.trackName
        artistNameLabel.text = track.artistName
        albumNameLabel.text = track.collectionName
        
        Nuke.loadImage(with: track.artworkUrl100, into: trackImageView)
    }

}
