class SpoonacularData {
  late List<Recipe> _recipes;

  List<Recipe> get recipes => _recipes;

  SpoonacularData.fromJson(Map<String, dynamic> json) {
    if (json['recipes'] != null) {
      _recipes = <Recipe>[];
      json['recipes'].forEach((v) {
        _recipes.add(Recipe.fromJson(v));
      });
    }
  }
}

class Recipe {
  bool? _vegetarian;
  bool? _vegan;
  bool? _glutenFree;
  bool? _dairyFree;
  bool? _veryHealthy;
  bool? _cheap;
  bool? _veryPopular;
  bool? _sustainable;
  bool? _lowFodmap;
  int? _weightWatcherSmartPoints;
  String? _gaps;
  int? _preparationMinutes;
  int? _cookingMinutes;
  int? _aggregateLikes;
  int? _healthScore;
  String? _creditsText;
  String? _license;
  String? _sourceName;
  double? _pricePerServing;
  List<ExtendedIngredients>? _extendedIngredients;
  int? _id;
  String? _title;
  int? _readyInMinutes;
  int? _servings;
  String? _sourceUrl;
  String? _image;
  String? _imageType;
  String? _summary;
  List<Null>? _cuisines;
  List<Null>? _dishTypes;
  List<String>? _diets;
  List<String>? _occasions;
  String? _instructions;
  List<AnalyzedInstructions>? _analyzedInstructions;
  Null _originalId;
  double? _spoonacularScore;
  String? _spoonacularSourceUrl;

  Recipe(
      {bool? vegetarian,
      bool? vegan,
      bool? glutenFree,
      bool? dairyFree,
      bool? veryHealthy,
      bool? cheap,
      bool? veryPopular,
      bool? sustainable,
      bool? lowFodmap,
      int? weightWatcherSmartPoints,
      String? gaps,
      int? preparationMinutes,
      int? cookingMinutes,
      int? aggregateLikes,
      int? healthScore,
      String? creditsText,
      String? license,
      String? sourceName,
      double? pricePerServing,
      List<ExtendedIngredients>? extendedIngredients,
      int? id,
      String? title,
      int? readyInMinutes,
      int? servings,
      String? sourceUrl,
      String? image,
      String? imageType,
      String? summary,
      List<Null>? cuisines,
      List<Null>? dishTypes,
      List<String>? diets,
      List<String>? occasions,
      String? instructions,
      List<AnalyzedInstructions>? analyzedInstructions,
      Null originalId,
      double? spoonacularScore,
      String? spoonacularSourceUrl}) {
    if (vegetarian != null) {
      _vegetarian = vegetarian;
    }
    if (vegan != null) {
      _vegan = vegan;
    }
    if (glutenFree != null) {
      _glutenFree = glutenFree;
    }
    if (dairyFree != null) {
      _dairyFree = dairyFree;
    }
    if (veryHealthy != null) {
      _veryHealthy = veryHealthy;
    }
    if (cheap != null) {
      _cheap = cheap;
    }
    if (veryPopular != null) {
      _veryPopular = veryPopular;
    }
    if (sustainable != null) {
      _sustainable = sustainable;
    }
    if (lowFodmap != null) {
      _lowFodmap = lowFodmap;
    }
    if (weightWatcherSmartPoints != null) {
      _weightWatcherSmartPoints = weightWatcherSmartPoints;
    }
    if (gaps != null) {
      _gaps = gaps;
    }
    if (preparationMinutes != null) {
      _preparationMinutes = preparationMinutes;
    }
    if (cookingMinutes != null) {
      _cookingMinutes = cookingMinutes;
    }
    if (aggregateLikes != null) {
      _aggregateLikes = aggregateLikes;
    }
    if (healthScore != null) {
      _healthScore = healthScore;
    }
    if (creditsText != null) {
      _creditsText = creditsText;
    }
    if (license != null) {
      _license = license;
    }
    if (sourceName != null) {
      _sourceName = sourceName;
    }
    if (pricePerServing != null) {
      _pricePerServing = pricePerServing;
    }
    if (extendedIngredients != null) {
      _extendedIngredients = extendedIngredients;
    }
    if (id != null) {
      _id = id;
    }
    if (title != null) {
      _title = title;
    }
    if (readyInMinutes != null) {
      _readyInMinutes = readyInMinutes;
    }
    if (servings != null) {
      _servings = servings;
    }
    if (sourceUrl != null) {
      _sourceUrl = sourceUrl;
    }
    if (image != null) {
      _image = image;
    }
    if (imageType != null) {
      _imageType = imageType;
    }
    if (summary != null) {
      _summary = summary;
    }
    if (cuisines != null) {
      _cuisines = cuisines;
    }
    if (dishTypes != null) {
      _dishTypes = dishTypes;
    }
    if (diets != null) {
      _diets = diets;
    }
    if (occasions != null) {
      _occasions = occasions;
    }
    if (instructions != null) {
      _instructions = instructions;
    }
    if (analyzedInstructions != null) {
      _analyzedInstructions = analyzedInstructions;
    }
    if (spoonacularScore != null) {
      _spoonacularScore = spoonacularScore;
    }
    if (spoonacularSourceUrl != null) {
      _spoonacularSourceUrl = spoonacularSourceUrl;
    }
  }

