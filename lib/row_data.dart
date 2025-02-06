enum ButtonType {
  chip,
  inputChip,
  actionChip,
}

class RowData {
  final String chipTitle;
  final String chipButton;
  final ButtonType buttonType;

  RowData({
    required this.chipTitle,
    required this.chipButton,
    required this.buttonType,
  });
}
