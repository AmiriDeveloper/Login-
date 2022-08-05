import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      color: Colors.black,
      child: Stack(
        children: [],
      ),
    );
  }
}
/*
Container(
        height: double.infinity,
        color: Colors.black,
        child: Stack(
          children: [
            Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              left: 0,
              child: CarouselSlider.builder(
                controller: _sliderController,
                unlimitedMode: true,
                slideBuilder: (index) {
                  return CachedNetworkImage(
                    imageUrl: user.stories![index].url,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Center(
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  );
                },
                slideTransform: CubeTransform(),
                slideIndicator: CircularWaveSlideIndicator(
                  padding: EdgeInsets.only(bottom: 40),
                  currentIndicatorColor: Colors.white,
                  indicatorBorderColor: Colors.grey.shade700,
                  itemSpacing: 20,
                  indicatorBackgroundColor: Colors.grey.shade700,
                ),
                itemCount: user.stories!.length
))]))*/
