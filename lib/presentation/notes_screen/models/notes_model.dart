import 'package:get/get.dart';
import 'notes_item_model.dart';

class NotesModel {
  Rx<List<NotesItemModel>> notesItemList =
      Rx(List.generate(6, (index) => NotesItemModel()));
}
