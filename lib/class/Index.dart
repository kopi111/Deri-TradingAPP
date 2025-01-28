class IndexType {
  final String name;
  final double minimumLotSize;

  IndexType({required this.name, required this.minimumLotSize});
}

List<IndexType> indexTypes = [
  IndexType(name: "Boom 1000 Index", minimumLotSize: 0.2),
  IndexType(name: "Boom 300 Index", minimumLotSize: 1),
  IndexType(name: "Boom 500 Index", minimumLotSize: 0.2),
  IndexType(name: "Crash 1000 Index", minimumLotSize: 0.2),
  IndexType(name: "Crash 300 Index", minimumLotSize: 0.5),
  IndexType(name: "Crash 500 Index", minimumLotSize: 0.2),
  IndexType(name: "Jump 10 Index", minimumLotSize: 0.01),
  IndexType(name: "Jump 100 Index", minimumLotSize: 0.01),
  IndexType(name: "Jump 25 Index", minimumLotSize: 0.01),
  IndexType(name: "Jump 50 Index", minimumLotSize: 0.01),
  IndexType(name: "Jump 75 Index", minimumLotSize: 0.01),
  IndexType(name: "Range Break 100 Index", minimumLotSize: 0.01),
  IndexType(name: "Range Break 200 Index", minimumLotSize: 0.01),
  IndexType(name: "Step Index", minimumLotSize: 0.1),
  IndexType(name: "Volatility 10 (1s) Index", minimumLotSize: 0.5),
  IndexType(name: "Volatility 10 Index", minimumLotSize: 0.2),
  IndexType(name: "Volatility 100 (1s) Index", minimumLotSize: 0.5),
  IndexType(name: "Volatility 100 Index", minimumLotSize: 0.2),
  IndexType(name: "Volatility 200 (1s) Index", minimumLotSize: 0.02),
  IndexType(name: "Volatility 200 Index", minimumLotSize: 0.05),
  IndexType(name: "Volatility 25 (1s) Index", minimumLotSize: 0.005),
  IndexType(name: "Volatility 25 Index", minimumLotSize: 1),
  IndexType(name: "Volatility 300 (1s) Index", minimumLotSize: 1),
  IndexType(name: "Volatility 50 (1s) Index", minimumLotSize: 0.005),
  IndexType(name: "Volatility 50 Index", minimumLotSize: 4),
  IndexType(name: "Volatility 75 (1s) Index", minimumLotSize: 0.05),
  IndexType(name: "Volatility 75 Index", minimumLotSize: 0.001),
  IndexType(name: "Volatility 150 (1s) Index", minimumLotSize: 0.01),
  IndexType(name: "Volatility 250 (1s) Index", minimumLotSize: 0.005),
  IndexType(name: "AUDUSD DFX 10 Index", minimumLotSize: 0.01),
  IndexType(name: "EURUSD DFX 10 Index", minimumLotSize: 0.01),
  IndexType(name: "GBPUSD DFX 10 Index", minimumLotSize: 0.01),
  IndexType(name: "USDCHF DFX 10 Index", minimumLotSize: 0.01),
  IndexType(name: "USDJPY DFX 10 Index", minimumLotSize: 0.01),
  IndexType(name: "AUD Basket", minimumLotSize: 0.01),
  IndexType(name: "EUR Basket", minimumLotSize: 0.01),
  IndexType(name: "GBP Basket", minimumLotSize: 0.01),
  IndexType(name: "Gold Basket", minimumLotSize: 0.01),
];
