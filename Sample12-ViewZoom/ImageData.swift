//
//  ImageData.swift
//  Sample12-ViewZoom
//
//  Created by keiji yamaki on 2021/01/22.
//

import SwiftUI

// 個々のイメージのデータ
struct ImageData {
    var image : UIImage // 画像
    var rect : CGRect   // 画像の位置
}

// イメージのリスト
struct ImageDataList {
    var size : CGSize = .zero
    var list : [ImageData] = []
}

//データ
let imageDataArray : [ImageData] = [
    ImageData(image: UIImage(named: "photo")!, rect: CGRect(x:0, y:0, width: 30, height: 60)),
    ImageData(image: UIImage(named: "photo")!, rect: CGRect(x:30, y:0, width: 30, height: 60)),
    ImageData(image: UIImage(named: "photo")!, rect: CGRect(x:60, y:0, width: 30, height: 60))
]
let imageDataList = ImageDataList(size: CGSize(width: 90, height: 60), list: imageDataArray)
