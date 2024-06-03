import 'package:fruittrace/src/models/cart_item_model.dart';
import 'package:fruittrace/src/models/item_model.dart';
import 'package:fruittrace/src/models/order_model.dart';
import 'package:fruittrace/src/models/user_model.dart';

// frutas clássicas
ItemModel abacaxi = ItemModel(
  itemName: 'Abacaxi',
  imgUrl: 'assets/fruits/abacaxi.png',
  price: 7.5,
  unit: 'un',
  category: 'Clássicas',
  description: 'Desfrute do sabor doce e refrescante do nosso abacaxi! Perfeito para sucos e sobremesas, é a escolha ideal para uma vida saudável e cheia de vitaminas.',
);

ItemModel caju = ItemModel(
  itemName: 'Caju',
  imgUrl: 'assets/fruits/caju.png',
  price: 7.0,
  unit: 'un',
  category: 'Clássicas',
  description: 'Experimente o sabor único e tropical do caju! Cheio de nutrientes e perfeito para refrescar seus dias.',
);

ItemModel goiaba = ItemModel(
  itemName: 'Goiaba',
  imgUrl: 'assets/fruits/goiaba.png',
  price: 6.5,
  unit: 'kg',
  category: 'Clássicas',
  description: 'Goiaba fresca e saborosa, perfeita para sucos e sobremesas. Rica em vitamina C, é uma fruta essencial para a saúde.',
);

ItemModel manga = ItemModel(
  itemName: 'Manga',
  imgUrl: 'assets/fruits/manga.png',
  price: 2.5,
  unit: 'un',
  category: 'Clássicas',
  description: 'Suculenta e doce, nossa manga é perfeita para um lanche rápido ou um smoothie revitalizante. Rica em vitaminas, é uma delícia que faz bem para a saúde.',
);

// frutas cítricas
ItemModel acerola = ItemModel(
  itemName: 'Acerola',
  imgUrl: 'assets/fruits/acerola.png',
  price: 7.0,
  unit: 'kg',
  category: 'Cítricas',
  description: 'A acerola é uma potência de vitamina C. Perfeita para sucos e uma vida saudável e cheia de energia.',
);

ItemModel caja = ItemModel(
  itemName: 'Caja',
  imgUrl: 'assets/fruits/caja.png',
  price: 6.0,
  unit: 'kg',
  category: 'Cítricas',
  description: 'Caja fresca e saborosa, perfeita para sucos e sobremesas. Rico em vitamina C, é uma fruta essencial para a vida saudável.',
);

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
ItemModel cupuacu = ItemModel(
  itemName: 'Cupuaçu',
  imgUrl: 'assets/fruits/cupuacu.png',
  price: 14.0,
  unit: 'kg',
  category: 'Exóticas',
  description: 'Descubra o exótico cupuaçu, perfeito para sucos e sobremesas cheias de sabor. Rico em nutrientes, é uma explosão de saúde.',
);

ItemModel graviola = ItemModel(
  itemName: 'Graviola',
  imgUrl: 'assets/fruits/graviola.png',
  price: 8.0,
  unit: 'un',
  category: 'Exóticas',
  description: 'A graviola é conhecida por seu sabor inconfundível e propriedades nutritivas. Ideal para sucos e sobremesas saudáveis.',
);
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

// frutas Misturas
ItemModel abacaxiComHortela = ItemModel(
  itemName: 'Abacaxi com Hortelã',
  imgUrl: 'assets/mixes/abacaxi_com_hortela.png',
  price: 7.5,
  unit: 'un',
  category: 'Misturas',
  description: 'A combinação refrescante de abacaxi com hortelã é perfeita para sucos e sobremesas. Experimente essa delícia tropical que é pura saúde e sabor!',
);

ItemModel guarabom = ItemModel(
  itemName: 'Guarabom',
  imgUrl: 'assets/mixes/guarabom.png',
  price: 12.0,
  unit: 'un',
  category: 'Misturas',
  description: 'Guarabom é ideal para fazer aquela bebida energética deliciosa feita com guaraná. Ideal para dar aquele impulso extra no seu dia, com sabor irresistível!',
);

ItemModel guaracai = ItemModel(
  itemName: 'Guaraçai',
  imgUrl: 'assets/mixes/guaracai.png',
  price: 12.0,
  unit: 'un',
  category: 'Misturas',
  description: 'Descubra o poder do Guaraçai, uma mistura de guaraná com açaí que oferece energia e sabor únicos. Perfeita para quem busca vitalidade com um toque tropical.',
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
  abacaxiComHortela,
  guarabom,
  guaracai,
];

List<String> categories = [
  'Cítricas',
  'Vermelhas',
  'Exóticas',
  'Clássicas',
  'Misturas',
];

List<CartItemModel> cartItems = [
  CartItemModel(item: maracuja, quantity: 2),
  CartItemModel(item: morango, quantity: 1),
  CartItemModel(item: abacaxi, quantity: 1),
  CartItemModel(item: manga, quantity: 3),
];

UserModel user = UserModel(
  name: 'José Maria',
  email: 'JM@email.com',
  phone: '(81) 9 9999-9999',
  cpf: '999.999.999-99',
  password: '123456',
);

List<OrderModel> orders = [
  // Pedido 01
  OrderModel(
    copyAndPaste: 'q1w2e3r4t5y6',
    createdDateTime: DateTime.parse(
      '2024-06-08 10:00:10.458',
    ),
    overdueDateTime: DateTime.parse(
      '2024-06-08 11:00:10.458',
    ),
    id: 'asd6a54da6s2d1',
    status: 'pending_payment',
    total: 23.0,
    items: [
      CartItemModel(
        item: manga,
        quantity: 2,
      ),
      CartItemModel(
        item: pitanga,
        quantity: 2,
      ),
    ],
  ),

  // Pedido 02
  OrderModel(
    copyAndPaste: 'q1w2e3r4t5y6',
    createdDateTime: DateTime.parse(
      '2024-05-08 10:00:10.458',
    ),
    overdueDateTime: DateTime.parse(
      '2024-05-08 11:00:10.458',
    ),
    id: 'a65s4d6a2s1d6a5s',
    status: 'delivered',
    total: 6.5,
    items: [
      CartItemModel(
        item: goiaba,
        quantity: 1,
      ),
    ],
  ),
];