import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:imageslider/imageSlider/provider/imageSliderProvider.dart';
import 'package:provider/provider.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({Key? key}) : super(key: key);

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  ImageSliderProvider? _imageSliderProviderfalse;
  ImageSliderProvider? _imageSliderProvidertrue;

  @override
  Widget build(BuildContext context) {
    _imageSliderProviderfalse =
        Provider.of<ImageSliderProvider>(context, listen: false);
    _imageSliderProvidertrue =
        Provider.of<ImageSliderProvider>(context, listen: true);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "IMAGE SLIDER",
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.tealAccent,
        ),
        body: Center(
          child: Column(
            children: [
              CarouselSlider.builder(
                itemCount: _imageSliderProviderfalse!.imageList.length,
                itemBuilder: (context, index, _) {
                  return Image.asset(
                      "${_imageSliderProviderfalse!.imageList[index]}");
                },
                options: CarouselOptions(
                    autoPlay: true,
                    enlargeCenterPage: true,
                    autoPlayInterval: Duration(seconds: 3),
                    onPageChanged: (index, _) {
                      _imageSliderProviderfalse!.changePosition(index);
                    }),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:
                    _imageSliderProviderfalse!.imageList.asMap().entries.map(
                          (e) => Container(
                            height: 10,
                            width: 10,
                            margin: EdgeInsets.all(2),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,color: _imageSliderProviderfalse!.i == e.key?Colors.black : Colors.black45
                            ),
                          ),
                        ).toList(),
              ),
              SizedBox(height: 30),
              DotsIndicator(dotsCount: _imageSliderProvidertrue!.imageList.length,
              position: _imageSliderProvidertrue!.i.toDouble(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
