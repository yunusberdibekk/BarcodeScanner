//
//  BarcodeScannerViewModel.swift
//  BarcodeScanner
//
//  Created by Yunus Emre Berdibek on 18.09.2023.
//

import Foundation
import SwiftUI

final class BarcodeScannerViewModel: ObservableObject {
    @Published var scannedCode: String = ""
    @Published var alertItem: AlertItem?

    var statusText: String {
        scannedCode.isEmpty ? "Not yet scanned" : scannedCode
    }

    var statusTextColor: Color {
        return scannedCode.isEmpty ? .red : .green
    }
}
