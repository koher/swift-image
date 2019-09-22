public enum ImageFormat {
    case png
    case jpeg(compressionQuality: Double)
    
    public struct FormattingError<I : ImageProtocol> : Error {
        public let image: I
        public let format: ImageFormat
        
        @usableFromInline
        internal init(image: I, format: ImageFormat) {
            self.image = image
            self.format = format
        }
    }
}



