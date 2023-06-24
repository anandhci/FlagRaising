import SwiftUI

struct ContentView: View {
    // @State private var counter = 0
    @State var counter = 0.0
    // @State var reachedTop = false
    @State private var message = "<Patriotic message 1>"
    var body: some View {
        VStack {
            Text("\(Int(counter))") //"\(counter, specifier: "%.0f")")
                .font(.largeTitle)
            HStack(alignment: .bottom, spacing: -10){
                Rectangle()
                    .fill(
                        LinearGradient(colors: [.red,.green], startPoint: .topLeading, endPoint: .bottomTrailing)
                        )
                    .frame(width: 20)
                Text("🇦🇪")
                    .font(.system(size: 100))
                    .offset(y: -20 * counter)
            }
            HStack {
                Button {
                    print("Raise the flag")
                    withAnimation{
                        counter += 1
                        if counter >= 10 {
                            message = "<Patriotic message 2>"
                        }
                        if counter >= 20 {
                            message = "<Patriotic message 3>"
                        }
                        if counter >= 30 {
                            message = "<Patriotic message 4>"
                        }
                        if counter >= 40 {
                            message = "<Patriotic message 5>"
                        }
                        //if counter >= 23 {
                          //  reachedTop = true
                        // }
                    }
                }
            label:
                {
                    Text("Raise Flag")
                }
                .buttonStyle(.borderedProminent)
                .disabled(counter >= 23 ? true : false)
                
                if counter >= 23 {
                    Button {
                        message = "<Patriotic message 1>"
                        counter = 0
                    }
                label:{
                        Text("Reset")
                    }
                    .buttonStyle(.borderedProminent)
                }
            }
           
            Text("\(message)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
        }
    }
}
