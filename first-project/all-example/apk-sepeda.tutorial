//
//  ContentView.swift
//  Shared
//
//  Created by dani prayogi on 23/02/22.
//

import SwiftUI

struct ContentView: View {
    
    let data: [DataModel] = [
        DataModel(id: 1, namaproduct: "Sepeda Poligon", fotoproduct: "bg", hargaproduct: 2000000, lokasi: "Kab. Banjarnegara", ratingcount: 4, jumlahrating: 75),
        DataModel(id: 2, namaproduct: "Sepeda Fixi", fotoproduct: "bg", hargaproduct: 1000000, lokasi: "Kab. Banjarnegara", ratingcount: 4, jumlahrating: 75),
        DataModel(id: 3, namaproduct: "Sepeda BMX", fotoproduct: "bg", hargaproduct: 1000000, lokasi: "Kab. Banjarnegara", ratingcount: 4, jumlahrating: 75),
        DataModel(id: 4, namaproduct: "Sepeda Gunung", fotoproduct: "bg", hargaproduct: 2500000, lokasi: "Kab. Banjarnegara", ratingcount: 4, jumlahrating: 75),
        DataModel(id: 5, namaproduct: "Sepeda Mamen", fotoproduct: "bg", hargaproduct: 2700000, lokasi: "Kab. Banjarnegara", ratingcount: 4, jumlahrating: 75),
        DataModel(id: 6, namaproduct: "Sepeda Ontel", fotoproduct: "bg", hargaproduct: 3000000, lokasi: "Kab. Banjarnegara", ratingcount: 4, jumlahrating: 75),
        DataModel(id: 7, namaproduct: "Sepeda Anak Kecil", fotoproduct: "bg", hargaproduct: 750000, lokasi: "Kab. Banjarnegara", ratingcount: 4, jumlahrating: 75),
    ]
    
//    @State var jumlahkeranjang:Int = 1
    @ObservedObject var globalData = GlobalObject()
    
    var body: some View {
//        Product()
        NavigationView{
            ScrollView{
                ForEach(data){ row in
                    VStack(spacing: 10){
                        Product(data: row, jumlahKeranjang: self.globalData)
                    }
                }
                .padding()
            }
            .navigationTitle("Toko Sepeda")
            .navigationBarItems(
                trailing:
                    HStack(spacing: 10){
                        Button(action:{print("oy")}){
                            Image(systemName: "person.fill")
                        }
//                        Keranjang(jumlah: $jumlahkeranjang)
                        NavigationLink(destination: DetailView(globalData: globalData)){
                            Keranjang(jumlahKeranjang: globalData)
                        }
                    }
            )
        }
        .accentColor(Color.secondary).navigationViewStyle(StackNavigationViewStyle())
    }
}

struct DetailView: View {
    @ObservedObject var globalData : GlobalObject
    var body: some View {
        NavigationView {
            Text("Detail")
            .navigationBarTitle("Detail")
            .navigationBarItems(
                trailing:
                    HStack(spacing: 10){
                        Button(action:{print("oy")}){
                            Image(systemName: "person.fill")
                        }
                        Keranjang(jumlahKeranjang: globalData  )
                    }
            )
        }
    }
}

struct Keranjang: View{
//    @Binding var jumlah: Int
    @ObservedObject var jumlahKeranjang : GlobalObject
    var body: some View{
        ZStack{
            Image(systemName: "cart.fill")
            
            Text("\(self.jumlahKeranjang.jumlah)").font(.body).foregroundColor(Color.white).background(Color.red).frame(width: 10, height: 10).padding(5).clipShape(Circle()).offset(x: 10, y: -10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Product: View{
    
    let data: DataModel
    
//    @Binding var jumlahProduk:Int
    @ObservedObject var jumlahKeranjang : GlobalObject
    
    var body: some View{
        VStack(alignment: .leading){
            ZStack(alignment: .topTrailing){
                Image(self.data.fotoProduct).resizable().aspectRatio( contentMode: .fill).frame(height: 200).clipped()
                
                Button(action: {print("haloo")}){
                    Image(systemName: "heart").padding().foregroundColor(Color.red)
                }
            }
            
            Text(self.data.namaProduct).font(.title).bold().padding(.leading).padding(.trailing)
            
            Text("Rp. \(self.data.hargaProduct)").font(.title).foregroundColor(Color.red).bold().padding(.leading).padding(.trailing)
            
            HStack{
                Image(systemName: "mappin.circle")
                Text(self.data.lokasi)
            }.padding(.leading).padding(.trailing)
            
            HStack{
                HStack{
                    ForEach(0..<self.data.ratingCount){
                        items in Image(systemName: "star.fill").foregroundColor(Color.yellow)
                    }
                }
                Text("3")
            }.padding(.leading).padding(.trailing)
//            tambahKeranjang(jumlah: $jumlahProduk)
            tambahKeranjang(keranjang: jumlahKeranjang)
        }.background(Color("bgProduk")).cornerRadius(15)
    }
}

struct tambahKeranjang: View{
//    @Binding var jumlah:Int
    @ObservedObject var keranjang : GlobalObject
    
    var body: some View{
        Button(action: {self.keranjang.jumlah += 1}){
            HStack{
                Spacer()
                HStack{
                    Image(systemName: "cart")
                    Text("Tambah Keranjang").font(.callout).padding()
                }
                Spacer()
            }
        }.background(Color.green).foregroundColor(Color.white).cornerRadius(10).padding()
    }
}

