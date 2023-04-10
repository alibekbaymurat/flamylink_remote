//
//  ProfilePostView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 06.12.2022.
//

import SwiftUI

struct ProfileCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            HStack {
                NavigationLink {
                    ProfileView()
                } label: {
                    Text("Алибек БАЙМУРАТ")
                        .font(.callout)
                        .bold()
                        .frame(width: UIScreen.main.bounds.width / 2, alignment: .leading)
                        .lineLimit(1)
                        .underline()
                        .foregroundColor(.black)
                }
                
                Button(action: {
                    
                }, label: {
                    Text("Подписаться")
                        .font(.callout)
                        .frame(width: 130)
                        .background(Color("customOrange"))
                        .foregroundColor(.white)
                        .cornerRadius(10)
                })
                
                Spacer()
                
                PostContextMenuView()
            }
            
            HStack {
                Text("@alibek_baimurat")
                    .font(.subheadline)
                    .lineLimit(1)
                    .frame(width: UIScreen.main.bounds.width / 2,
                           alignment: .leading)
                    .foregroundColor(.gray)
                
                RoundedRectangle(cornerRadius: 15)
                    .stroke(.black)
                    .frame(width: 130, height: 45)
                    .overlay {
                        VStack {
                            Text("10k")
                                .fontWeight(.bold)
                            Text("подписчиков")
                        }
                        .font(.subheadline)
                    }
            }
            .padding(.bottom)
            
            Text("  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a sollicitudin mi. Vivamus lobortis risus lectus, sit amet efficitur velit fermentum et.")
                .font(.callout)
            
            ContentActionsView()
        }
        .padding()
        .background(
            RoundedRectangle(cornerRadius: 15)
                .foregroundColor(.white)
        )
    }
}

struct ProfileCell_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCell()
    }
}
