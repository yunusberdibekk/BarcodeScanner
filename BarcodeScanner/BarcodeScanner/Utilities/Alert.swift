//
//  Alert.swift
//  BarcodeScanner
//
//  Created by Yunus Emre Berdibek on 18.09.2023.
//

import Foundation
import SwiftUI

struct AlertItem: Identifiable {
    let id = NSUUID().uuidString
    let title: String
    let message: String
    let dismissButton: Alert.Button
}

struct AlertContext {
    static let invalidDeviceInput = AlertItem(title: "Invalid device input",
        message: "Something is wrong the camera. We are unable to capture the input.",
        dismissButton: .default(Text("OK")))

    static let invalidScanedValue = AlertItem(title: "Invalid scanned value",
        message: "The value scanned is not value. This app scans EAN-8 and EAN-13.",
        dismissButton: .default(Text("OK")))
}
