//
//  Color.swift
//  WaveLabs
//
//  Created by Vlad Gorlov on 06.06.2020.
//  Copyright © 2020 Vlad Gorlov. All rights reserved.
//

import CoreGraphics

#if os(iOS) || os(tvOS) || os(watchOS)
import UIKit
#elseif os(OSX)
import AppKit
#endif

public struct PlatformColor {
   #if os(iOS) || os(tvOS) || os(watchOS)
   public typealias Color = UIColor
   #elseif os(OSX)
   public typealias Color = NSColor
   #endif
}

// Popular colors.
public extension PlatformColor.Color {

   static let x002760 = #colorLiteral(red: 0.0000000000000000, green: 0.1529411764705882, blue: 0.3764705882352941, alpha: 1)
   static let x0028AA = #colorLiteral(red: 0.0000000000000000, green: 0.1568627450980392, blue: 0.6666666666666666, alpha: 1)
   static let x002B36 = #colorLiteral(red: 0.0000000000000000, green: 0.1686274509803922, blue: 0.2117647058823529, alpha: 1)
   static let x002E74 = #colorLiteral(red: 0.0000000000000000, green: 0.1803921568627451, blue: 0.4549019607843137, alpha: 1)
   static let x008000 = #colorLiteral(red: 0.0000000000000000, green: 0.5019607843137255, blue: 0.0000000000000000, alpha: 1)
   static let x023BA1 = #colorLiteral(red: 0.0078431372549020, green: 0.2313725490196079, blue: 0.6313725490196078, alpha: 1)
   static let x073642 = #colorLiteral(red: 0.0274509803921569, green: 0.2117647058823529, blue: 0.2588235294117647, alpha: 1)
   static let x080808 = #colorLiteral(red: 0.0313725490196078, green: 0.0313725490196078, blue: 0.0313725490196078, alpha: 1)
   static let x141414 = #colorLiteral(red: 0.0784313725490196, green: 0.0784313725490196, blue: 0.0784313725490196, alpha: 1)
   static let x1650CD = #colorLiteral(red: 0.0862745098039216, green: 0.3137254901960784, blue: 0.8039215686274510, alpha: 1)
   static let x1751CE = #colorLiteral(red: 0.0901960784313725, green: 0.3176470588235294, blue: 0.8078431372549020, alpha: 1)
   static let x202020 = #colorLiteral(red: 0.1254901960784314, green: 0.1254901960784314, blue: 0.1254901960784314, alpha: 1)
   static let x2233CF = #colorLiteral(red: 0.1333333333333333, green: 0.2000000000000000, blue: 0.8117647058823529, alpha: 1)
   static let x242424 = #colorLiteral(red: 0.1411764705882353, green: 0.1411764705882353, blue: 0.1411764705882353, alpha: 1)
   static let x268BD2 = #colorLiteral(red: 0.1490196078431373, green: 0.5450980392156862, blue: 0.8235294117647058, alpha: 1)
   static let x282828 = #colorLiteral(red: 0.1568627450980392, green: 0.1568627450980392, blue: 0.1568627450980392, alpha: 1)
   static let x2AA198 = #colorLiteral(red: 0.1647058823529412, green: 0.6313725490196078, blue: 0.5960784313725490, alpha: 1)
   static let x2D2B29 = #colorLiteral(red: 0.1764705882352941, green: 0.1686274509803922, blue: 0.1607843137254902, alpha: 1)
   static let x313232 = #colorLiteral(red: 0.1921568627450981, green: 0.1960784313725490, blue: 0.1960784313725490, alpha: 1)
   static let x333333 = #colorLiteral(red: 0.2000000000000000, green: 0.2000000000000000, blue: 0.2000000000000000, alpha: 1)
   static let x358122 = #colorLiteral(red: 0.2078431372549020, green: 0.5058823529411764, blue: 0.1333333333333333, alpha: 1)
   static let x39575B = #colorLiteral(red: 0.2235294117647059, green: 0.3411764705882353, blue: 0.3568627450980392, alpha: 1)
   static let x413D3A = #colorLiteral(red: 0.2549019607843137, green: 0.2392156862745098, blue: 0.2274509803921569, alpha: 1)
   static let x463F3F = #colorLiteral(red: 0.2745098039215687, green: 0.2470588235294118, blue: 0.2470588235294118, alpha: 1)
   static let x4D4D4D = #colorLiteral(red: 0.3019607843137255, green: 0.3019607843137255, blue: 0.3019607843137255, alpha: 1)
   static let x4E7ED0 = #colorLiteral(red: 0.3058823529411765, green: 0.4941176470588236, blue: 0.8156862745098039, alpha: 1)
   static let x506743 = #colorLiteral(red: 0.3137254901960784, green: 0.4039215686274510, blue: 0.2627450980392157, alpha: 1)
   static let x545454 = #colorLiteral(red: 0.3294117647058823, green: 0.3294117647058823, blue: 0.3294117647058823, alpha: 1)
   static let x5494A3 = #colorLiteral(red: 0.3294117647058823, green: 0.5803921568627451, blue: 0.6392156862745098, alpha: 1)
   static let x586E75 = #colorLiteral(red: 0.3450980392156863, green: 0.4313725490196079, blue: 0.4588235294117647, alpha: 1)
   static let x587E86 = #colorLiteral(red: 0.3450980392156863, green: 0.4941176470588236, blue: 0.5254901960784314, alpha: 1)
   static let x597F86 = #colorLiteral(red: 0.3490196078431372, green: 0.4980392156862745, blue: 0.5254901960784314, alpha: 1)
   static let x5C5C5C = #colorLiteral(red: 0.3607843137254902, green: 0.3607843137254902, blue: 0.3607843137254902, alpha: 1)
   static let x64605D = #colorLiteral(red: 0.3921568627450980, green: 0.3764705882352941, blue: 0.3647058823529412, alpha: 1)
   static let x657B83 = #colorLiteral(red: 0.3960784313725490, green: 0.4823529411764706, blue: 0.5137254901960784, alpha: 1)
   static let x6A6A6A = #colorLiteral(red: 0.4156862745098039, green: 0.4156862745098039, blue: 0.4156862745098039, alpha: 1)
   static let x6C71C4 = #colorLiteral(red: 0.4235294117647059, green: 0.4431372549019608, blue: 0.7686274509803922, alpha: 1)
   static let x6FC7C7 = #colorLiteral(red: 0.4352941176470588, green: 0.7803921568627451, blue: 0.7803921568627451, alpha: 1)
   static let x704A2E = #colorLiteral(red: 0.4392156862745098, green: 0.2901960784313726, blue: 0.1803921568627451, alpha: 1)
   static let x726E73 = #colorLiteral(red: 0.4470588235294118, green: 0.4313725490196079, blue: 0.4509803921568628, alpha: 1)
   static let x727272 = #colorLiteral(red: 0.4470588235294118, green: 0.4470588235294118, blue: 0.4470588235294118, alpha: 1)
   static let x7B7B7B = #colorLiteral(red: 0.4823529411764706, green: 0.4823529411764706, blue: 0.4823529411764706, alpha: 1)
   static let x7EC2AF = #colorLiteral(red: 0.4941176470588236, green: 0.7607843137254902, blue: 0.6862745098039216, alpha: 1)
   static let x8291DF = #colorLiteral(red: 0.5098039215686274, green: 0.5686274509803921, blue: 0.8745098039215686, alpha: 1)
   static let x839496 = #colorLiteral(red: 0.5137254901960784, green: 0.5803921568627451, blue: 0.5882352941176471, alpha: 1)
   static let x859900 = #colorLiteral(red: 0.5215686274509804, green: 0.6000000000000000, blue: 0.0000000000000000, alpha: 1)
   static let x8B9AB3 = #colorLiteral(red: 0.5450980392156862, green: 0.6039215686274509, blue: 0.7019607843137254, alpha: 1)
   static let x90C0B2 = #colorLiteral(red: 0.5647058823529412, green: 0.7529411764705882, blue: 0.6980392156862745, alpha: 1)
   static let x90D4C8 = #colorLiteral(red: 0.5647058823529412, green: 0.8313725490196079, blue: 0.7843137254901961, alpha: 1)
   static let x923398 = #colorLiteral(red: 0.5725490196078431, green: 0.2000000000000000, blue: 0.5960784313725490, alpha: 1)
   static let x93A1A1 = #colorLiteral(red: 0.5764705882352941, green: 0.6313725490196078, blue: 0.6313725490196078, alpha: 1)
   static let x9A7A51 = #colorLiteral(red: 0.6039215686274509, green: 0.4784313725490196, blue: 0.3176470588235294, alpha: 1)
   static let xA12AD1 = #colorLiteral(red: 0.6313725490196078, green: 0.1647058823529412, blue: 0.8196078431372549, alpha: 1)
   static let xA31515 = #colorLiteral(red: 0.6392156862745098, green: 0.0823529411764706, blue: 0.0823529411764706, alpha: 1)
   static let xA68357 = #colorLiteral(red: 0.6509803921568628, green: 0.5137254901960784, blue: 0.3411764705882353, alpha: 1)
   static let xA68458 = #colorLiteral(red: 0.6509803921568628, green: 0.5176470588235295, blue: 0.3450980392156863, alpha: 1)
   static let xA6B478 = #colorLiteral(red: 0.6509803921568628, green: 0.7058823529411765, blue: 0.4705882352941176, alpha: 1)
   static let xA6DB8B = #colorLiteral(red: 0.6509803921568628, green: 0.8588235294117647, blue: 0.5450980392156862, alpha: 1)
   static let xA8A8A8 = #colorLiteral(red: 0.6588235294117647, green: 0.6588235294117647, blue: 0.6588235294117647, alpha: 1)
   static let xA98558 = #colorLiteral(red: 0.6627450980392157, green: 0.5215686274509804, blue: 0.3450980392156863, alpha: 1)
   static let xA99AAC = #colorLiteral(red: 0.6627450980392157, green: 0.6039215686274509, blue: 0.6745098039215687, alpha: 1)
   static let xAEAEAE = #colorLiteral(red: 0.6823529411764706, green: 0.6823529411764706, blue: 0.6823529411764706, alpha: 1)
   static let xB0B0B0 = #colorLiteral(red: 0.6901960784313725, green: 0.6901960784313725, blue: 0.6901960784313725, alpha: 1)
   static let xB2B8C5 = #colorLiteral(red: 0.6980392156862745, green: 0.7215686274509804, blue: 0.7725490196078432, alpha: 1)
   static let xB4C87D = #colorLiteral(red: 0.7058823529411765, green: 0.7843137254901961, blue: 0.4901960784313725, alpha: 1)
   static let xB58900 = #colorLiteral(red: 0.7098039215686275, green: 0.5372549019607843, blue: 0.0000000000000000, alpha: 1)
   static let xB5F3F0 = #colorLiteral(red: 0.7098039215686275, green: 0.9529411764705882, blue: 0.9411764705882353, alpha: 1)
   static let xB69060 = #colorLiteral(red: 0.7137254901960784, green: 0.5647058823529412, blue: 0.3764705882352941, alpha: 1)
   static let xB69A74 = #colorLiteral(red: 0.7137254901960784, green: 0.6039215686274509, blue: 0.4549019607843137, alpha: 1)
   static let xBBBBBB = #colorLiteral(red: 0.7333333333333333, green: 0.7333333333333333, blue: 0.7333333333333333, alpha: 1)
   static let xBD11E7 = #colorLiteral(red: 0.7411764705882353, green: 0.0666666666666667, blue: 0.9058823529411765, alpha: 1)
   static let xC52225 = #colorLiteral(red: 0.7725490196078432, green: 0.1333333333333333, blue: 0.1450980392156863, alpha: 1)
   static let xCB4B16 = #colorLiteral(red: 0.7960784313725490, green: 0.2941176470588235, blue: 0.0862745098039216, alpha: 1)
   static let xCBCBCB = #colorLiteral(red: 0.7960784313725490, green: 0.7960784313725490, blue: 0.7960784313725490, alpha: 1)
   static let xCD8264 = #colorLiteral(red: 0.8039215686274510, green: 0.5098039215686274, blue: 0.3921568627450980, alpha: 1)
   static let xCD8B4B = #colorLiteral(red: 0.8039215686274510, green: 0.5450980392156862, blue: 0.2941176470588235, alpha: 1)
   static let xCE8365 = #colorLiteral(red: 0.8078431372549020, green: 0.5137254901960784, blue: 0.3960784313725490, alpha: 1)
   static let xD2B683 = #colorLiteral(red: 0.8235294117647058, green: 0.7137254901960784, blue: 0.5137254901960784, alpha: 1)
   static let xD2B784 = #colorLiteral(red: 0.8235294117647058, green: 0.7176470588235294, blue: 0.5176470588235295, alpha: 1)
   static let xD33682 = #colorLiteral(red: 0.8274509803921568, green: 0.2117647058823529, blue: 0.5098039215686274, alpha: 1)
   static let xD5D5D5 = #colorLiteral(red: 0.8352941176470589, green: 0.8352941176470589, blue: 0.8352941176470589, alpha: 1)
   static let xD96C69 = #colorLiteral(red: 0.8509803921568627, green: 0.4235294117647059, blue: 0.4117647058823529, alpha: 1)
   static let xDADADA = #colorLiteral(red: 0.8549019607843137, green: 0.8549019607843137, blue: 0.8549019607843137, alpha: 1)
   static let xDC322F = #colorLiteral(red: 0.8627450980392157, green: 0.1960784313725490, blue: 0.1843137254901961, alpha: 1)
   static let xDEDEDE = #colorLiteral(red: 0.8705882352941177, green: 0.8705882352941177, blue: 0.8705882352941177, alpha: 1)
   static let xE0D79E = #colorLiteral(red: 0.8784313725490196, green: 0.8431372549019608, blue: 0.6196078431372549, alpha: 1)
   static let xE2E2E2 = #colorLiteral(red: 0.8862745098039215, green: 0.8862745098039215, blue: 0.8862745098039215, alpha: 1)
   static let xE85555 = #colorLiteral(red: 0.9098039215686274, green: 0.3333333333333333, blue: 0.3333333333333333, alpha: 1)
   static let xEAEAEA = #colorLiteral(red: 0.9176470588235294, green: 0.9176470588235294, blue: 0.9176470588235294, alpha: 1)
   static let xEAEBED = #colorLiteral(red: 0.9176470588235294, green: 0.9215686274509803, blue: 0.9294117647058824, alpha: 1)
   static let xEEE8D5 = #colorLiteral(red: 0.9333333333333333, green: 0.9098039215686274, blue: 0.8352941176470589, alpha: 1)
   static let xEFEFF1 = #colorLiteral(red: 0.9372549019607843, green: 0.9372549019607843, blue: 0.9450980392156862, alpha: 1)
   static let xF0F0F0 = #colorLiteral(red: 0.9411764705882353, green: 0.9411764705882353, blue: 0.9411764705882353, alpha: 1)
   static let xF1F1F1 = #colorLiteral(red: 0.9450980392156862, green: 0.9450980392156862, blue: 0.9450980392156862, alpha: 1)
   static let xF9EFB1 = #colorLiteral(red: 0.9764705882352941, green: 0.9372549019607843, blue: 0.6941176470588235, alpha: 1)
   static let xF9F9F9 = #colorLiteral(red: 0.9764705882352941, green: 0.9764705882352941, blue: 0.9764705882352941, alpha: 1)
   static let xFAFAFA = #colorLiteral(red: 0.9803921568627451, green: 0.9803921568627451, blue: 0.9803921568627451, alpha: 1)
   static let xFDF6E3 = #colorLiteral(red: 0.9921568627450981, green: 0.9647058823529412, blue: 0.8901960784313725, alpha: 1)
   static let xFDFDFD = #colorLiteral(red: 0.9921568627450981, green: 0.9921568627450981, blue: 0.9921568627450981, alpha: 1)
   static let xFEBD0F = #colorLiteral(red: 0.9960784313725490, green: 0.7411764705882353, blue: 0.0588235294117647, alpha: 1)
   static let xFEFEFE = #colorLiteral(red: 0.9960784313725490, green: 0.9960784313725490, blue: 0.9960784313725490, alpha: 1)
   static let xFF0000 = #colorLiteral(red: 1.0000000000000000, green: 0.0000000000000000, blue: 0.0000000000000000, alpha: 1)
   static let xFF9800 = #colorLiteral(red: 1.0000000000000000, green: 0.5960784313725490, blue: 0.0000000000000000, alpha: 1)
   static let xFFB300 = #colorLiteral(red: 1.0000000000000000, green: 0.7019607843137254, blue: 0.0000000000000000, alpha: 1)
   static let xFFB700 = #colorLiteral(red: 1.0000000000000000, green: 0.7176470588235294, blue: 0.0000000000000000, alpha: 1)
   static let xFFFFFF = #colorLiteral(red: 1.0000000000000000, green: 1.0000000000000000, blue: 1.0000000000000000, alpha: 1)
   static let x0000FF = #colorLiteral(red: 0.0000000000000000, green: 0.0000000000000000, blue: 1.0000000000000000, alpha: 1)
   static let x2F2F2F = #colorLiteral(red: 0.1843137254901961, green: 0.1843137254901961, blue: 0.1843137254901961, alpha: 1)
   static let x171717 = #colorLiteral(red: 0.0901960784313725, green: 0.0901960784313725, blue: 0.0901960784313725, alpha: 1)
   static let xE3E3E3 = #colorLiteral(red: 0.8901960784313725, green: 0.8901960784313725, blue: 0.8901960784313725, alpha: 1)
   static let x787878 = #colorLiteral(red: 0.4705882352941176, green: 0.4705882352941176, blue: 0.4705882352941176, alpha: 1)
   static let xC1C1C1 = #colorLiteral(red: 0.7568627450980392, green: 0.7568627450980392, blue: 0.7568627450980392, alpha: 1)
}
