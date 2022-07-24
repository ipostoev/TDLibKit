//
//  ParserTests.swift
//  

import XCTest
import TlParserLib

class ParserTests: XCTestCase {

    func testDefaultPositive() throws {
        guard let schema = getSchema(by: "td_api.tl") else {
            XCTFail("couldn't parse schema")
            return
        }
        
        let subjectToTest = IndirectEnumsEvaluator(schema: schema)
        subjectToTest.evaluate()
        
        XCTAssert(subjectToTest.indirectEnumNames.contains("RichText".lowercased()))
        XCTAssert(subjectToTest.indirectEnumNames.contains("PageBlock".lowercased()))
        XCTAssert(subjectToTest.indirectEnumNames.contains("TargetChat".lowercased()))
    }
    
    func tesDefaultNegative() throws {
        guard let schema = getSchema(by: "td_api_norefs.tl") else {
            XCTFail("couldn't parse schema")
            return
        }
        
        let subjectToTest = IndirectEnumsEvaluator(schema: schema)
        subjectToTest.evaluate()
        
        XCTAssert(subjectToTest.indirectEnumNames.isEmpty)
    }
    
    private func getSchema(by fileName: String) -> Schema? {
        let path = FileManager.default.currentDirectoryPath
        let dataPath = "Tests/TestData/\(fileName)"
        var url = URL(fileURLWithPath: path)
        url.appendPathComponent(dataPath)
        
        guard let data = try? Data(contentsOf: url),
              let text = String(data: data, encoding: .utf8) else {
            return nil
        }
        let parser = Parser(tl: text)
        return parser.parse()
    }
}
