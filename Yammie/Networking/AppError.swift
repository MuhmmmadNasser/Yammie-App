//
//  AppError.swift
//  Yammie
//
//  Created by Mohamed on 18/11/2021.
//

import Foundation

enum AppError: LocalizedError {
    case errorDecoding
    case unknownError
    case invalidUrl
    case serverError(String)
    
    var errorDescription: String? {
        switch self {
        case .errorDecoding:
            return "Respondse could not be decode"
        case .unknownError:
            return "Bruhhh!!! I have no idea what go on"
        case .invalidUrl:
            return "HEYYY!!! Give me avalid URL"
        case .serverError(let error):
            return error 
        }
    }
}
