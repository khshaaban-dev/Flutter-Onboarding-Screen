class Onboard {
  final String image;
  final String title;
  final String discription;
  Onboard({
    required this.image,
    required this.title,
    required this.discription,
  });

 static List<Onboard> demoContent = [
    Onboard(
      image: 'assets/images/image1.png',
      title: 'this is the title for image 1',
      discription:
          'this is the discription for the image 1\nand it\'s placholder content',
    ),
    Onboard(
      image: 'assets/images/image2.png',
      title: 'this is the title for image 2', 
      discription:
          'this is the discription for the image 2\nand it\'s placholder content',
    ),
    Onboard(
      image: 'assets/images/image3.png',
      title: 'this is the title for image 3',
      discription:
          'this is the discription for the image 3\nand it\'s placholder content',
    ),
    Onboard(
      image: 'assets/images/image4.png',
      title: 'this is the title for image 4',
      discription:
          'this is the discription for the image 4\nand it\'s placholder content',
    ),
  ];
}
