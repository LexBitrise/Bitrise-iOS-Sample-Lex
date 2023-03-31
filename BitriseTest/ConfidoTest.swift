//
//  ConfidoTest.swift
//  BitriseTest
//
//  Created by Alexis Zavala on 3/31/23.
//

import Foundation
import AVFoundation
import CoreImage
import UIKit
import Vision

func fixLibSwiftOnoneSupport() {
    // from https://stackoverflow.com/a/54511127/2982993
    print("Fixes dyld: Library not loaded: @rpath/libswiftSwiftOnoneSupport.dylib")
}

let config = try! OnfidoConfig.builder()
    .withSDKToken("<YOUR_SDK_TOKEN>")
    .withWelcomeStep()
    .withDocumentStep()
    .withProofOfAddressStep()
    .withFaceStep(ofVariant: .photo(withConfiguration: nil))
    .build()

let onfidoFlow = OnfidoFlow(withConfiguration: config)
    .with(responseHandler: { results in
        // Callback when flow ends
    })
