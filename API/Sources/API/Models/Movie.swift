import Foundation

let kTitle = "Title"

public struct Movie: Codable, Equatable {
    /// The title of the media.
    public let title: String?
    /// The release year.
    public let year: String?
    /// The MPAA or similar rating (e.g., "PG-13").
    public let rated: String?
    /// The full release date.
    public let released: String?
    /// The running time.
    public let runtime: String?
    /// The genre(s), usually comma-separated.
    public let genre: String?
    /// The director(s), usually comma-separated.
    public let director: String?
    /// The writer(s), usually comma-separated.
    public let writer: String?
    /// The main actors, usually comma-separated.
    public let actors: String?
    /// A short summary of the plot.
    public let plot: String?
    /// The language(s) spoken.
    public let language: String?
    /// The country/countries of origin.
    public let country: String?
    /// Information about awards won/nominated for.
    public let awards: String?
    /// A URL to the poster image.
    public let poster: String?
    /// An array of professional ratings.
    public let ratings: [Rating]?
    /// The Metacritic score (as a string).
    public let metascore: String?
    /// The IMDb rating (e.g., "8.2").
    public let imdbRating: String?
    /// The number of IMDb votes (comma-formatted string).
    public let imdbVotes: String?
    /// The IMDb unique identifier.
    public let imdbID: String?
    /// The type of media (e.g., "movie", "series").
    public let type: GenreType?
    /// DVD release date (often "N/A").
    public let dvd: String?
    /// Box office gross (often "N/A" or a dollar amount string).
    public let boxOffice: String?
    /// Production company (often "N/A").
    public let production: String?
    /// Official website (often "N/A").
    public let website: String?
    /// Indicates if the response was successful ("True" or "False").
    public let response: ResponseStatus

    enum CodingKeys: String, CodingKey {
        case title      = "Title"
        case year       = "Year"
        case rated      = "Rated"
        case released   = "Released"
        case runtime    = "Runtime"
        case genre      = "Genre"
        case director   = "Director"
        case writer     = "Writer"
        case actors     = "Actors"
        case plot       = "Plot"
        case language   = "Language"
        case country    = "Country"
        case awards     = "Awards"
        case poster     = "Poster"
        case ratings    = "Ratings"
        case metascore  = "Metascore"
        case imdbRating = "imdbRating"
        case imdbVotes  = "imdbVotes"
        case imdbID     = "imdbID"
        case type       = "Type"
        case dvd        = "DVD"
        case boxOffice  = "BoxOffice"
        case production = "Production"
        case website    = "Website"
        case response   = "Response"
    }
}
