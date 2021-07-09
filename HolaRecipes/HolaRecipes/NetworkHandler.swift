//
//  NetworkHandler.swift
//  HolaRecipes
//
//  Created by Aditi Agrawal on 09/07/21.
//

import Foundation
import Alamofire

/// Handles the network connection, the actual request to the API is made here
class NetworkHandler {
    
    /// Requests json data from a given site
    ///
    /// - Parameters:
    ///   - apiPath: the api path of the site
    ///   - apiParameters: the api parameters
    ///   - success: returns the successfully fetched api data
    ///   - failure: returns an errorType if there was an network issue
    func requestJSON(apiPath: String, apiParameters: [String:String], success: @escaping (Data) -> (), failure: @escaping (APIError) -> () ) {
        AF.request(apiPath, method: .get, encoding: JSONEncoding.default)
            .validate(statusCode: 200..<300)
            .responseData { response in
                switch response.result {
                case .success:
                    if let data = response.data {
                        return success(data)
                    } else {
                        return failure(APIError.noData)
                    }
                case .failure(_):
                    if let httpStatusCode = response.response?.statusCode {
                        switch(httpStatusCode) {
                        case 400...499:
                            return failure(APIError.badRequest(response.data))
                        case 500...599:
                            return failure(APIError.serverError(response.error.debugDescription))
                        default:
                            return failure(APIError.unknown)
                        }
                    } else {
                        failure(.noNetwork)
                    }
                }
            }
    }
    
}

enum APIError: Error {
    /// No data received from the server.
    case noData
    /// No internet connection
    case noNetwork
    /// The server response was invalid (unexpected format).
    case invalidResponse
    /// The request was rejected: 400-499
    case badRequest(Data?)
    /// Encoutered a server error: 500-599
    case serverError(String?)
    /// There was an error parsing the data.
    case parseError(String?)
    /// Unknown error.
    case unknown
}
