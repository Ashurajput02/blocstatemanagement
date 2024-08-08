// // import 'package:equatable/equatable.dart';
// // import 'package:image_picker/image_picker.dart';

// // class imagePickerState extends Equatable {
// //   final XFile? file;
// //   const imagePickerState({this.file});

// //   @override
// //   // TODO: implement props
// //   List<Object?> get props => [file];

// //   imagePickerState copyWith(XFile? file) {
// //     return imagePickerState(file: file ?? this.file);
// //   }
// // }

// import 'package:equatable/equatable.dart';
// import 'package:image_picker/image_picker.dart';

// class ImagePickerState extends Equatable {
//   final XFile? file;
//   const ImagePickerState({this.file});

//   @override
//   List<Object?> get props => [file];

//   ImagePickerState copyWith({XFile? file}) {
//     return ImagePickerState(
//       file: file ?? this.file,
//     );
//   }
// }

import 'package:equatable/equatable.dart';
import 'package:image_picker/image_picker.dart';

class ImagePickerState extends Equatable {
  final XFile? file;
  const ImagePickerState({this.file});

  @override
  List<Object?> get props => [file];

  ImagePickerState copyWith({XFile? file}) {
    return ImagePickerState(
      file: file ?? this.file,
    );
  }
}
