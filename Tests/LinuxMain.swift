import XCTest
@testable import EasyImagyTests

XCTMain([
    testCase(AnyImageTests.allTests),
    testCase(ConvolutionTests.allTests),
    testCase(EasyImagySample.allTests),
    testCase(ExtrapolationTests.allTests),
    testCase(HigherOrderFunctionsTests.allTests),
    testCase(ImageOperatorsTests.allTests),
    testCase(ImageProtocolTests.allTests),
    testCase(ImageSliceTests.allTests),
    testCase(ImageTests.allTests),
    testCase(InterpolationTests.allTests),
    testCase(ResizingTests.allTests),
    testCase(RGBATests.allTests),
    testCase(RGBAOperatorsTests.allTests),
    testCase(RotationTests.allTests),
])
