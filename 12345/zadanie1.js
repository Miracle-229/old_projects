function bodyBild() {
  class Body {
    constructor(body) {
      this.body = body;
    }
  }
  class BodyBuilder {
    constructor() {
      this.setBody = function (body) {
        this.body = body;
        return this;
      };

      this.build = function () {
        return new Body(this.body);
      };
    }
  }
  const BodyDoll = new BodyBuilder().setBody("Male").build();
  return BodyDoll;
}

function bodyBildMale() {
  class BodyMale {
    constructor(bodyMale) {
      this.bodyMale = bodyMale;
    }
  }
  class BodyMaleBuilder {
    constructor() {
      this.setBodyMale = function (bodyMale) {
        this.bodyMale = bodyMale;
        return this;
      };

      this.build = function () {
        return new BodyMale(this.bodyMale);
      };
    }
  }
  const BodyMaleDoll = new BodyMaleBuilder().setBodyMale("Male").build();
  return BodyMaleDoll;
}

function bodyBildFamale() {
  class BodyFamale {
    constructor(bodyFamale) {
      this.bodyFamale = bodyFamale;
    }
  }
  class BodyFamaleBuilder {
    constructor() {
      this.setBodyFamale = function (bodyFamale) {
        this.bodyFamale = bodyFamale;
        return this;
      };

      this.build = function () {
        return new BodyFamale(this.bodyFamale);
      };
    }
  }
  const BodyFamaleDoll = new BodyFamaleBuilder().setBodyFamale("Famale").build();
  return BodyFamaleDoll;
}

function suitBild(name) {
  class Suit {
    constructor(suit) {
      this.suit = suit;
    }
  }
  class SuitBuilder {
    constructor() {
      this.setSuit = function (suit) {
        this.suit = suit;
        return this;
      };
      this.build = function () {
        return new Suit(this.suit);
      };
    }
  }
  const SuitDoll = new SuitBuilder().setSuit(name).build();
  return SuitDoll;
}


function hairBild(hair) {
  class Hair {
    constructor(hair) {
      this.hair = hair;
    }
  }
  class HairBuilder {
    constructor() {
      this.setHair = function (hair) {
        this.hair = hair;
        return this;
      };
      this.build = function () {
        return new Hair(this.hair);
      };
    }
  }
  const HairDoll = new HairBuilder().setHair(hair).build();
  return HairDoll;
}


function shoesBild(shoes) {
  class Shoes {
    constructor(shoes) {
      this.shoes = shoes;
    }
  }
  class ShoesBuilder {
    constructor() {
      this.setShoes = function (shoes) {
        this.shoes = shoes;
        return this;
      };
      this.build = function () {
        return new Shoes(this.shoes);
      };
    }
  }
  const ShoesDoll = new ShoesBuilder().setShoes(shoes).build();
  return ShoesDoll;
}
const Doll = {
  name: "",
  body: {},
  hair: {},
  suit: {},
  shoes:{}
};

function dollBildAny(name,body, hair, suit,shoes) {
  Doll.name=name
  Doll.body =bodyBild()
  Doll.hair = hairBild(hair);
  Doll.suit = suitBild(suit);
  Doll.shoes=shoesBild(shoes);
  console.log(Doll);
}

function dollBildMale(name, hair, suit,shoes) {
  Doll.name=name
  Doll.body =bodyBildMale();
  Doll.hair = hairBild(hair);
  Doll.suit = suitBild(suit);
  Doll.shoes=shoesBild(shoes);
  console.log(Doll);
}

function dollBildFamale(name, hair, suit,shoes) {
  Doll.name=name
  Doll.body =bodyBildFamale();
  Doll.hair = hairBild(hair);
  Doll.suit = suitBild(suit);
  Doll.shoes=shoesBild(shoes);
  console.log(Doll);
}
dollBildFamale("Алиса", "Длинные Рыжие", "платье","туфельки")
// dollBildAny("Алиса", "Male","Длинные Рыжие", "платье","туфельки")
// dollBildMale("Алиса", "Длинные Рыжие", "платье","туфельки");
