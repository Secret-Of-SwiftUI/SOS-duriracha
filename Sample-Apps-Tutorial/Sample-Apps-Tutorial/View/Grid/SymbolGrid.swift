//
//  SymbolGrid.swift
//  Sample-Apps-Tutorial
//
//  Created by SHIN YOON AH on 2022/03/09.
//

import SwiftUI

struct SymbolGrid: View {
    @State private var isAddingSymbol = false
    @State private var isEditing = false
    
    private static let initalColumns = 3
    @State private var selectedSymbolName: String?
    @State private var numColumns = initalColumns
    @State private var gridColumns = Array(repeating: GridItem(.flexible()), count: initalColumns)
    
    @State private var symbolNames = [
        "tshirt",
        "eyes",
        "eyebrow",
        "nose",
        "mustache",
        "mouth",
        "eyeglasses",
        "facemask",
        "brain.head.profile",
        "brain",
        "icloud",
        "theatermasks.fill",
    ]
    
    var columnsText: String {
        numColumns > 1 ? "\(numColumns) Columns" : "1 Column"
    }
    
    var body: some View {
        VStack {
            if isEditing {
                Stepper(columnsText, value: $numColumns, in: 1...6, step: 1) { _ in
                    withAnimation { gridColumns = Array(repeating: GridItem(.flexible()), count: numColumns)}
                }
                .padding()
            }
            
            ScrollView {
                LazyVGrid(columns: gridColumns) {
                    ForEach(symbolNames, id: \.self) { name in
                        NavigationLink(destination: ItemDetail(symbolName: name)) {
                            ZStack(alignment: .topTrailing) {
                                Image(systemName: name)
                                    .resizable()
                                    .scaledToFit()
                                    .symbolRenderingMode(.hierarchical)
                                    .foregroundColor(.accentColor)
                                    .ignoresSafeArea(.container, edges: .bottom)
                                    .cornerRadius(8)
                                
                                if isEditing {
                                    Button {
                                        guard let index = symbolNames.firstIndex(of: name) else { return }
                                        withAnimation {
                                            _ = symbolNames.remove(at: index)
                                        }
                                    } label: {
                                        Image(systemName: "xmark.square.fill")
                                            .font(.title)
                                            .symbolRenderingMode(.palette)
                                            .foregroundStyle(.white, Color.red)
                                    }
                                    .offset(x: 7, y: -7)
                                }
                            }
                            .padding()
                        }
                        .buttonStyle(.plain)
                    }
                }
            }
        }
        .navigationBarTitle("My Symbols")
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $isAddingSymbol, onDismiss: addSymbol) {
            GridSymbolPicker(name: $selectedSymbolName)
        }
        .toolbar {
            ToolbarItem(placement: .navigationBarLeading) {
                Button(isEditing ? "Done" : "Edit") {
                    withAnimation { isEditing.toggle() }
                }
            }
            ToolbarItem(placement: .navigationBarTrailing) {
                Button {
                    isAddingSymbol = true
                } label: {
                    Image(systemName: "plus")
                }
                .disabled(isEditing)
            }
        }
    }
    
    func addSymbol() {
        guard let name = selectedSymbolName else { return }
        withAnimation {
            symbolNames.insert(name, at: 0)
        }
    }
}

struct SymbolGrid_Previews: PreviewProvider {
    static var previews: some View {
        SymbolGrid()
    }
}
