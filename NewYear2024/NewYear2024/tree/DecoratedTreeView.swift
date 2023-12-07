//
//  DecoratedTreeView.swift
//  NewYear2024
//
//  Created by Дарья Леонова on 07.12.2023.
//

import SwiftUI

struct DecoratedTreeView: View {

    var body: some View {
        VStack(spacing: -75) {
            ZStack {
                ZStack {
                    treeView
                        .offset(y: 28)
                    starView
                        .position(x: 166, y: 40)
                }
                garlandView
            }
            .frame(width: 338, height: 534)
            Image("presents")
        }
    }

    var treeView: some View {
        Image("tree")
            .resizable()
            .frame(width: 338, height: 478)
    }

    var garlandView: some View {
        ZStack {
            GarlandLineView()
                .frame(width: 70, height: 35)
                .position(x: 158, y: 112)

            GarlandLineView()
                .frame(width: 115, height: 48)
                .position(x: 155, y: 186)

            GarlandLineView()
                .frame(width: 180, height: 75)
                .position(x: 150, y: 261)

            GarlandLineView()
                .frame(width: 240, height: 100)
                .position(x: 150, y: 351)

            GarlandLineView()
                .frame(width: 145, height: 60)
                .position(x: 220, y: 416)
        }
    }

    var starView: some View {
        ZStack {
            Image("star")
            StarLightView()
        }
        .frame(width: 50, height: 58)
    }

}

#Preview {
    DecoratedTreeView()
}
