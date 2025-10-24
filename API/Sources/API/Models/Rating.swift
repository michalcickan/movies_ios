// Auto-generated from rating.ts
import Foundation

public struct Rating: Codable, Equatable {
    /// The source of the rating (e.g., "Internet Movie Database").
    public let source: String
    /// The value of the rating (e.g., "8.2/10").
    public let value: String

    public init(source: String, value: String) {
        self.source = source
        self.value = value
    }

    private enum CodingKeys: String, CodingKey {
        case source = "Source"
        case value = "Value"
    }
}
