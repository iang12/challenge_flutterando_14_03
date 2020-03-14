class BookPageView {
  String url;
  String title;
  String subtitle;
  String price;
  String note;
  String totalAvaliable;

  BookPageView(
      {this.url,
      this.title,
      this.subtitle,
      this.price,
      this.note,
      this.totalAvaliable});
}

List<BookPageView> books = [
  BookPageView(
      url: 'assets/images/01.jpg',
      title: 'the Jungle Book',
      subtitle: 'Rudyard kipling',
      price: '19.99 \$',
      note: '4.8',
      totalAvaliable: '(2390)'),
  BookPageView(
      url: 'assets/images/02.jpg',
      title: 'King Kong',
      subtitle: 'Rudyard kipling',
      price: '19.99 \$',
      note: '4.9',
      totalAvaliable: '(2190)'),
  BookPageView(
      url: 'assets/images/03.jpeg',
      title: 'the Jungle Book',
      subtitle: 'Rudyard kipling',
      price: '19.99 \$',
      note: '2.5',
      totalAvaliable: '(1500)'),
  BookPageView(
      url: 'assets/images/04.jpg',
      title: 'the Jungle Book',
      subtitle: 'Rudyard kipling',
      price: '19.99 \$',
      note: '4.5',
      totalAvaliable: '(2390)'),
  BookPageView(
      url: 'assets/images/05.jpeg',
      title: 'the Jungle Book',
      subtitle: 'Rudyard kipling',
      price: '19.99 \$',
      note: '4.8',
      totalAvaliable: '(4032)'),
  BookPageView(
      url: 'assets/images/06.jpg',
      title: 'the Jungle Book',
      subtitle: 'Rudyard kipling',
      price: '19.99 \$',
      note: '4.1',
      totalAvaliable: '(1892)'),
];
