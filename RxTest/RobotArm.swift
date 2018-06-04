//
//  RobotArm.swift
//  RxTest
//
//  Created by Austin Feight on 6/4/18.
//  Copyright © 2018 Lost In Flight. All rights reserved.
//

import RxSwift

final class RobotArm {
  private let motor = Motor()
  
  init()
  {
    motor.delegate = self
  }
  
  func initialize() -> Observable<Void>
  {
    // Power on the motor and rotate to 0 degrees
    // Return an Observable that completes upon success, or announces the error that occurred
    <#code#>
  }
  
  func highFive() -> Observable<Void>
  {
    // Rotate the motor to 90 degrees
    // Return an Observable that completes upon success, or announces the error that occurred
    <#code#>
  }
}

// MARK: - MotorDelegate
extension RobotArm: MotorDelegate {
  func didPowerOn()
  {
    <#code#>
  }
  
  func didRotate(to rotation: Int)
  {
    <#code#>
  }
  
  func error(_ error: Error)
  {
    <#code#>
  }
}
