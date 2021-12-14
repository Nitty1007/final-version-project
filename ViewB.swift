//
//  ViewB.swift
//  final version project
//
//  Created by Nitay Patel on 12/12/21.
//

import SwiftUI
import CodeScanner


struct ViewB: View {
    @State var isPresentingScanner = false
    @State var scannedCode: String = "Scan a Qr Code to get started"
    
    var scannerSheet : some View {
        CodeScannerView(
            codeTypes: [.qr],
            completion: { result in
                if case let .success(code) = result {
                    self.scannedCode = code
                    self.isPresentingScanner = false
                }
            }
        )
    }
    var body: some View {
        VStack(spacing: 10) {
            Text(scannedCode)
            
            Button("Scan QR Code") {
                self.isPresentingScanner = true
            }
            
            .sheet(isPresented: $isPresentingScanner){
                self.scannerSheet
            }
        }
    }
}
struct ViewB_Previews: PreviewProvider {
    static var previews: some View {
        ViewB()
    }
}
