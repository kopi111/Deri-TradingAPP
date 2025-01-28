import 'package:flutter/material.dart';
import 'package:deriveapp/class/index.dart';

class SortablePage extends StatefulWidget {
  @override
  _SortablePageState createState() => _SortablePageState();
}

class _SortablePageState extends State<SortablePage> {
  late List<IndexType> indexTypesData;
  int? sortColumnIndex;
  bool isAscending = false;

  @override
  void initState() {
    super.initState();
    indexTypesData =
        List.of(indexTypes); // Assuming `indexTypes` is from your data source
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Index Types"),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          color: Colors.grey[200],
          child: ScrollableWidget(
            child: buildDataTable(),
          ),
        ),
      );

  Widget buildDataTable() {
    final columns = ['Index Type', 'Minimum Lot Size'];

    return DataTable(
      sortAscending: isAscending,
      sortColumnIndex: sortColumnIndex,
      columns: getColumns(columns),
      rows: getRows(indexTypesData),
    );
  }

  List<DataColumn> getColumns(List<String> columns) => columns
      .map((String column) => DataColumn(
            label: Text(column),
            onSort: (columnIndex, ascending) => onSort(columnIndex, ascending),
          ))
      .toList();

  List<DataRow> getRows(List<IndexType> indexTypes) =>
      indexTypes.map((IndexType indexType) {
        final cells = [indexType.name, indexType.minimumLotSize];

        return DataRow(cells: getCells(cells));
      }).toList();

  List<DataCell> getCells(List<dynamic> cells) => cells
      .map((data) => DataCell(Text('$data', style: TextStyle(fontSize: 16))))
      .toList();

  void onSort(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      indexTypesData.sort((a, b) => compareString(ascending, a.name, b.name));
    } else if (columnIndex == 1) {
      indexTypesData.sort(
          (a, b) => compareNum(ascending, a.minimumLotSize, b.minimumLotSize));
    }

    setState(() {
      this.sortColumnIndex = columnIndex;
      this.isAscending = ascending;
    });
  }

  int compareString(bool ascending, String value1, String value2) =>
      ascending ? value1.compareTo(value2) : value2.compareTo(value1);

  int compareNum(bool ascending, num value1, num value2) =>
      ascending ? value1.compareTo(value2) : value2.compareTo(value1);
}

// Helper widget for making the DataTable scrollable
class ScrollableWidget extends StatelessWidget {
  final Widget child;

  const ScrollableWidget({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) => SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: child,
        ),
      );
}
