//
//  CLI.swift
//  SpotCLICore
//
//  Created by Bennett Smith on 1/30/20.
//

import Foundation
import Files
import ShellOut

public struct CLI {
    private let arguments: [String]
    private let environment: [String: String]
    
    public init(arguments: [String], environment: [String: String]) {
        self.arguments = arguments
        self.environment = environment
    }
    
    public func run(in folder: Folder = .current) throws {
        guard arguments.count > 1 else {
            return outputHelpText()
        }
        
        switch arguments[1] {
        case "ascjwt":
            doit()
        default:
            outputHelpText()
        }
    }
}

private extension CLI {
    func outputHelpText() {
        print("""
        Spot Command Line Interface
        ---------------------------
        Bag of useful tools for automating various Xcode development and deployment tasks.

        Available commands:

        """)
    }
    
    private func extractP8Path(from arguments: [String]) -> URL? {
        guard arguments.count > 3 else {
            return nil
        }

        var p8path: URL? = nil
        
        switch arguments[2] {
        case "-x", "--xyz":
            guard let path = URL(string: arguments[3]) else {
                break
            }
            p8path = nil
        default:
            p8path = nil
        }
        
        return p8path
    }
    
    func doit() {
        
    }
}
