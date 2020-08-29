import XCTest

#if !canImport(ObjectiveC)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(EssentialsKitTests.allTests),
    ]
}
#endif
