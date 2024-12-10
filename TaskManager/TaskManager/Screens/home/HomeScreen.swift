//
//  HomeScreen.swift
//  TaskManager
//
//  Created by Femer Garcia on 10/12/24.
//

import SwiftUI

struct HomeScreen: View {
    
    let tasks = ["Song app UI design", "Event app UI design", "Device app UI design", "LMS web design"]
    
    @State private var search: String = ""
    @State private var showAddTask = false
    
    var body: some View {
        VStack {
            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack(alignment: .leading) {
                    HStack(alignment: .center) {
                        Text("Task Manager")
                            .customFont(.bold, 16)
                            .foregroundStyle(Color.black)
                        Spacer()
                        Image(systemName: "plus.app.fill")
                            .resizable()
                            .frame(width: 24, height: 24)
                            .foregroundStyle(Color(.blue))
                            .onTapGesture {
                                showAddTask = true
                            }
                    }
                    .padding(.horizontal, 16)
                    .padding(.top)
                    
                    HStack(alignment: .center, spacing: 8) {
                        Image(systemName: "magnifyingglass")
                            .resizable()
                            .frame(width: 16, height: 16)
                        
                        TextField("", text: $search)
                            .font(.system(size: 16,weight: .medium))
                            .keyboardType(.default)
                            .textContentType(.name)
                            .autocorrectionDisabled()
                            .placeholder(when: search.isEmpty) {
                                Text("Buscar por nombre")
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
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
                    .shadow(radius: 1)
                    
                    FilterControl()
                    
                    LazyVStack(content: {
                        ForEach(0...3, id: \.self) { index in
                            TaskItem(title: tasks[index])
                        }
                    })
                    .padding(16)
                }
            }
        }
        .sheet(isPresented: $showAddTask) {
            TaskEditScreen(dismiss: {
                showAddTask = false
            })
            .presentationDetents([.medium, .large])
            .presentationDragIndicator(.hidden)
        }
        .background(Color.gray.opacity(0.1))
    }
}

#Preview {
    HomeScreen()
}
