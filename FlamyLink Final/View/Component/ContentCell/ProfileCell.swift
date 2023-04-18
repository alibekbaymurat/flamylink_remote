//
//  ProfilePostView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 06.12.2022.
//

import SwiftUI

struct ProfileCell: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            HStack {
                NavigationLink {
                    ProfileView()
                } label: {
                    Text("Алибек БАЙМУРАТ")
                        .frame(width: UIScreen.main.bounds.width / 2, alignment: .leading)
                        .lineLimit(1)
                        .underline()
                        .foregroundColor(.black)
                }
                
                Button {
                    
                } label: {
                    Text("Подписаться")
                        .frame(width: 130)
                        .foregroundColor(Color("customOrange"))
                }
                
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
                                .fontWeight(.semibold)
                            Text("подписчиков")
                        }
                        .font(.subheadline)
                    }
            }
            .padding(.vertical,8)
            
            Text("  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a sollicitudin mi. Vivamus lobortis risus lectus, sit amet efficitur velit fermentum et.")
                .font(.callout)
                .padding(.vertical, 8)
            
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
