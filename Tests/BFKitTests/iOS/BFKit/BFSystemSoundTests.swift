//
//  BFSystemSoundTests.swift
//  BFKit
//
//  Created by Fabrizio on 22/10/16.
//  Copyright © 2016 Fabrizio Brancati. All rights reserved.
//

import XCTest
import Foundation
@testable import BFKit

class BFSystemSoundTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testPlaySystemSound() {
        BFSystemSound.playSystemSound(audioID: .alarm)
        
        XCTAssert(true)
    }
    
    func testVibrate() {
        BFSystemSound.vibrate()
        
        XCTAssert(true)
    }
    
    /*func testPlaySound() {
        
    }*/
    
    /*func testDisposeSound() {
        let disposedSound = BFSystemSound.disposeSound(SystemSoundID(BFSystemSound.AudioID.alarm.rawValue))
        
        XCTAssert(disposedSound)
    }*/
}
