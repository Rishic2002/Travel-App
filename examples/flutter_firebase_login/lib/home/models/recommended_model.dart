class RecommendedModel {
  String name;
  String tagLine;
  String image;
  List<String>? images;
  String description;
  int price;

  RecommendedModel(this.name, this.tagLine, this.image, this.images,
      this.description, this.price);
}

List<RecommendedModel> recommendations = recommendationsData
    .map((item) => RecommendedModel(
        item['name'] as String,
        item['tagLine'] as String,
        item['image'] as String,
        item['images'] as List<String>?,
        item['description'] as String,
        item['price'] as int))
    .toList();

var recommendationsData = [
  {
    "name": "Delhi,India",
    "tagLine": "Where the Past Meets the Present",
    "image":
        "https://images.pexels.com/photos/1007427/pexels-photo-1007427.jpeg?auto=compress&cs=tinysrgb&w=800",
    "images": [
      "https://images.unsplash.com/photo-1598977054780-2dc700fdc9d3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZGVsaGl8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1624858020896-4a558c5d7042?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8ZGVsaGl8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1623070861283-17d2c364fc03?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fGRlbGhpfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1594455615933-c19828af39b8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGRlbGhpfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60",
      "https://images.unsplash.com/photo-1585160113536-a14b15e40174?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NTR8fGRlbGhpfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60"
    ],
    "description":
        "Delhi is the Capital of India ",
    "price": 100
  },
  {
    "name": "Goa,India",
    "tagLine": " The Heaven Beach",
    "image":
        "https://images.unsplash.com/photo-1587922546307-776227941871?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8Z29hfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
    "images": [
      "https://images.unsplash.com/photo-1619648507952-597d09df659e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzB8fGdvYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60",
      "https://images.unsplash.com/photo-1558960214-f4283a743867?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGdvYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60",
      "https://images.unsplash.com/photo-1618743100648-fcd9867f2fb3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=927&q=80",
      "https://images.unsplash.com/photo-1594221163477-e99074d5fc45?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OTl8fGdvYXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60",
      "https://images.unsplash.com/photo-1605014627913-bd40a41741d9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTU3fHxnb2F8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60",
    ],
    "description":
        "Goa, a tiny emerald land on the west coast of India",
    "price": 120
  },
  {
    "name": "Mumbai,Maharashtra,India",
    "tagLine": "The City That Never Sleeps",
    "image":
        "https://images.unsplash.com/photo-1598434192043-71111c1b3f41?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fG11bWJhaXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
    "images": [
      "https://images.unsplash.com/photo-1570168007204-dfb528c6958f?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fG11bWJhaXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=800&q=60",
      "https://plus.unsplash.com/premium_photo-1674898513939-10e6334cac31?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTl8fG11bWJhaXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60",
      "https://images.unsplash.com/photo-1552133457-ce1d2d33cdfb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8bXVtYmFpJTIwc2t5bGluZXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60",
      "https://images.unsplash.com/photo-1557846920-5efd5c916286?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fG11bWJhaSUyMHNreWxpbmV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60",
      "https://images.unsplash.com/photo-1582217900003-2b19c0e3a7d0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzV8fG11bWJhaSUyMHNreWxpbmV8ZW58MHx8MHx8&auto=format&fit=crop&w=900&q=60"
    ],
    "description":
        "Mumbai is the financial capital of India and is known for vibrant film industry of Bollywood.",
    "price": 130
  },
  {
    "name": "Bangalore",
    "tagLine": "The Silicon Valley of India",
    "image":
        "https://images.unsplash.com/photo-1596176530529-78163a4f7af2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8YmFuZ2Fsb3JlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=900&q=60",
    "images": [
      "https://images.unsplash.com/photo-1539576776193-2c07122e5fee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1051&q=80",
      "https://images.unsplash.com/photo-1588598198321-9735fd52455b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1050&q=80",
      "https://images.unsplash.com/photo-1612862862126-865765df2ded?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=967&q=80",
      "https://images.unsplash.com/photo-1610110167776-b8d05197fae1?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=717&q=80",
      "https://images.unsplash.com/photo-1580877854178-95067799acfb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=675&q=80"
    ],
    "description":
        " Bangalore is a rapidly growing city in southern India and is known as the Silicon Valley of India due to its strong presence in the tech industry. The city is also famous for its pleasant weather, gardens, and parks.",
    "price": 110
  },
  {
    "name": "Hyderabad",
    "tagLine": "City of Pearls",
    "image":
        "https://images.unsplash.com/photo-1623682242746-285312daf926?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGh5ZGVyYWJhZHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60",
    "images": [
      "https://images.unsplash.com/photo-1568843240915-b512cc9b4415?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=675&q=80",
      "https://images.unsplash.com/photo-1569670380856-5f541c74121d?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
      "https://images.unsplash.com/photo-1522310570852-0b661319089c?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=700&q=80",
      "https://images.unsplash.com/photo-1527248709254-0f1a6b5d297a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80",
      "https://images.unsplash.com/photo-1525420745478-9e5791918455?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80"
    ],
    "description":
        "Hyderabad is the capital of Telangana and is known for its rich history and cultural heritage. The city is famous for its biryani, pearls, and its historic landmarks such as the Charminar and the Golkonda Fort.",
    "price": 180
  },
  {
    "name": "Kolkata",
    "tagLine": "The Cultural Capital of India",
    "image":
        "https://images.unsplash.com/photo-1558431382-27e303142255?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8a29sa2F0YXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=900&q=60",
    "images": [
      "https://images.unsplash.com/photo-1573912863588-57d033d1b4bb?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=675&q=80",
      "https://images.unsplash.com/photo-1578517929167-db9ed31cd5c6?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80",
      "https://images.unsplash.com/photo-1586511426540-d28fdb7ff3f0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1071&q=80",
      "https://images.unsplash.com/photo-1586511623600-cb6f44f647d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80",
      "https://images.unsplash.com/photo-1586512313121-331d64d9024b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=634&q=80"
    ],
    "description":
        " Kolkata, previously known as Calcutta, is the cultural capital of India and is known for its rich literary, artistic, and political heritage. The city is famous for its colonial architecture, Durga Puja festival, and its famous street food.",
    "price": 200
  },
];
