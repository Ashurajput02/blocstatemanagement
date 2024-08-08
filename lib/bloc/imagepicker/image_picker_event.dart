// // import 'package:equatable/equatable.dart';

// // abstract class imagePickerEvent extends Equatable {
// //   const imagePickerEvent();
// //   @override
// //   List<Object> get props => [];
// // }

// // class cameraPicker extends imagePickerEvent {}

// // class galleryPicker extends imagePickerEvent {}

// import 'package:bloc/bloc.dart';
// import 'package:bloc_app/bloc/imagepicker/image_picker_event.dart';
// import 'package:bloc_app/bloc/imagepicker/image_picker_state.dart';

// class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
//   ImagePickerBloc() : super(const ImagePickerState()) {
//     on<GalleryPicker>(_gallery);
//     on<CameraPicker>(_camera);
//   }

//   void _gallery(GalleryPicker event, Emitter<ImagePickerState> emit) {
//     // Emit a new state with the file obtained from the gallery
//     emit(state.copyWith(file: event.file));
//   }

//   void _camera(CameraPicker event, Emitter<ImagePickerState> emit) {
//     // Emit a new state with the file obtained from the camera
//     emit(state.copyWith(file: event.file));
//   }
// }

// import 'package:equatable/equatable.dart';
// import 'package:image_picker/image_picker.dart';

// abstract class ImagePickerEvent extends Equatable {
//   const ImagePickerEvent();

//   @override
//   List<Object?> get props => [];
// }

// class CameraPicker extends ImagePickerEvent {
//   final XFile file;

//   const CameraPicker(this.file);

//   @override
//   List<Object?> get props => [file];
// }

// class GalleryPicker extends ImagePickerEvent {
//   final XFile file;

//   const GalleryPicker(this.file);

//   @override
//   List<Object?> get props => [file];
// }
import 'package:equatable/equatable.dart';

abstract class ImagePickerEvent extends Equatable {
  const ImagePickerEvent();

  @override
  List<Object?> get props => [];
}

class CameraPicker extends ImagePickerEvent {}

class GalleryPicker extends ImagePickerEvent {}
