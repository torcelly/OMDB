import XCTest
@testable import OMDB

final class OMDBTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(OMDB().text, "Hello, World!")
    }
}