  bool? get vegetarian => _vegetarian;
  bool? get vegan => _vegan;
  bool? get glutenFree => _glutenFree;
  bool? get dairyFree => _dairyFree;
  bool? get veryHealthy => _veryHealthy;
  bool? get cheap => _cheap;
  bool? get veryPopular => _veryPopular;
  bool? get sustainable => _sustainable;
  bool? get lowFodmap => _lowFodmap;
  int? get weightWatcherSmartPoints => _weightWatcherSmartPoints;

  String? get gaps => _gaps;
  int? get preparationMinutes => _preparationMinutes;

  int? get cookingMinutes => _cookingMinutes;
  int? get aggregateLikes => _aggregateLikes;
  int? get healthScore => _healthScore;
  String? get creditsText => _creditsText;
  String? get license => _license;
  String? get sourceName => _sourceName;
  double? get pricePerServing => _pricePerServing;

  List<ExtendedIngredients>? get extendedIngredients => _extendedIngredients;
  int? get id => _id;
  String? get title => _title;
  int? get readyInMinutes => _readyInMinutes;
  int? get servings => _servings;
  String? get sourceUrl => _sourceUrl;
  String? get image => _image;
  String? get imageType => _imageType;
  String? get summary => _summary;
  List<Null>? get cuisines => _cuisines;
  List<Null>? get dishTypes => _dishTypes;
  List<String>? get diets => _diets;
  List<String>? get occasions => _occasions;
  String? get instructions => _instructions;
  List<AnalyzedInstructions>? get analyzedInstructions => _analyzedInstructions;

  Null get originalId => _originalId;
  double? get spoonacularScore => _spoonacularScore;
  String? get spoonacularSourceUrl => _spoonacularSourceUrl;

  Recipe.fromJson(Map<String, dynamic> json) {
    _vegetarian = json['vegetarian'];
    _vegan = json['vegan'];
    _glutenFree = json['glutenFree'];
    _dairyFree = json['dairyFree'];
    _veryHealthy = json['veryHealthy'];
    _cheap = json['cheap'];
    _veryPopular = json['veryPopular'];
    _sustainable = json['sustainable'];
    _lowFodmap = json['lowFodmap'];
    _weightWatcherSmartPoints = json['weightWatcherSmartPoints'];
    _gaps = json['gaps'];
    _preparationMinutes = json['preparationMinutes'];
    _cookingMinutes = json['cookingMinutes'];
    _aggregateLikes = json['aggregateLikes'];
    _healthScore = json['healthScore'];
    _creditsText = json['creditsText'];
    _license = json['license'];
    _sourceName = json['sourceName'];
    _pricePerServing = json['pricePerServing'];
    if (json['extendedIngredients'] != null) {
      _extendedIngredients = <ExtendedIngredients>[];
      json['extendedIngredients'].forEach((v) {
        _extendedIngredients!.add(ExtendedIngredients.fromJson(v));
      });
    }
    _id = json['id'];
    _title = json['title'];
    _readyInMinutes = json['readyInMinutes'];
    _servings = json['servings'];
    _sourceUrl = json['sourceUrl'];
    _image = json['image'];
    _imageType = json['imageType'];
    _summary = json['summary'];
    _diets = json['diets'].cast<String>();
    _occasions = json['occasions'].cast<String>();
    _instructions = json['instructions'];
    if (json['analyzedInstructions'] != null) {
      _analyzedInstructions = <AnalyzedInstructions>[];
      json['analyzedInstructions'].forEach((v) {
        _analyzedInstructions!.add(AnalyzedInstructions.fromJson(v));
      });
    }
    _originalId = json['originalId'];
    _spoonacularScore = json['spoonacularScore'];
    _spoonacularSourceUrl = json['spoonacularSourceUrl'];
  }
}

class ExtendedIngredients {
  int? _id;
  String? _aisle;
  String? _image;
  String? _consistency;
  String? _name;
  String? _nameClean;
  String? _original;
  String? _originalName;
  double? _amount;
  String? _unit;
  List<String>? _meta;
  Measures? _measures;

