// Auto-generated from searchResult.ts
import Foundation

public struct SearchResult<T: Codable>: Codable {
    /// An array of search result items.
    public let search: [T]
    /// The total number of results found.
    public let totalResults: String
    /// Indicates if the response was successful.
    public let response: ResponseStatus

    enum CodingKeys: String, CodingKey {
        case search = "Search"
        case totalResults
        case response = "Response"
    }
}
