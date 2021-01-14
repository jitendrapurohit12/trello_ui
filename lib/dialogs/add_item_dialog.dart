import 'package:flutter/material.dart';

class AddItemDialog extends StatelessWidget {
  static final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String value;
    return Dialog(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Text(
              'Enter Item Name',
              style: Theme.of(context).textTheme.headline6,
            ),
            SizedBox(height: 8),
            Form(
              key: formKey,
              child: TextFormField(
                decoration: InputDecoration(hintText: 'Enter Text'),
                onSaved: (s) => value = s,
                validator: (s) => s == null ? 'Enter a valid text' : null,
              ),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: RaisedButton(
                    child: Text('Cancel'),
                    color: Colors.white,
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                Expanded(
                  child: RaisedButton(
                    child: Text('Save',
                        style: Theme.of(context)
                            .textTheme
                            .button
                            .copyWith(color: Colors.white)),
                    color: Colors.green,
                    onPressed: () {
                      if (formKey.currentState.validate()) {
                        formKey.currentState.save();
                        Navigator.pop(context, value);
                      }
                    },
                  ),
                ),
              ],
            ),
          ],
          mainAxisSize: MainAxisSize.min,
        ),
      ),
    );
  }
}
