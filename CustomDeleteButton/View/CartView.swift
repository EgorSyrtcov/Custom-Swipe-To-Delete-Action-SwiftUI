//
//  CartView.swift
//  CustomDeleteButton
//
//  Created by Egor Syrtcov on 27.10.22.
//

import SwiftUI

struct CartView: View {
    
    @StateObject var vm = CartViewModel()
    
    var body: some View {
        navigationTitle
            .padding()
        
        ScrollView(.vertical, showsIndicators: false) {
            LazyVStack(spacing: 0) {
                ForEach(vm.items) { item in
                    ItemViewCell(item: $vm.items[vm.getIndex(item: item)], deleteDidTapClosure: {
                        vm.deleteItem(myItem: $0)
                    })
                }
            }
        }
        
        VStack {
            HStack {
                Text("Total")
                    .fontWeight(.heavy)
                    .foregroundColor(.gray)
                
                Spacer()
                
                Text(vm.calculateTotalPrice())
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
            }
        }
        .padding()
    }
}

extension CartView {
    private var navigationTitle: some View {
        VStack {
            HStack(spacing: 20) {
                Button {
                    
                } label: {
                    Image(systemName: "chevron.left")
                        .font(.system(size: 28, weight: .heavy))
                        .foregroundColor(.black)
                }
                
                Text("My cart")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                
                Spacer()
            }
        }
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
    }
}
