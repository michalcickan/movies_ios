// Auto-generated from searccMovieItem.ts
import Foundation

public struct SearchMovieItem: Codable, Equatable {
    /// The title of the media.
    public let title: String?
    /// The release year or range of years for the media.
    public let year: String?
    /// The IMDb unique identifier.
    public let imdbID: String?
    /// The type of media (e.g., "movie", "series").
    public let type: GenreType?
    /// A URL to the poster image.
    public let poster: String?

    enum CodingKeys: String, CodingKey {
        case title = "Title"
        case year = "Year"
        case imdbID
        case type = "Type"
        case poster = "Poster"
    }
}
