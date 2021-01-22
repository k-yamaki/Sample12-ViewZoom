//
//  ContentView.swift
//  Sample12-ViewZoom
//
//  Created by keiji yamaki on 2021/01/22.
//

import SwiftUI

struct ContentView: View {
    // @State var imageDataList = ImageDataList()
    var body: some View {
        ZStack {
            ImageViewList(zoom: 5, imageList: imageDataList)
        }
        // frameのサイズ指定して、.topLeadingすると、左上原点となる。
        .frame(width: 300, height:500, alignment: .topLeading)
        .background(Color.red)
    }
}



/*
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
*/
