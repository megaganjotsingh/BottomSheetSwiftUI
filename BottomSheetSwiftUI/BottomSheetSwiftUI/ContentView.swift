//
//  ContentView.swift
//  BottomSheetSwiftUI
//
//  Created by Admin on 08/08/23.
//

import SwiftUI

struct ContentView: View {
    @State var isShowingBottomSheet: Bool = false
    
    var body: some View {
        ZStack {
            Button {
                withAnimation{
                    isShowingBottomSheet.toggle()
                }
            } label: {
                Text("Open Bottom Sheet")
            }
            
            BottomSheet(isShowingSheet: $isShowingBottomSheet, content: BottomSheetView())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
