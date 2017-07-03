//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Jimmy Hoang on 2017-07-02.
//  Copyright © 2017 Jimmy Hoang. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    //MARK: Meal Class Tests
    
    func testMealInitializationSucceeds() {
        let zeroRatingMeal = Meal.init(name:"Zero",photo:nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    func testMealInitializationFails() {
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
    }
    
}
