//
//  BottomSheet.swift
//  BottomSheetSwiftUI
//
//  Created by Gaganjot Singh on 08/08/23.
//

import SwiftUI

struct BottomSheet<Content: View>: View {

    @Binding var isShowingSheet: Bool
    var content: Content
    
    var body: some View {
        ZStack(alignment: .bottom) {
            if isShowingSheet {
                Color.black
                    .opacity(0.3)
                    .ignoresSafeArea()
                    .onTapGesture {
                        isShowingSheet.toggle()
                    }
                content
                    .padding(.bottom, 42)
                    .transition(.move(edge: .bottom))
                    .background(Color.white)
                    .cornerRadius(16, corners: [.topLeft, .topRight])
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .ignoresSafeArea()
        .animation(.easeInOut, value: isShowingSheet)
    }
}
