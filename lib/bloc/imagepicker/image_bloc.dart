// import 'package:bloc/bloc.dart';
// import 'package:bloc_app/bloc/imagepicker/image_picker_event.dart';
// import 'package:bloc_app/bloc/imagepicker/image_picker_state.dart';

// class imagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
//   imagePickerBloc() : super(ImagePickerState()) {
//     on<GalleryPicker>(_gallery);
//     on<CameraPicker>(_camera);
//   }

//   void _gallery(GalleryPicker event, Emitter<ImagePickerState> emit) {
//     emit(state.copyWith(file: state.file));
//   }

//   void _camera(CameraPicker event, Emitter<ImagePickerState> emit) {
//     emit(state.copyWith(file: state.file));
//   }
// }

import 'package:bloc/bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:bloc_app/bloc/imagepicker/image_picker_event.dart';
import 'package:bloc_app/bloc/imagepicker/image_picker_state.dart';

class ImagePickerBloc extends Bloc<ImagePickerEvent, ImagePickerState> {
  final ImagePicker _picker = ImagePicker();

  ImagePickerBloc() : super(const ImagePickerState()) {
    on<GalleryPicker>(_gallery);
    on<CameraPicker>(_camera);
  }

  Future<void> _gallery(
      GalleryPicker event, Emitter<ImagePickerState> emit) async {
    final XFile? file = await _picker.pickImage(source: ImageSource.gallery);
    if (file != null) {
      emit(state.copyWith(file: file));
    }
  }

  Future<void> _camera(
      CameraPicker event, Emitter<ImagePickerState> emit) async {
    final XFile? file = await _picker.pickImage(source: ImageSource.camera);
    if (file != null) {
      emit(state.copyWith(file: file));
    }
  }
}
