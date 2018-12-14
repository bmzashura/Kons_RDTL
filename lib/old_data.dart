class ListTeam {
  String name,
      position,
      mobile,
      email,
      photo,
      description =
          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum id neque libero. Donec finibus sem viverra, luctus nisi ac, semper enim. Vestibulum in mi feugiat, mattis erat suscipit, fermentum quam. Mauris non urna sed odio congue rhoncus. \nAliquam a dignissim ex. Suspendisse et sem porta, consequat dui et, placerat tortor. Sed elementum nunc a blandit euismod. Cras condimentum faucibus dolor. Etiam interdum egestas sagittis. Aliquam vitae molestie eros. Cras porta felis ac eros pellentesque, sed lobortis mi eleifend. Praesent ut.';

  
  ListTeam(
      this.name, this.position, this.photo, this.mobile, this.email );
}

final List<ListTeam>lTeam = [
  ListTeam('Member1','Senior Developer', 'img/member1.jpg', '670 7324001', 'aneh'),
  ListTeam('Member2','Senior Developer', 'img/member2.jpg', '670 7324002', 'member2@example.com'),
  ListTeam('Member3','Senior Developer', 'img/member3.jpg', '670 7324003', 'member3@example.com'),
  ListTeam('Member4','Senior Developer', 'img/member4.jpg', '670 7324004', 'member4@example.com'),
  ListTeam('Member5','Senior Developer', 'img/member5.jpg', '670 7324005', 'member5@example.com'),
  ListTeam('Member6','Senior Developer', 'img/member6.jpg', '670 7324006', 'koko'),
];