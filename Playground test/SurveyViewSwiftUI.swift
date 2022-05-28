import SwiftUI

struct SurveyViewSwiftUI: View {
    @State var name = ""
    @State var filePath = ""
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            HStack {
                Text("Source Survey")
                    .font(.largeTitle.bold())
            }
            
            HStack(spacing: 20){
                Button {
                    print("ORIGINAL was pressed")
                } label: {
                    Text("★ ORIGINAL")
                }
                .frame(width: 277)
                .font(.title2)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 1)
                )
                
                Button {
                    print("Keep As-Is was pressed")
                } label: {
                    Text("Keep As-Is")
                }
                .frame(width: 277)
                .font(.title2)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 1))
                
            }
            
            HStack(spacing: 20) {
                TextField("Set Name", text: $name)
                    .frame(width: 277)
                    .font(.title2)
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 1)
                    )
                    .foregroundColor(Color.gray)
                
                Button {
                    print("Bin buton was pressed")
                } label: {
                    Image(systemName: "trash")
                }
                .font(.title)
                .foregroundColor(Color.red)
                .padding(5)
                
                Button {
                    print("Folder buton was pressed")
                } label: {
                    Image(systemName: "folder")
                }
                .font(.title)
                .padding(5)
                
                TextField("File Path", text: $filePath)
                    .frame(maxWidth: .infinity)
                    .font(.title2)
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 1)
                    )
                    .foregroundColor(Color.gray)
                
                Button {
                    print("refresh buton was pressed")
                } label: {
                    Image(systemName: "arrow.clockwise")
                }
                .font(.title)
                .padding(5)
                
            }
        }
        .foregroundColor(Color.green)
        .padding()
        .frame(maxHeight: .infinity, alignment: .top)
        
    }
}

struct SurveyViewSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SurveyViewSwiftUI()
                .previewInterfaceOrientation(.landscapeLeft)
            SurveyViewSwiftUI()
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}
