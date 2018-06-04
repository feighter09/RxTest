//
//  Motor.swift
//  RxTest
//
//  Created by Austin Feight on 6/4/18.
//  Copyright © 2018 Lost In Flight. All rights reserved.
//

import Foundation

protocol MotorDelegate {
  func didPowerOn()
  func didRotate(to rotation: Int)
  func error(_ error: Error)
}

final class Motor {
  enum Errors: Error {
    case powerFailure
    case malfunction
  }
  
  var delegate: MotorDelegate?
  
  func powerOn()
  {
    if arc4random_uniform(2) == 1 {
      delegate?.didPowerOn()
    }
    else {
      delegate?.error(Errors.powerFailure)
    }
  }
  
  func rotate(to rotation: Int)
  {
    if arc4random_uniform(2) == 1 {
      delegate?.didRotate(to: rotation)
    }
    else {
      delegate?.error(Errors.malfunction)
    }
  }
}
