import Foundation

// MARK: - DataProvider Protocol

public protocol DataProvider : Sendable {
    func data(for request: URLRequest) async throws -> (Data, URLResponse)
}

actor Client {
    private let baseURL: URL
    private let dataProvider: DataProvider

    public init(baseURL: String,
                dataProvider: DataProvider = URLSession.shared) throws {
        guard let baseURL = URL(string: baseURL) else {
            throw NSError(domain: "Invalid url", code: 0)
        }
        self.baseURL = baseURL
        self.dataProvider = dataProvider
    }
}

extension Client {
    public func get<P: Encodable, M: Decodable>(query: P) async throws -> M {
        var urlRequest = self.urlRequest

        // Encode the query as JSON and assign to httpBody
        urlRequest.httpBody = try JSONEncoder().encode(query)

        // Execute the request
        let (data, response) = try await dataProvider.data(for: urlRequest)
        return try JSONDecoder().decode(M.self, from: data)
    }
}

private extension Client {
    var urlRequest: URLRequest {
        var request = URLRequest(url: baseURL)
        request.setHeaderField(.accept(.json))
        request.setHeaderField(.contentType(.json))
        return request
    }
}

// MARK: - URLRequest Helpers

fileprivate extension URLRequest {
    mutating func setHeaderField(_ field: HeaderField) {
        switch field {
        case let .accept(content):
            setValue(content.rawValue, forHTTPHeaderField: "Accept")
        case let .contentType(content):
            setValue(content.rawValue, forHTTPHeaderField: "Content-Type")
        }
    }

    mutating func setMethod(_ method: Method) {
        self.httpMethod = method.rawValue
    }
}

extension URLSession: DataProvider {}

