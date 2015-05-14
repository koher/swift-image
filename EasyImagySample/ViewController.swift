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
			imageView.image = Image(UIImage: imageView.image!).flipX().UIImage
			sender.enabled = true
		})
		
		controller.addAction(UIAlertAction(title: "Flip Vertically", style: .Default) { action in
			imageView.image = Image(UIImage: imageView.image!).flipY().UIImage
			sender.enabled = true
		})
		
		controller.addAction(UIAlertAction(title: "Rotate clockwise", style: .Default) { action in
			imageView.image = Image(UIImage: imageView.image!).rotate().UIImage
			sender.enabled = true
		})
		
		controller.addAction(UIAlertAction(title: "Rotate counterclockwise", style: .Default) { action in
			imageView.image = Image(UIImage: imageView.image!).rotate(-1).UIImage
			sender.enabled = true
		})
		
		controller.addAction(UIAlertAction(title: "Rotate by 180 degrees", style: .Default) { action in
			imageView.image = Image(UIImage: imageView.image!).rotate(2).UIImage
			sender.enabled = true
		})
		
		controller.addAction(UIAlertAction(title: "Resize", style: .Default) { action in
			imageView.image = Image(UIImage: imageView.image!).resize(width: 100, height: 100).UIImage
			sender.enabled = true
		})
		
		controller.addAction(UIAlertAction(title: "Crop", style: .Default) { action in
			imageView.image = Image(UIImage: imageView.image!)[0..<100][0..<100]!.UIImage
			sender.enabled = true
		})
		
		controller.addAction(UIAlertAction(title: "Grayscale", style: .Default) { action in
			imageView.image = Image(UIImage: imageView.image!).map { (pixel: Pixel) -> Pixel in
				Pixel(gray: pixel.gray)
			}.UIImage
			sender.enabled = true
		})

		controller.addAction(UIAlertAction(title: "Binarize", style: .Default) { action in
			imageView.image = Image(UIImage: imageView.image!).map { (pixel: Pixel) -> Pixel in
				pixel.gray < 128 ? Pixel.black : Pixel.white
			}.UIImage
			sender.enabled = true
		})
		
		controller.addAction(UIAlertAction(title: "Binarize (Auto threshold)", style: .Default) { action in
			let image = Image(UIImage: imageView.image!)
			let threshold = UInt8(image.reduce(0) { $0 + $1.grayInt } / image.count) // mean of gray values of all pixels
			imageView.image = image.map { (pixel: Pixel) -> Pixel in
				pixel.gray < threshold ? Pixel.black : Pixel.white
			}.UIImage
			sender.enabled = true
		})

		controller.addAction(UIAlertAction(title: "Mean filter", style: .Default) { action in
			let image = Image(UIImage: imageView.image!)
			imageView.image = image.map { (x: Int, y: Int, pixel: Pixel) -> Pixel in
				image[(y - 1)...(y + 1)][(x - 1)...(x + 1)].map { Pixel.mean($0) } ?? pixel
			}.UIImage
			sender.enabled = true
		})
		
		controller.addAction(UIAlertAction(title: "Gaussian filter", style: .Default) { action in
			let weights = [
				1,  4,  6,  4, 1,
				4, 16, 24, 16, 4,
				6, 24, 36, 24, 6,
				4, 16, 24, 16, 4,
				1,  4,  6,  4, 1,
			]
			let image = Image(UIImage: imageView.image!)
			imageView.image = image.map { (x: Int, y: Int, pixel: Pixel) -> Pixel in
				image[(y - 2)...(y + 2)][(x - 2)...(x + 2)].map { Pixel.weightedMean(zip(weights, $0)) } ?? pixel
			}.UIImage
			sender.enabled = true
		})
		
		sender.enabled = false
		
		presentViewController(controller, animated: true, completion: nil)
	}
}

