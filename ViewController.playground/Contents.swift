//: Playground - noun: a place where people can play

import UIKit
import XCPlayground
import UI_Framework

class MockVM : NSObject,  MMViewModel {
    @objc func string() -> String {
        return "Hello Code Europe"
    }
}

let vc = MMViewController(VM: MockVM())

XCPlaygroundPage.currentPage.needsIndefiniteExecution = true

XCPlaygroundPage.currentPage.liveView = vc.view
