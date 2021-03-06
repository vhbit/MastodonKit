import Foundation

public struct Clients {
    /// Registers an application.
    ///
    /// - Parameters:
    ///   - appName: Name of your application.
    ///   - redirectURI: Where the user should be redirected after authorization (for no redirect, omit this parameter).
    ///   - scopes: Application's access scopes.
    ///   - website: URL to the homepage of your app.
    /// - Returns: Resource for `ClientApplication`.
    public static func register(clientName: String, redirectURI: String = "urn:ietf:wg:oauth:2.0:oob", scopes: [AccessScope], website: String? = nil) -> ClientApplicationResource {
        let parameters = [
            Parameter(name: "client_name", value: clientName),
            Parameter(name: "redirect_uris", value: redirectURI),
            Parameter(name: "website", value: website),
            Parameter(name: "scopes", value: scopes.map(toString).joined(separator: " "))
        ]

        let method = HTTPMethod.post(Payload.parameters(parameters))
        return ClientApplicationResource(path: "/api/v1/apps", method: method, parse: ClientApplicationResource.parser)
    }
}
