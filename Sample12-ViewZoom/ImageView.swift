//
//  ImageView.swift
//  Sample12-ViewZoom
//
//  Created by keiji yamaki on 2021/01/22.
//

import SwiftUI

struct ImageView: View {
    var zoom : CGFloat = 1.0
    var imageData : ImageData
    
    var body: some View {
        Image(uiImage: imageData.image)
            .resizable()
            .scaledToFit()
            // 個々の画像を左上揃えとする
            .frame(width: imageData.rect.width * zoom, height: imageData.rect.height * zoom, alignment: .topLeading)
            .position(x:imageData.rect.midX * zoom, y: imageData.rect.midY * zoom)
    }
}

struct ImageViewList: View {
    var zoom : CGFloat = 1.0
    var imageList : ImageDataList
    
    var body: some View {
        ZStack (alignment: .topLeading)  {
            ForEach (imageList.list.indices, id: \.self) { index in
                ImageView(zoom: zoom, imageData: imageList.list[index])
            }
        }
        // リストのビューを左揃えとする
        .frame(width: imageList.size.width * zoom, height: imageList.size.height * zoom, alignment: .topLeading)
        .background(Color.blue)
    }
}
/*
struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView()
    }
}
*/
