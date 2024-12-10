//
//  FilterControl.swift
//  TaskManager
//
//  Created by Femer Garcia on 10/12/24.
//

import SwiftUI

struct FilterControl: View {
    @State private var filterSelected = 0
    let filter = ["Todas", "En progreso", "Completadas"]
    
    var body: some View {
        VStack {
            HStack(spacing: 16) {
                ForEach(0...2, id: \.self) { index in
                    Text(filter[index])
                        .customFont(.regular, 14)
                        .padding(8)
                        .background(filterSelected == index ? Color(.darkBlue) : Color(.darkBlue).opacity(0.1))
                        .foregroundStyle(filterSelected == index ? Color.white : Color.black)
                        .cornerRadius(8)
                        .onTapGesture {
                            filterSelected = index
                        }
                }
                
                Spacer()
            }
        }
        .padding(.horizontal, 16)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    FilterControl()
}
