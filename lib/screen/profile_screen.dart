/*

import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.black,
      child: Stack(
        children: [
          Positioned(
              top: 0,
              bottom: 10,
              left: 10,
              right: 10,
              child: CarouselSlider.builder(
                  itemCount: 4,

                  // controller: _sliderController,
                  unlimitedMode: true,
                  slideBuilder: (index) {
                    return CachedNetworkImage(
                      imageUrl: 'images/emo.png'
                    ,
                      fit: BoxFit.cover,
                      placeholder: (context, url) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (context, url, error) =>
                          const Icon(Icons.error),
                    );
                  },
                  slideTransform: CubeTransform(),
                  slideIndicator: CircularWaveSlideIndicator(
                    padding: const EdgeInsets.only(bottom: 40),
                    currentIndicatorColor: Colors.white,
                    indicatorBorderColor: Colors.grey.shade700,
                    itemSpacing: 20,
                    indicatorBackgroundColor: Colors.grey.shade700,
                  )))
        ],
      ),
    );
  }
}
*/