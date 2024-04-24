import 'package:practical_test/app/routes/app_pages.dart';

class StaticArray {
  static final List filePickerList = [
    {
      'image': 'assets/image.png',
      'fileText': 'Select a photo',
      'text': 'What is this image about?',
      'routeName': Routes.CONVERSION_SCREEN
    },
    {
      'image': 'assets/file.png',
      'fileText': 'Pick a PDF file',
      'text': 'Summariza this PDF file',
      'routeName': "",
    },
    {
      'image': 'assets/link.png',
      'fileText': 'Add url',
      'text': 'Summariza this web page',
      'routeName': "",
    },
    {
      'image': 'assets/text.png',
      'fileText': 'Add Text',
      'text': 'Generate image from text',
      'routeName': "",
    },
  ];
}
