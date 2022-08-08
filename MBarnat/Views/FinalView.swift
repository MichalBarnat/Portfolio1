//
//  FinalView.swift
//  MBarnat
//
//  Created by Michał Barnat on 06/08/2022.
//

import SwiftUI

struct FinalView: View {
    @State var showAboutMe = false
    var body: some View {
        NavigationView {
            ZStack{
                    Color("background").ignoresSafeArea()
                    
                    ScrollView {
                        content
                    }
                    .overlay(
                            Image(systemName: "person.fill")
                                .font(.system(size: 30))
                                .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topTrailing)
                                .padding(.trailing, 20)
                                .onTapGesture {
                                    showAboutMe.toggle()
                                }
                        )
                                 
                }
                .sheet(isPresented: $showAboutMe, content: {
                    AboutMe()
            })
        }
        
        
        
       
        
    }
    
    var content: some View {
        VStack(alignment: .leading, spacing: 0) {
            VStack(alignment: .leading, spacing: 0) {
                Text("Umiejętności")
                    .font(.title).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.top, 40)
            }
            .padding(.horizontal, 25)
            .padding(.bottom, 20)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(umiejetnosciData) { umiejetnosc in
                        VCard(umiejetnosci: umiejetnosc)
                    }
                }
                .padding(20)
            }
            
            VStack{
                Text("Dodatkowe")
                    .font(.title2).bold()
                    .frame(maxWidth: .infinity, alignment: .leading)
                VStack(spacing: 20) {
                    ForEach(dodatkoweData) { dodatkowe in
                        HCard(dodatkowe: dodatkowe)
                    }
                }
            }
            .padding(20)
        }
    }
    
}

struct FinalView_Previews: PreviewProvider {
    static var previews: some View {
        FinalView()
    }
}
