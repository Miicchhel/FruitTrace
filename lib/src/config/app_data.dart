import 'package:fruittrace/src/models/item_model.dart';

// frutas tropicais
ItemModel abacaxi = ItemModel(
  itemName: 'Abacaxi',
  imgUrl: 'assets/fruits/abacaxi.png',
  price: 7.5,
  unit: 'un',
  category: 'Tropicais',
  description: 'Desfrute do sabor doce e refrescante do nosso abacaxi! Perfeito para sucos e sobremesas, é a escolha ideal para uma vida saudável e cheia de vitaminas.',
);

ItemModel caja = ItemModel(
  itemName: 'Cajá',
  imgUrl: 'assets/fruits/caja.png',
  price: 8.0,
  unit: 'kg',
  category: 'Tropicais',
  description: 'O cajá é uma fruta tropical deliciosa e rica em vitamina C. Perfeito para refrescar e dar um toque especial às suas receitas.',
);

ItemModel caju = ItemModel(
  itemName: 'Caju',
  imgUrl: 'assets/fruits/caju.png',
  price: 7.0,
  unit: 'un',
  category: 'Tropicais',
  description: 'Experimente o sabor único e tropical do caju! Cheio de nutrientes e perfeito para refrescar seus dias.',
);

ItemModel cupuacu = ItemModel(
  itemName: 'Cupuaçu',
  imgUrl: 'assets/fruits/cupuacu.png',
  price: 14.0,
  unit: 'kg',
  category: 'Tropicais',
  description: 'Descubra o exótico cupuaçu, perfeito para sucos e sobremesas cheias de sabor. Rico em nutrientes, é uma explosão de saúde.',
);

ItemModel graviola = ItemModel(
  itemName: 'Graviola',
  imgUrl: 'assets/fruits/graviola.png',
  price: 8.0,
  unit: 'un',
  category: 'Tropicais',
  description: 'A graviola é conhecida por seu sabor inconfundível e propriedades nutritivas. Ideal para sucos e sobremesas saudáveis.',
);

ItemModel manga = ItemModel(
  imgUrl: 'assets/fruits/mango.png',
  itemName: 'Manga',
  price: 2.5,
  unit: 'un',
  category: 'Tropicais',
  description: 'Suculenta e doce, nossa manga é perfeita para um lanche rápido ou um smoothie revitalizante. Rica em vitaminas, é uma delícia que faz bem para a saúde.',
);

// frutas cítricas
ItemModel maracuja = ItemModel(
  itemName: 'Maracujá',
  imgUrl: 'assets/fruits/maracuja.png',
  price: 10.0,
  unit: 'kg',
  category: 'Cítricas',
  description: 'O maracujá é perfeito para sucos refrescantes e sobremesas. Rico em nutrientes, é ideal para relaxar e aproveitar.',
);

ItemModel tangerina = ItemModel(
  itemName: 'Tangerina',
  imgUrl: 'assets/fruits/tangerina.png',
  price: 7.0,
  unit: 'kg',
  category: 'Cítricas',
  description: 'Tangerina suculenta e cheia de sabor, perfeita para um lanche saudável ou para dar um toque cítrico às suas receitas.',
);

// frutas vermelhas
ItemModel acerola = ItemModel(
  itemName: 'Acerola',
  imgUrl: 'assets/fruits/acerola.png',
  price: 7.0,
  unit: 'kg',
  category: 'Vermelhas',
  description: 'A acerola é uma potência de vitamina C. Perfeita para sucos e uma vida saudável e cheia de energia.',
);

ItemModel morango = ItemModel(
  itemName: 'Morango',
  imgUrl: 'assets/fruits/morango.png',
  price: 12.0,
  unit: 'kg',
  category: 'Vermelhas',
  description: 'Morango fresco e suculento, ideal para sobremesas, saladas e smoothies. Rico em vitaminas e antioxidantes.',
);

ItemModel pitanga = ItemModel(
  itemName: 'Pitanga',
  imgUrl: 'assets/fruits/pitanga.png',
  price: 9.0,
  unit: 'kg',
  category: 'Vermelhas',
  description: 'Pitanga deliciosa e nutritiva, ótima para sucos e sobremesas. Uma explosão de sabor em cada baga.',
);

ItemModel uva = ItemModel(
  itemName: 'Uva',
  imgUrl: 'assets/fruits/uva.png',
  price: 7.0,
  unit: 'kg',
  category: 'Vermelhas',
  description: 'Uvas frescas e doces, perfeitas para lanches e saladas. Cheias de antioxidantes, são uma escolha saudável.',
);

// frutas exóticas
ItemModel mangaba = ItemModel(
  itemName: 'Mangaba',
  imgUrl: 'assets/fruits/mangaba.png',
  price: 9.0,
  unit: 'kg',
  category: 'Exóticas',
  description: 'A mangaba é uma fruta regional exótica e cheia de sabor. Ideal para quem busca novas experiências gastronômicas saudáveis.',
);

ItemModel pinha = ItemModel(
  itemName: 'Pinha',
  imgUrl: 'assets/fruits/pinha.png',
  price: 9.0,
  unit: 'un',
  category: 'Exóticas',
  description: 'Pinha, também conhecida como fruta-do-conde, é uma delícia exótica. Doce e nutritiva, é uma escolha saudável e saborosa.',
);

// frutas clássicas
ItemModel goiaba = ItemModel(
  itemName: 'Goiaba',
  imgUrl: 'assets/fruits/goiaba.png',
  price: 6.5,
  unit: 'kg',
  category: 'Clássicas',
  description: 'Goiaba fresca e saborosa, perfeita para sucos e sobremesas. Rica em vitamina C, é uma fruta essencial para a saúde.',
);

List<ItemModel> items = [
  abacaxi,
  caja,
  caju,
  cupuacu,
  graviola,
  manga,
  maracuja,
  tangerina,
  acerola,
  morango,
  pitanga,
  uva,
  mangaba,
  pinha,
  goiaba,
];
