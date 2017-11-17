//
//  UserRouter.swift
//  Conomin
//
//  Created by Phuong Nguyen on 6/19/17.
//  Copyright © 2017 Framgia. All rights reserved.
//

import Alamofire
import SwiftyJSON

enum UserRouter: URLRequestConvertible {
    
    case signUp(parameters: Parameters)
    case read(userId: Int)
    case update(parameters: Parameters)
    case login(parameters: Parameters)
    case logout(parameters: Parameters)
    
    var method: HTTPMethod {
        switch self {
        case .signUp:
            return .post
        case .read:
            return .get
        case .update:
            return .put
        case .login:
            return .post
        case .logout:
            return .post
        }
    }
    
    var path: String {
        switch self {
        case .signUp:
            return Routes.register
        case .read(let userId):
            return "\(Routes.user)/\(userId)"
        case .update:
            return "\(Routes.profile)"
        case .login:
            return Routes.login
        case .logout:
            return Routes.logout
        }
    }
    
    // MARK: URLRequestConvertible
    func asURLRequest() throws -> URLRequest {
        let url = try Routes.root.asURL()
        var urlRequest = URLRequest(url: url.appendingPathComponent(path))
        urlRequest.httpMethod = method.rawValue
        switch self {
        case .signUp(let parameters):
            urlRequest = try JSONEncoding.default.encode(urlRequest, with: parameters)
        case .update(let parameters):
            urlRequest = try JSONEncoding.default.encode(urlRequest, with: parameters)
        case .login(let parameters):
            urlRequest = try JSONEncoding.default.encode(urlRequest, with: parameters)
        case .logout(let parameters):
            urlRequest = try JSONEncoding.default.encode(urlRequest, with: parameters)
        case .read:
            urlRequest = try URLEncoding.default.encode(urlRequest, with: nil)
        }
        return urlRequest
    }
}

extension Request {
    
    public func debugLog() -> Self {
        #if DEBUG
            debugPrint(self)
        #endif
        return self
    }
    
}
