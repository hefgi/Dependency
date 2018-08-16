// https://github.com/Quick/Quick

import Quick
import Nimble
@testable import DependencyExample

class TableOfContentsSpec: QuickSpec {
    override func spec() {
        describe("a View Controller") {
            context("After being instantiate") {
                it("should return a string") {
                    let vc = DependencyViewController.instantiate()
                    expect("1234") == vc.giveMeAString()
                }
            }
        }
    }
}
