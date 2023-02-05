//
//  Track.swift
//  lab-tunley
//
//  Created by Charlie Hieger on 12/2/22.
//

import Foundation

// TODO: Pt 1 - Create a Track model struct
struct Track {
    let trackName: String
    let artistName: String
    let collectionName: String
    let artworkUrl100: URL
    let genreName: String
    let releaseDate: Date
    let trackTimeMillis: Int
}
// TODO: Pt 1 - Create an extension with a mock tracks static var
extension Track {
    static var mockTracks: [Track] = [
        Track (trackName: "Begin Again",
               artistName: "Purity Ring",
               collectionName: "Another Eternity",
               artworkUrl100: URL(string: "https://is3-ssl.mzstatic.com/image/thumb/Music124/v4/ac/a3/e6/aca3e603-e59d-7957-5b2e-1a77dc9da5a3/cover.jpg/100x100bb.jpg")!,
               genreName: "Electronic",
               releaseDate: Date(),
               trackTimeMillis: 217201),
        Track (trackName: "Lofticries",
              artistName: "Purity Ring",
              collectionName: "Shrines",
               artworkUrl100: URL(string: "https://is5-ssl.mzstatic.com/image/thumb/Music122/v4/fa/ef/be/faefbec4-10e9-8c0b-c350-cfa5d6f28a07/652637321869.png/100x100bb.jpg")!,
               genreName: "Electronic",
               releaseDate: Date(),
               trackTimeMillis: 239613 ),
        Track (trackName: "Amenamy",
              artistName: "Purity Ring",
              collectionName: "Shrines",
               artworkUrl100: URL(string: "https://is5-ssl.mzstatic.com/image/thumb/Music122/v4/fa/ef/be/faefbec4-10e9-8c0b-c350-cfa5d6f28a07/652637321869.png/100x100bb.jpg")!,
               genreName: "Electronic",
               releaseDate: Date(),
               trackTimeMillis: 207080)
    ]
}

// MARK: Helper Methods
/// Converts milliseconds to mm:ss format
///  ex:  208643 -> "3:28"
///  ex:
func formattedTrackDuration(with milliseconds: Int) -> String {
    let (minutes, seconds) = milliseconds.quotientAndRemainder(dividingBy: 60 * 1000)
    let truncatedSeconds = seconds / 1000
    if truncatedSeconds >= 10 {
        return "\(minutes):\(truncatedSeconds)"
    } else {
        return "\(minutes):0\(truncatedSeconds)"
    }
}
