//
//  AboutMe.swift
//  MBarnat
//
//  Created by Michał Barnat on 06/08/2022.
//

import SwiftUI

struct AboutMe: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        ZStack{
            VStack (alignment: .leading){
                HStack{
                    Image("michal")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 100, height: 90)
                        .clipShape(Circle())
                        .overlay(Circle().stroke(.white, lineWidth: 2))
                        .shadow(radius: 4)
                        .frame(maxWidth: .infinity, alignment: .trailing)
                        .padding()
                }
                
                
                RoundedRectangle(cornerRadius: 30)
                    .fill(.white)
                    .padding()
                    .shadow(radius: 2)
                    .overlay(
                        VStack{
                            Text("Michał Barnat")
                                .font(.system(size: 35)).bold()
                                .padding(.horizontal)
                            
                            Text("junior iOS developer")
                                .font(.title2)
                                .padding(.leading)
                        }
                    )
                    
                   Spacer()
                        
                VStack {
                    Text("Kontakt :")
                        .font(.title).bold()
                        .foregroundColor(.white)
                        .padding()
                    
                   Contact(systemImage: "phone.fill", text: "+48 537 087 312      ")
                   Contact(systemImage: "envelope.fill", text: "michalbarnat@protonmail.com")
                    HStack(spacing: 0) {
                        Image("git")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50, height: 50)
                            .padding(.leading, 15)
                        
                        Text("github.com/MichalBarnat")
                            .font(.title2)
                            .foregroundColor(Colors.background)
                            .frame(maxWidth: .infinity, alignment: .center)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Spacer()
                }
                .frame(maxWidth: .infinity, maxHeight: 400, alignment: .bottom)
                .background(.green)
                .mask(RoundedRectangle(cornerRadius: 30, style: .continuous))
                .offset(y: 35)
                    
                
                
                
            }
            .overlay(
                Image(systemName: "arrow.uturn.backward")
                    .padding()
                    .foregroundColor(.blue)
                    .font(.system(size: 32))
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
                    .onTapGesture {
                        dismiss()
                    }
            )
            
            
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
       // .padding()
      //  .padding(.horizontal)
        
    }
    
}

struct AboutMe_Previews: PreviewProvider {
    static var previews: some View {
        AboutMe()
    }
}
