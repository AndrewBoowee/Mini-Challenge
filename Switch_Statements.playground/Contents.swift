//: A UIKit based Playground for presenting user interface
// Andrew Bui
// IOS APP DEV 2
  
import UIKit
import PlaygroundSupport

    enum StatusCode
    {
            case success
            case unathorized
            case forbidden
            case notFound
    }

    func prettyPrint(statusCode: StatusCode) -> String
    {
        switch statusCode
        {
            case .success:
                return "200: Success"
            case .unathorized:
                return "401: Unathorized"
            case .forbidden:
                return "403: Forbidden"
            case .notFound:
                return"404: Not Found"
        }
    }

    let success = StatusCode.success
    print(prettyPrint(statusCode: success))

    let unauthorized = StatusCode.unathorized
    print(prettyPrint(statusCode: unauthorized))

    let forbidden = StatusCode.forbidden
    print(prettyPrint(statusCode: forbidden))

    let notFound = StatusCode.notFound
    print(prettyPrint(statusCode: notFound))
