//
//  CLI.swift
//  SpotCLICore
//
//  Created by Bennett Smith on 1/30/20.
//

import Foundation
import SpotCLICore

let currentProcess = Process()
let arguments = currentProcess.arguments ?? [String]()
let environment = currentProcess.environment ?? [String: String]()

let cli = CLI(arguments: arguments, environment: environment)

do {
    try cli.run()
}
catch {
    fputs("⛔️ \(error)\n", stderr)
    exit(1)
}
