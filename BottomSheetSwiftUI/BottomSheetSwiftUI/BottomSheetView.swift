//
//  OnlineBottomSheet.swift
//  BottomSheetSwiftUI
//
//  Created by Gaganjot Singh on 08/08/23.
//

import SwiftUI

struct BottomSheetView: View {
    
    let buttonHeight: CGFloat = 55
    
    var body: some View{
        VStack(alignment: .leading) {
            HStack {
                Spacer()
                Text("Bottom Sheet Title")
                    .foregroundColor(.black.opacity(0.9))
                    .font(.system(size: 20, weight: .bold))
                Spacer()
            }
            .padding(.top, 24)
            .padding(.bottom, 16)
            
            Text("We can add here some description 🙊")
                .font(.system(size: 16, weight: .bold))
                .foregroundColor(.black.opacity(0.7))
                .padding(.bottom, 24)
            
            ButtonLarge(label: "Sample Button 🤘", background: .red.opacity(0.5), textColor: .white, action: {
                // Action will be here
            })
            .frame(height: buttonHeight)
            
            ButtonLarge(label: "Sample Button 🙌", background: .green.opacity(0.5), textColor: .white, action: {
                // Action will be here
            })
            .frame(height: buttonHeight)
            .padding(.vertical, 2)
            
            ButtonLarge(label: "Sample Button ✌️", background: .purple.opacity(0.9), textColor: .white, action: {
                // Action will be here
            })
            .frame(height: buttonHeight)
        }
        .padding(.horizontal, 16)
    }
}


