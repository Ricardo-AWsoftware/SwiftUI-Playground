//
//  SwiftUIView.swift
//  Playground test
//
//  Created by Ricardo on 5/26/22.
//

import SwiftUI

struct RetoPlatzi: View {
    var body: some View {
        VStack (spacing: 0){
            VStack(spacing: 0){
                Text("A").padding(5)
                Text("B").padding(5)
                Text("C").padding(5)
            }.frame(width: 200, alignment: .trailing)
                .background(Color.green)
            HStack(alignment: .top){
                Text("A").frame(width: 140, height: 150, alignment: .center)
                Text("B").padding(5)
                Text("C").padding(5)
            }.frame(width: 200, height: 150, alignment: .trailing)
            .background(Color.red)
        }
    }
}

struct RetoPlatzi_Previews: PreviewProvider {
    static var previews: some View {
        RetoPlatzi()
    }
}
