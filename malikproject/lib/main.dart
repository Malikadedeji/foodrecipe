import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: 'Food Recipe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        ),
      home: const MyHomePage(title: 'Food Recipe')
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key, 
    required this.title,
    });

    final String title; 

  @override
  Widget build(BuildContext context) {
      return Scaffold (
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {},
            ),
          ), 
          
          actions: const[
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Icon(Icons.more_horiz),
            )
          ],
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16.0),
            child: Column(
              children: [
                TitleSection(heading: 'How to make french toast',),
                ImageSection(
                  image: 'images/mainImage.png',
                  centerImage: 'images/playButton.png',
                  ),
                ReviewSection(
                  ratings: ' 4,5',
                  total: '  (300 Reviews)'
                ),
                DetailsSection(
                  image: 'images/unsplash.png',
                  names: 'Roberta Anny',
                  locationImage: 'images/location.png',
                  locationText: ' Bali, Indonesia',
                ),
                IngredientsSection(
                  sectiontitle: 'Ingredients', 
                  itemsno: '5 items',
                ),
                OptionsSection(
                  image: 'images/bread.png', 
                  option: 'Bread', 
                  weight: '200g',
                ),
                OptionsSection(
                  image: 'images/egg.png', 
                  option: 'Eggs', 
                  weight: '200g',
                ),
                OptionsSection(
                  image: 'images/bread.png', 
                  option: 'Milk', 
                  weight: '200g',
                ),
              ],
            ),
          ),
        ),
      );
  }
}

class TitleSection extends StatelessWidget {
  const TitleSection({
    super.key,
    required this.heading,
    });

    final String heading;

  @override
  Widget build(BuildContext context) {
    return 
      Row( mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            width: 270.0,
            
            child: Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Text(
                    heading,
                    softWrap: true,
                    textAlign: TextAlign.justify,
                    style: const TextStyle(
                      fontFamily: 'Poppins', 
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0,
                      height: 1.2,
                      ),
                      
                    ),
            ),
          ),
        ],
      );
  }
}

class ImageSection extends StatelessWidget {
  const ImageSection({
    super.key,
    required this.image,
    required this.centerImage,
    });

    final String image;
    final String centerImage;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(
              image,
              width: 600,
              height: 217,
              fit: BoxFit.cover,
            ),
            Positioned(
              child: Image.asset(
              centerImage,
              
            ),
            ), 
          ],
        ),
        
      ),
    );
  }
}

class ReviewSection extends StatelessWidget {
  const ReviewSection({
    super.key,
    required this.ratings,
    required this.total,
    });

    final String ratings;
    final String total;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          const Icon(
              Icons.star,
              color: Color.fromARGB(255, 226, 160, 7),
            ),
          Text(
            ratings,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontFamily: 'Poppins',
            ),
      
          ),
          Text(
            total,
            style: const TextStyle(
              fontFamily: 'Poppins-Thin',
              fontSize: 12.0,
              color:const Color.fromARGB(250, 169, 169, 169),
            ),
      
          )
        ],
      ),
    );
  }
}

class DetailsSection extends StatelessWidget {
  const DetailsSection({
    super.key,
    required this.image,
    required this.names,
    required this.locationImage,
    required this.locationText,
});

    final String image;
    final String names;
    final String locationImage;
    final String locationText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Image.asset(
                  image,
                  ),
              ),
      
            Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                names,
                style: const TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                children: [
                  Image.asset(
                    locationImage,
                  ),
                  Text(
                    locationText,
                    style: const TextStyle(
                      fontFamily: 'Poppins-Thin',
                      fontSize: 12.0,
                      color:const Color.fromARGB(250, 169, 169, 169),
                    ),
                  ),
                ],
              )
            ],
            ),
          ],
          ),
          TextButton(
            onPressed: (){},
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 226, 62, 62),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)
              )
            ), 
            
            child: 
              const Padding (
                padding: EdgeInsets.symmetric(horizontal: 4.0),
                child: Text(
                  'Follow',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Poppins',
                    fontSize: 12.0,
                ),
                ),
              ),
          ),
        ],
      ),
    );
  }
}

class IngredientsSection extends StatelessWidget {
  const IngredientsSection({
    super.key,
    required this.sectiontitle,
    required this.itemsno,
    });

    final String sectiontitle;
    final String itemsno;

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            sectiontitle,
            style: const TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
          Text(
            itemsno,
            style: const TextStyle(
              fontFamily: 'Poppins-Thin',
              fontSize: 12.0,
              color:const Color.fromARGB(250, 169, 169, 169),
            ),
          ),
        ],
      ),
    );
  }
}

class OptionsSection extends StatelessWidget {
  const OptionsSection({
    super.key,
    required this.image,
    required this.option,
    required this.weight,
    });

    final String image;
    final String option;
    final String weight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.transparent, width: 2),
        color:const Color.fromARGB(30, 48, 48, 48),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Colors.transparent, width: 6),
                      color: Colors.white,
                    ),
                    child: Image.asset(
                      image,
                    )  
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      option,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  )
                ],
              ),
              Text(
                weight,
                style: const TextStyle(
                  fontFamily: 'Poppins-Thin',
                  fontSize: 12.0,
                  color:const Color.fromARGB(250, 169, 169, 169),
                ),
              )
            ],
          ),
        )
      ),
    );
  }
}