import 'package:flutter/material.dart';
import 'package:implementation_chips/new_screen.dart';
import 'package:implementation_chips/row_data.dart';

class ChipScreen extends StatefulWidget {
  const ChipScreen({super.key});

  @override
  State<ChipScreen> createState() => _ChipScreenState();
}

class _ChipScreenState extends State<ChipScreen> {
  List<RowData> rowData = [
    RowData(
      chipTitle: 'Basic Chip',
      chipButton: 'Simple Chip',
      buttonType: ButtonType.chip,
    ),
    RowData(
      chipTitle: 'Input Chip',
      chipButton: 'Delete Me',
      buttonType: ButtonType.inputChip,
    ),
    RowData(
      chipTitle: 'Action Chip',
      chipButton: 'Click Me (Alert Box)',
      buttonType: ButtonType.actionChip,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Chips Implementation',
          style: TextStyle(
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.teal,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: ListView.builder(
          itemCount: rowData.length,
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(rowData[index].chipTitle),
                Builder(
                  builder: (context) {
                    final type = rowData[index].buttonType;
                    switch (type) {
                      case ButtonType.chip:
                        return ElevatedButton(
                          child: Text(rowData[index].chipButton),
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => NewScreen(),
                              ),
                            );
                          },
                        );
                      case ButtonType.inputChip:
                        return InputChip(
                          label: Text(rowData[index].chipButton),
                          onDeleted: () {
                            debugPrint('Deleted');
                          },
                        );
                      case ButtonType.actionChip:
                        return ActionChip(
                          label: Text(rowData[index].chipButton),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Action Chip Clicked.'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('Ok'),
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                        );
                    }
                  },
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
