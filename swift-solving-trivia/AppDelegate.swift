//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    
    
  func solveTrivia(_ trivia: [String : String]) -> String {
    var badArray : [Character] = []
    for (state, capital) in trivia {
      let stateChars = Array(state.lowercased().characters)
      let capitalChars = Array(capital.lowercased().characters)

      for char in stateChars {
        if capitalChars.contains(char) {
          badArray.append(char)
        }
      }
      if badArray.count == 0 {
        return state
      } else {
        badArray = []
      }

    }
    return "Hi :D"
  }
    
}

