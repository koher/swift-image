public enum ImageFormat: Sendable {
    case png
    case jpeg(compressionQuality: Double)
    
    public struct FormattingError<Image> : Error where Image: ImageProtocol, Image: Sendable {
        public let image: Image
        public let format: ImageFormat
        
        @usableFromInline
        internal init(image: Image, format: ImageFormat) {
            self.image = image
            self.format = format
        }
    }
}



