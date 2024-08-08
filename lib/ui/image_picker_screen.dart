import 'dart:io';

import 'package:bloc_app/bloc/imagepicker/image_bloc.dart';
import 'package:bloc_app/bloc/imagepicker/image_picker_event.dart';
import 'package:bloc_app/bloc/imagepicker/image_picker_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ImagePickerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Picker with BLoC'),
      ),
      body: Center(
        child: BlocBuilder<ImagePickerBloc, ImagePickerState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (state.file != null)
                  Image.file(
                    File(state.file!.path),
                    height: 200,
                  )
                else
                  Text('No image selected.'),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    _showPickerDialog(context);
                  },
                  child: Text('Click Me'),
                ),
              ],
            );
          },
        ),
      ),
    );
  }

  void _showPickerDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Pick an image'),
          actions: <Widget>[
            TextButton(
              child: Text('Camera'),
              onPressed: () {
                BlocProvider.of<ImagePickerBloc>(context).add(CameraPicker());
                Navigator.of(context).pop();
              },
            ),
            TextButton(
              child: Text('Gallery'),
              onPressed: () {
                BlocProvider.of<ImagePickerBloc>(context).add(GalleryPicker());
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
