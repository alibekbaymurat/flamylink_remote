//
//  ProfilePostView.swift
//  FlamyLink Final
//
//  Created by Алибек Баймурат on 06.12.2022.
//

import SwiftUI

struct ProfileCell: View {
    @Binding var showDivider: Bool
    var body: some View {
        VStack {
            VStack(alignment: .leading, spacing: 4) {
                HStack {
                    NavigationLink {
                        ProfileView()
                    } label: {
                        Text("Алибек БАЙМУРАТ")
                            .font(.headline)
                            .frame(width: UIScreen.main.bounds.width / 2, alignment: .leading)
                            .lineLimit(1)
                            .underline()
                            .foregroundColor(.black)
                    }
                    
                    Button(action: {
                        
                    }, label: {
                        Text("Подписаться")
                            .font(.system(size: 18))
                            .frame(width: 130)
                            .background(Color("customOrange"))
                            .foregroundColor(.white)
                            .cornerRadius(10)
                    })
                    
                    Spacer()
                    
                    ContextMenuView()
                }
                
                HStack {
                    Text("@alibek_baimurat")
                        .lineLimit(1)
                        .frame(width: UIScreen.main.bounds.width / 2,
                               alignment: .leading)
                        .foregroundColor(.gray)
                    
                    RoundedRectangle(cornerRadius: 20)
                        
                        .stroke(.black)
                        .frame(height: 45)
                        .overlay {
                            VStack {
                                Text("10k")
                                    .font(.system(.body, weight: .bold))
                                Text("подписчиков")
                            }
                        }
                }
                .padding(.bottom)
                
                LineLimitedTextView("  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec a sollicitudin mi. Vivamus lobortis risus lectus, sit amet efficitur velit fermentum et.")
                
                ContentActionsView()
            }
            .padding()
            
            if showDivider {
                Divider()
            }
        }
    }
}

struct ProfileCell_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCell(showDivider: .constant(true))
    }
}
