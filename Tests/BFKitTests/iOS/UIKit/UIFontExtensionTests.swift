//
//  UIFontExtensionTests.swift
//  BFKit
//
//  The MIT License (MIT)
//
//  Copyright (c) 2015 - 2016 Fabrizio Brancati. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

import XCTest
import Foundation
import UIKit
@testable import BFKit

class UIFontExtensionTests: XCTestCase {
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testLightFont() {
        UIFont.lightFont = UIFont(fontName: .Helvetica, size: 20)
        
        XCTAssert(UIFont.lightFont.fontName == FontName.Helvetica.rawValue)
    }
    
    func testRegularFont() {
        UIFont.regularFont = UIFont(fontName: .Helvetica, size: 20)
        
        XCTAssert(UIFont.regularFont.fontName == FontName.Helvetica.rawValue)
    }
    
    func testBoldFont() {
        UIFont.boldFont = UIFont(fontName: .Helvetica, size: 20)
        
        XCTAssert(UIFont.boldFont.fontName == FontName.Helvetica.rawValue)
    }
    
    func testInitFontNameSize() {
        let font = UIFont(fontName: .HelveticaNeue, size: 20)
        
        XCTAssert(font.fontName == FontName.HelveticaNeue.rawValue)
    }
    
    func testAllFonts() {
        let fonts = UIFont.allFonts()
        
        XCTAssertNotNil(fonts)
        XCTAssertFalse(fonts.isEmpty)
    }
    
    func testCalculateHeightWidthFontText() {
        let height = UIFont.calculateHeight(width: 320, font: UIFont(fontName: .Helvetica, size: 12), text: "This is a test\nOn multiple\nLines.\n\nBye.")
        
        XCTAssert(height > 0)
    }
    
    func testCalculateHeightWidthFontSizeText() {
        let height = UIFont.calculateHeight(width: 320, font: .Helvetica, fontSize: 12, text: "This is a test\nOn multiple\nLines.\n\nBye.")
        
        XCTAssert(height > 0)
    }
    
    func testFontsNameFamily() {
        let fonts = UIFont.fontsName(family: .Helvetica)
        
        XCTAssertFalse(fonts.isEmpty)
    }
}
