import 'package:flutter/material.dart';
import '../utils/colors.dart';

class CommentWidget extends StatefulWidget {
  final String initialCommentText;

  const CommentWidget({
    Key? key,
    required this.initialCommentText,
  }) : super(key: key);

  @override
  CommentWidgetState createState() => CommentWidgetState();
}

class CommentWidgetState extends State<CommentWidget> {
  String commentText = '';
  bool isEditing = false;

  @override
  void initState() {
    super.initState();
    commentText = widget.initialCommentText;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isEditing = true;
        });
      },
      child: Container(
        width: 342,
        height: 126,
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.fromLTRB(16, 12, 16, 12),
        decoration: BoxDecoration(
          color: AppColors.commentBackground,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: AppColors.commentShade,
            width: 1,
          ),
        ),
        child: isEditing
            ? TextField(
                style: const TextStyle(
                  color: Colors.black,
                ),
                decoration: const InputDecoration(
                  border: InputBorder.none,
                ),
                maxLines: null,
                onChanged: (value) {
                  setState(() {
                    commentText = value;
                  });
                },
              )
            : Text(
                commentText,
                style: const TextStyle(
                  color: Colors.black,
                ),
              ),
      ),
    );
  }
}

