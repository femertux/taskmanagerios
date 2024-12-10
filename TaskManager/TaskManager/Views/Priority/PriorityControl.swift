//
//  PriorityControl.swift
//  TaskManager
//
//  Created by Femer Garcia on 10/12/24.
//

import SwiftUI

struct PriorityControl: View {
    
    @State private var prioritySelected = 0
    let priorities = ["Baja", "Media", "Alta"]
    
    var body: some View {
        VStack {
            HStack(spacing: 16) {
                ForEach(0...2, id: \.self) { index in
                    Text(priorities[index])
                        .customFont(.bold, 14)
                        .padding(8)
                        .background(prioritySelected == index ? Color(.darkBlue) : getColor(for: index).opacity(0.2))
                        .foregroundStyle(prioritySelected == index ? Color.white : getColor(for: index))
                        .cornerRadius(8)
                        .onTapGesture {
                            prioritySelected = index
                        }
                }
                
                Spacer()
            }
        }
        .frame(maxWidth: .infinity)
    }
    
    private func getColor(for index: Int) -> Color {
        switch index {
        case 0: return Color(.blue)
        case 1: return Color(.orange)
        case 2: return Color(.red)
        default: return Color(.darkBlue)
        }
    }
}

#Preview {
    PriorityControl()
}
