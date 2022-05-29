import SwiftUI

struct SurveyViewSwiftUI: View {
    @State var name = ""
    @State var filePath = ""
    
    @Environment(\.horizontalSizeClass) var sizeClass
    
    var bounds = UIScreen.main.bounds
    
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
                .frame(width: compact() ? buttonSize() : 277)
                .font(compact() ? .title3 : .title2)
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
                .frame(width:  compact() ? buttonSize() : 277)
                .font(compact() ? .title3 : .title2)
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 1))
                
            }
            
            HStack(spacing: 20) {
                TextField("Set Name", text: $name)
                    .frame(width:  compact() ? buttonSize() : 277)
                    .font(compact() ? .title3 : .title2)
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
                .font(compact() ? .title2 : .title)
                .foregroundColor(Color.red)
                .padding(5)
                
                Button {
                    print("Folder buton was pressed")
                } label: {
                    Image(systemName: "folder")
                }
                .font(compact() ? .title2 : .title)
                .padding(5)
                
                if regular(){
                TextField("File Path", text: $filePath)
                    .frame(maxWidth: .infinity)
                    .font(.title2)
                    .padding(10)
                    .overlay(
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(lineWidth: 1)
                    )
                    .foregroundColor(Color.gray)
                }
                
                Button {
                    print("refresh buton was pressed")
                } label: {
                    Image(systemName: "arrow.clockwise")
                }
                .font(compact() ? .title2 : .title)
                .padding(5)
                
            }
        }
        .foregroundColor(Color.green)
        .padding()
        .frame(maxHeight: .infinity, alignment: .top)
        
    }
    
    func compact() -> Bool{
        return sizeClass == .compact
    }
    
    func regular() -> Bool{
        return sizeClass != .compact
    }
    
    func buttonSize() -> CGFloat{
        return bounds.width*0.39
    }
    
}

struct SurveyViewSwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SurveyViewSwiftUI()
                .previewInterfaceOrientation(.portraitUpsideDown)
            
            
        }
    }
}