  ExtendedIngredients(
      {int? id,
      String? aisle,
      String? image,
      String? consistency,
      String? name,
      String? nameClean,
      String? original,
      String? originalName,
      double? amount,
      String? unit,
      List<String>? meta,
      Measures? measures}) {
    if (id != null) {
      _id = id;
    }
    if (aisle != null) {
      _aisle = aisle;
    }
    if (image != null) {
      _image = image;
    }
    if (consistency != null) {
      _consistency = consistency;
    }
    if (name != null) {
      _name = name;
    }
    if (nameClean != null) {
      _nameClean = nameClean;
    }
    if (original != null) {
      _original = original;
    }
    if (originalName != null) {
      _originalName = originalName;
    }
    if (amount != null) {
      _amount = amount;
    }
    if (unit != null) {
      _unit = unit;
    }
    if (meta != null) {
      _meta = meta;
    }
    if (measures != null) {
      _measures = measures;
    }
  }

  int? get id => _id;
  String? get aisle => _aisle;
  String? get image => _image;
  String? get consistency => _consistency;
  String? get name => _name;
  String? get nameClean => _nameClean;
  String? get original => _original;
  String? get originalName => _originalName;
  double? get amount => _amount;
  String? get unit => _unit;
  List<String>? get meta => _meta;
  Measures? get measures => _measures;

  ExtendedIngredients.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _aisle = json['aisle'];
    _image = json['image'];
    _consistency = json['consistency'];
    _name = json['name'];
    _nameClean = json['nameClean'];
    _original = json['original'];
    _originalName = json['originalName'];
    _amount = json['amount'];
    _unit = json['unit'];
    _meta = json['meta'].cast<String>();
    _measures =
        json['measures'] != null ? Measures.fromJson(json['measures']) : null;
  }
}

class Measures {
  Us? _us;
  Us? _metric;

  Measures({Us? us, Us? metric}) {
    if (us != null) {
      _us = us;
    }
    if (metric != null) {
      _metric = metric;
    }
  }

  Us? get us => _us;
  Us? get metric => _metric;

  Measures.fromJson(Map<String, dynamic> json) {
    _us = json['us'] != null ? Us.fromJson(json['us']) : null;
    _metric = json['metric'] != null ? Us.fromJson(json['metric']) : null;
  }
}

class Us {
  double? _amount;
  String? _unitShort;
  String? _unitLong;

  Us({double? amount, String? unitShort, String? unitLong}) {
    if (amount != null) {
      _amount = amount;
    }
    if (unitShort != null) {
      _unitShort = unitShort;
    }
    if (unitLong != null) {
      _unitLong = unitLong;
    }
  }

  double? get amount => _amount;
  String? get unitShort => _unitShort;
  String? get unitLong => _unitLong;

  Us.fromJson(Map<String, dynamic> json) {
    _amount = json['amount'];
    _unitShort = json['unitShort'];
    _unitLong = json['unitLong'];
  }
}

class AnalyzedInstructions {
  String? _name;
  List<Steps>? _steps;

  AnalyzedInstructions({String? name, List<Steps>? steps}) {
    if (name != null) {
      _name = name;
    }
    if (steps != null) {
      _steps = steps;
    }
  }

  String? get name => _name;
  List<Steps>? get steps => _steps;

  AnalyzedInstructions.fromJson(Map<String, dynamic> json) {
    _name = json['name'];
    if (json['steps'] != null) {
      _steps = <Steps>[];
      json['steps'].forEach((v) {
        _steps!.add(Steps.fromJson(v));
      });
    }
  }
}

class Steps {
  int? _number;
  String? _step;
  List<Ingredients>? _ingredients;

  Steps({
    int? number,
    String? step,
    List<Ingredients>? ingredients,
  }) {
    if (number != null) {
      _number = number;
    }
    if (step != null) {
      _step = step;
    }
    if (ingredients != null) {
      _ingredients = ingredients;
    }
  }

  int? get number => _number;
  String? get step => _step;
  List<Ingredients>? get ingredients => _ingredients;

  Steps.fromJson(Map<String, dynamic> json) {
    _number = json['number'];
    _step = json['step'];
    if (json['ingredients'] != null) {
      _ingredients = <Ingredients>[];
      json['ingredients'].forEach((v) {
        _ingredients!.add(Ingredients.fromJson(v));
      });
    }
  }
}

class Ingredients {
  int? _id;
  String? _name;
  String? _localizedName;
  String? _image;

  Ingredients({int? id, String? name, String? localizedName, String? image}) {
    if (id != null) {
      _id = id;
    }
    if (name != null) {
      _name = name;
    }
    if (localizedName != null) {
      _localizedName = localizedName;
    }
    if (image != null) {
      _image = image;
    }
  }

  int? get id => _id;
  String? get name => _name;
  String? get localizedName => _localizedName;
  String? get image => _image;

  Ingredients.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _name = json['name'];
    _localizedName = json['localizedName'];
    _image = json['image'];
  }
}
