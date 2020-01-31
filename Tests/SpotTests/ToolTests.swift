import Foundation
import XCTest
import Files
import SpotCore

class ToolTests: XCTestCase {
    func testCreatingFile() throws {
        // Setup a temp test folder that can be used as a sandbox
        let tempFolder = Folder.temporary
        let testFolder = try tempFolder.createSubfolderIfNeeded(withName: "ToolTests")

        // Empty the test folder to ensure a clean state
        try testFolder.empty()

        // Make the temp folder th current working folder
        let fileManager = FileManager.default
        fileManager.changeCurrentDirectoryPath(testFolder.path)

        // Create an instance of the command line tool
        let arguments = [testFolder.path, "Hello.swift"]
        let tool = Tool(arguments: arguments)

        // Run the tool and assert that the file was created
        try tool.run()
        XCTAssertNotNil(try? testFolder.file(named: "Hello.swift"))
    }
}
