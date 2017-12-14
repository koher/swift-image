extension Image {
    public enum Format {
        case png
        case jpeg(compressionQuality: Double)
        
        public struct FormattingError<I : ImageProtocol> : Error {
            public let image: I
            public let format: Image.Format
            
            internal init(image: I, format: Image.Format) {
                self.image = image
                self.format = format
            }
        }
    }
}
