//
//  CLIError.swift
//  SpotCLICore
//
//  Created by Bennett Smith on 1/30/20.
//

import Foundation

internal enum CLIError: Error {
    case p8FileNotSpecified
}

extension CLIError: CustomStringConvertible {
    var description: String {
        switch self {
        case .p8FileNotSpecified:
            return "Location of .p8 file not specified."
        }
    }
}
