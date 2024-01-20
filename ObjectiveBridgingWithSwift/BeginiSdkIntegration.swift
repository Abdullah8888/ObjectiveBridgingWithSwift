//
//  BeginiSdkIntegration.swift
//  ObjectiveBridgingWithSwift
//
//  Created by Abdullah on 20/01/2024.
//

import Foundation
import begini_ios_sdk

@objc class SampleResponse: NSObject {
  @objc var message: String?
  
  init(message: String?) {
    self.message = message
  }
}

class SampleClass: NSObject {
    
    @objc var sampleCallback: ( (SampleResponse) -> Void)?
    
    @objc func sampleOperatation() {
        sampleCallback?(SampleResponse(message: "hello, how are you doing"))
        
    }
}
