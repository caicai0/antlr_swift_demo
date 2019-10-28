import XCTest
@testable import loadImages

final class loadImagesTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(loadImages().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
