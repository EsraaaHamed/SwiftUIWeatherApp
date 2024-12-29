//
//  ContentView.swift
//  SwiftUI-Weather
//
//  Created by Israa hamed on 22/11/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var isNight = false
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            VStack {
                CityTextView(cityName: "Cuprtino, CA")
   
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill": "cloud.sun.fill", temperature: 76)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE", imageName: "cloud.sun.fill", tempeature: 76)
                    
                      
                    
                    WeatherDayView(dayOfWeek: "WED", imageName: "sun.max.fill", tempeature: 88)
                    
                    
                    
                    WeatherDayView(dayOfWeek: "THU", imageName: "wind.snow", tempeature: 50)
                    
                    
                    
                    WeatherDayView(dayOfWeek: "FRI", imageName: "sunset.fill", tempeature: 40)
                    
                    
                    
                    WeatherDayView(dayOfWeek: "SAT", imageName: "snow", tempeature: 50)
                }
                
                Spacer()
                
                Button {
                    print("tapped")
                    isNight.toggle()
                } label: {
                    WeatherBtn(title: "Change Day Time", textColor: .white, backgroundColor: .mint)
                        
                }
                
                Spacer()

            }
        }
    }
}

#Preview {
    ContentView()
}
 

struct WeatherDayView: View {
    var dayOfWeek: String
    var imageName: String
    var tempeature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design:  .default))
            Image(systemName: imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                

            Text("\(tempeature)")
                .font(.system(size: 28, weight: .medium))
                .foregroundColor(.white)
        }
    }
}

struct BackgroundView: View {
   var isNight: Bool
//    var topColor: Color
//    var bottomColor: Color
    
    var body: some View {
//        LinearGradient(gradient: Gradient(colors: [isNight ? Color.black : Color.blue,  isNight ? .gray :  Color("LightBlue")]),
//                       startPoint: .topLeading,
//                       endPoint: .bottomTrailing)
//            .ignoresSafeArea()
        
        ContainerRelativeShape()
            .fill(isNight ? Color.black.gradient : Color.blue.gradient)
            .ignoresSafeArea()
    }
}

struct CityTextView: View {
    
    var cityName: String
    var body: some View {
        Text(cityName).font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
    }
}

struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
                
        }.padding(.bottom, 40)
    }
}
