import SwiftUI

struct NGPickerSampleView: View {
    @State var score: PartScore = .s275

    var body: some View {
        Form {
            Section {

                Picker(selection: $score, label: Text(verbatim: "")) {
                    ForEach(PartScore.allCases) {
                        Text($0.title)
                            .font(.subheadline)
                            .tag($0)
                    }
                }
                .pickerStyle(.inline)
                .frame(maxWidth: 60, maxHeight: 60)
                .clipped()
                .overlay(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.red, lineWidth: 2)
                )
            }
        }
    }
}

struct OKPickerSampleView: View {
    @State var score: PartScore = .s275

    var body: some View {
        Picker(selection: $score, label: Text(verbatim: "")) {
            ForEach(PartScore.allCases) {
                Text($0.title)
                    .font(.subheadline)
                    .tag($0)
            }
        }
        .pickerStyle(.inline)
        .frame(maxWidth: 60, maxHeight: 60)
        .clipped()
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color.red, lineWidth: 2)
        )

    }
}

struct PickerSampleView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            NGPickerSampleView()
            OKPickerSampleView()
        }
        .previewLayout(.sizeThatFits)
    }
}
