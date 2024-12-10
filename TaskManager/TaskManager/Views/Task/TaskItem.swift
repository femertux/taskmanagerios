//
//  TaskItem.swift
//  TaskManager
//
//  Created by Femer Garcia on 10/12/24.
//

import SwiftUI

struct TaskItem: View {
    let title: String
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text("Completada")
                    .customFont(.medium, 12)
                    .foregroundStyle(Color(.green))
                
                Spacer()
                
                Image(systemName: "ellipsis")
                    .foregroundStyle(Color.gray)
            }
            
            Spacer()
            
            VStack(alignment: .leading){
                Text(title)
                    .customFont(.medium, 16)
                    .foregroundStyle(Color.black)
                    .lineLimit(1)
                
                Text("Create a home screen")
                    .customFont(.regular, 14)
                    .foregroundStyle(Color.gray)
                    .lineLimit(1)
            }
            
            Spacer()
            
            HStack {
                Image(systemName: "calendar")
                    .resizable()
                    .frame(width: 12, height: 12)
                Text("22 Dic. 2024")
                    .customFont(.regular, 12)
                    .foregroundStyle(Color.gray)
                Spacer()
                Text("Media")
                    .customFont(.regular, 12)
                    .foregroundStyle(Color(.blue))
                    .padding(6)
                    .background(Color(.blue).opacity(0.2))
                    .cornerRadius(8)
            }
        }
        .padding(16)
        .frame(maxWidth: .infinity)
        .frame(maxHeight: 128)
        .background(.white)
        .cornerRadius(8)
        .shadow(radius: 1)
    }
}

#Preview {
    VStack{
        TaskItem(title: "Song app UI design")
    }
    .padding()
    .frame(maxWidth: .infinity)
    .background(.gray)
}
