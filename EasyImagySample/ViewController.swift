import UIKit
import EasyImagy

class ViewController: UIViewController {
	@IBOutlet private var imageView: UIImageView!

	@IBAction private func onPressActionButton(sender: UIButton) {
		let imageView = self.imageView
		
		let controller = UIAlertController(title: nil, message: nil, preferredStyle: .ActionSheet)

		controller.addAction(UIAlertAction(title: "Reset", style: .Default) { action in
			imageView.image = UIImage(named: "Image.jpg")
			sender.enabled = true
		})

		controller.addAction(UIAlertAction(title: "Flip Horizontally", style: .Default) { action in
			imageView.image = Image<RGBA>(uiImage: imageView.image!)!.flipX().uiImage
			sender.enabled = true
		})
		
		controller.addAction(UIAlertAction(title: "Flip Vertically", style: .Default) { action in
			imageView.image = Image<RGBA>(uiImage: imageView.image!)!.flipY().uiImage
			sender.enabled = true
		})
		
		controller.addAction(UIAlertAction(title: "Rotate clockwise", style: .Default) { action in
			imageView.image = Image<RGBA>(uiImage: imageView.image!)!.rotate().uiImage
			sender.enabled = true
		})
		
		controller.addAction(UIAlertAction(title: "Rotate counterclockwise", style: .Default) { action in
			imageView.image = Image<RGBA>(uiImage: imageView.image!)!.rotate(-1).uiImage
			sender.enabled = true
		})
		
		controller.addAction(UIAlertAction(title: "Rotate by 180 degrees", style: .Default) { action in
			imageView.image = Image<RGBA>(uiImage: imageView.image!)!.rotate(2).uiImage
			sender.enabled = true
		})
		
		controller.addAction(UIAlertAction(title: "Resize", style: .Default) { action in
			imageView.image = Image<RGBA>(uiImage: imageView.image!)!.resize(width: 100, height: 100).uiImage
			sender.enabled = true
		})
		
		controller.addAction(UIAlertAction(title: "Crop", style: .Default) { action in
			imageView.image = Image<RGBA>(Image(uiImage: imageView.image!)![0..<100, 0..<100]).uiImage
			sender.enabled = true
		})
		
		controller.addAction(UIAlertAction(title: "Grayscale", style: .Default) { action in
			imageView.image = Image<RGBA>(uiImage: imageView.image!)!.map { (pixel: RGBA) -> UInt8 in
				pixel.gray
			}.uiImage
			sender.enabled = true
		})

		controller.addAction(UIAlertAction(title: "Binarize", style: .Default) { action in
			imageView.image = Image<RGBA>(uiImage: imageView.image!)!.map { (pixel: RGBA) -> RGBA in
				pixel.gray < 128 ? RGBA.black : RGBA.white
			}.uiImage
			sender.enabled = true
		})
		
		controller.addAction(UIAlertAction(title: "Binarize (Auto threshold)", style: .Default) { action in
			let image = Image<RGBA>(uiImage: imageView.image!)!
			let threshold = UInt8(image.reduce(0) { $0 + $1.grayInt } / image.count) // mean of gray values of all pixels
			imageView.image = image.map { $0.gray < threshold ? .black : .white }.uiImage
			sender.enabled = true
		})

		controller.addAction(UIAlertAction(title: "Mean filter", style: .Default) { action in
			let image = Image<RGBA>(uiImage: imageView.image!)!
            let kernel = Image<Float>(width: 3, height: 3, pixel: 1.0 / 9.0)
			imageView.image = image.convoluted(kernel).uiImage
			sender.enabled = true
		})
		
		controller.addAction(UIAlertAction(title: "Gaussian filter", style: .Default) { action in
			let image = Image<RGBA>(uiImage: imageView.image!)!
            let kernel = Image<Int>(width: 5, height: 5, pixels: [
                1,  4,  6,  4, 1,
                4, 16, 24, 16, 4,
                6, 24, 36, 24, 6,
                4, 16, 24, 16, 4,
                1,  4,  6,  4, 1,
            ]).map { Float($0) / 256.0 }
			imageView.image = image.convoluted(kernel).uiImage
			sender.enabled = true
		})
		
		sender.enabled = false
		
		presentViewController(controller, animated: true, completion: nil)
	}
}

