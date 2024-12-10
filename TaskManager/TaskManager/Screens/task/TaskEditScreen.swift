//
//  TaskEditScreen.swift
//  TaskManager
//
//  Created by Femer Garcia on 10/12/24.
//

import SwiftUI

struct TaskEditScreen: View {
    @State private var name: String = ""
    @State private var detail: String = ""
    var dismiss: () -> Void
    
    var body: some View {
        VStack(spacing: 24) {
            HStack(alignment: .top) {
                Image(systemName: "xmark")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .onTapGesture {
                        dismiss()
                    }
                Spacer()
                Text("Crear Tarea")
                    .customFont(.bold, 16)
                    .foregroundStyle(Color.black)
                Spacer()
            }
            .padding(.top, 20)
            .padding(.bottom, 8)
            
            VStack(alignment: .leading) {
                Text("Nombre de la tarea")
                    .customFont(.medium, 12)
                    .foregroundStyle(Color.black)
                VStack(alignment: .center, spacing: 4) {
                    TextField("", text: $name)
                        .font(.system(size: 16,weight: .medium))
                        .keyboardType(.default)
                        .textContentType(.name)
                        .frame(height: 34)
                        .autocorrectionDisabled()
                        .placeholder(when: name.isEmpty) {
                            Text("Nombre")
                                .customFont(.medium, 14)
                                .foregroundStyle(Color.gray)
                        }
                        .autocapitalization(.none)
                        .foregroundColor(Color.black)
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 8)
                .background(.white)
                .cornerRadius(8)
                .shadow(radius: 1)
            }
            
            VStack(alignment: .leading) {
                Text("Detalle de la tarea")
                    .customFont(.medium, 12)
                    .foregroundStyle(Color.black)
                VStack(alignment: .center, spacing: 4) {
                    TextField("", text: $detail)
                        .font(.system(size: 16,weight: .medium))
                        .keyboardType(.default)
                        .textContentType(.name)
                        .frame(height: 34)
                        .autocorrectionDisabled()
                        .placeholder(when: detail.isEmpty) {
                            Text("Detalle")
                                .customFont(.medium, 14)
                                .foregroundStyle(Color.gray)
                        }
                        .autocapitalization(.none)
                        .foregroundColor(Color.black)
                }
                .padding(.horizontal, 20)
                .padding(.vertical, 8)
                .background(.white)
                .cornerRadius(8)
                .shadow(radius: 1)
            }
            
            VStack(alignment: .leading) {
                Text("Prioridad")
                    .customFont(.medium, 12)
                    .foregroundStyle(Color.black)
                
                PriorityControl()
            }
            
            VStack(alignment: .leading) {
                Text("Fecha de vencimiento")
                    .customFont(.medium, 12)
                    .foregroundStyle(Color.black)
                
                HStack {
                    VStack {
                        Image(systemName: "calendar")
                            .resizable()
                            .frame(width: 22, height: 22)
                            .foregroundStyle(Color(.blue))
                            .padding(12)
                    }
                    .background(Color(.blue).opacity(0.2))
                    .cornerRadius(8)
                    
                    Text("---")
                        .customFont(.medium, 12)
                        .foregroundStyle(Color.black)
                    Spacer()
                }
                .frame(maxWidth: .infinity)
            }
            
            Spacer()
        }
        .padding(16)
        .background(Color.gray.opacity(0.1))
    }
}

#Preview {
    TaskEditScreen(){}
}
