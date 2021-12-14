//
//  ViewC.swift
//  final version project
//
//  Created by Nitay Patel on 12/12/21.
//

import SwiftUI
import WebKit
struct ViewC: View {
    @State private var showWebView = false
        private let urlString: String = "https://www.google.com"
        
        var body: some View {
            VStack(spacing: 40) {
               
                WebView(url: URL(string: urlString)!).frame(height: 500.0)
                    .cornerRadius(10)
                    .shadow(color: .black.opacity(0.3), radius: 20.0, x: 5, y: 5)
                    
                
                
                Link(destination: URL(string: urlString)!, label: {
                    Text("Open in new window")
                        .foregroundColor(.blue)
                })
                
                // Present WebView as a Bottom Sheet
                Button {
                    showWebView.toggle()
                } label: {
                    Text("Open in a sheet")
                }
                .sheet(isPresented: $showWebView) {
                    WebView(url: URL(string: urlString)!)
                }
                Spacer()
                
            }.padding()
        }
    }

    // WebView Struct
    struct WebView: UIViewRepresentable {
        
        var url: URL
        
        func makeUIView(context: Context) -> WKWebView {
            return WKWebView()
        }
        
        func updateUIView(_ webView: WKWebView, context: Context) {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }


struct ViewC_Previews: PreviewProvider {
    static var previews: some View {
        ViewC()
    }
}
