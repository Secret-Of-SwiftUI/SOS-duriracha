//
//  SeismometerBrowser.swift
//  Sample-Apps-Tutorial
//
//  Created by SHIN YOON AH on 2022/03/09.
//

import SwiftUI

struct SeismometerBrowser: View {
    @StateObject private var detector = MotionDetector(updateInterval: 0.01)
    
    var body: some View {
        NavigationView {
            List {
                NavigationLink(destination: NeedleSeismomter()) {
                    HStack() {
                        Image(systemName: "gauge")
                            .foregroundColor(.accentColor)
                            .padding()
                            .font(.title2)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Needle")
                                .font(.headline)
                            Text("A needle that responds to the device's vibration.")
                                .font(.caption)
                        }
                        .padding(.trailing)
                    }
                }
                .padding([.top, .bottom])
                
                NavigationLink(destination: GraphSeismometer()) {
                    HStack() {
                        Image(systemName: "waveform.path.ecg.rectangle")
                            .foregroundColor(.accentColor)
                            .padding()
                            .font(.title2)
                        
                        VStack(alignment: .leading, spacing: 8) {
                            Text("Graph")
                                .font(.headline)
                            Text("Watch the device's vibrations charted on a graph. Adjust the sensitivity using a slider.")
                                .font(.caption)
                        }
                        .padding(.trailing)
                    }
                }
                .padding([.top, .bottom])
            }
            .listStyle(.plain)
            .navigationTitle(Text("Seismometer"))
        }
        .navigationViewStyle(.stack)
        .environmentObject(detector)
        .onAppear() {
            detector.start()
        }
        .onDisappear {
            detector.stop()
        }
    }
}

struct SeismometerBrowser_Previews: PreviewProvider {
    static var previews: some View {
        SeismometerBrowser()
    }
}
