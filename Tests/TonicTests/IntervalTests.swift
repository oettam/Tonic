import Tonic
import XCTest

final class IntervalTests: XCTestCase {
    func testIntervalBetween() {
        XCTAssertEqual(Interval.betweenNotes(.C, .D), .M2)
        XCTAssertEqual(Interval.betweenNotes(.C, .G), .P5)
        XCTAssertEqual(Interval.betweenNotes(.G, .C), .P5)
        XCTAssertEqual(Interval.betweenNotes(.C, .Fs), .A4)
        XCTAssertEqual(Interval.betweenNotes(.C, .Gb), .d5)
        XCTAssertEqual(Interval.betweenNotes(Note(.C, octave: 1), Note(.D, octave: 2)), .M9)
        XCTAssertEqual(Interval.betweenNotes(Note(.C, octave: 1), Note(.C, octave: 2)), .P8)
    }
}
