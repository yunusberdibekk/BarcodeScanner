//
//  ContentView.swift
//  BarcodeScanner
//
//  Created by Yunus Emre Berdibek on 18.09.2023.
//

import SwiftUI

struct BarcodeScannerView: View {
    @StateObject var viewModel = BarcodeScannerViewModel()
    var body: some View {
        NavigationStack {
            VStack {
                ScannerView(scannedCode: $viewModel.scannedCode,
                    alertItem: $viewModel.alertItem)
                    .frame(width: .infinity, height: 300)

                Spacer().frame(height: 60)

                Label("Scanned barcode", systemImage: "barcode.viewfinder")
                    .font(.title)

                Text(viewModel.statusText)
                    .bold()
                    .font(.largeTitle)
                    .foregroundColor(viewModel.statusTextColor)
                    .padding()
            }
                .navigationTitle("Barcode Scanner")
                .alert(item: $viewModel.alertItem) { alertItem in
                Alert(title: Text(alertItem.title),
                    message: Text(alertItem.message),
                    dismissButton: alertItem.dismissButton)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BarcodeScannerView()
    }
}
