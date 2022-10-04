import '../models/post.dart';
import '../models/story.dart';
import '../models/user.dart';
import '../models/reel.dart';

User currentUser = User('id', 'James',
    'https://cdn.lorem.space/images/face/.cache/500x0/jack-finnigan-rriAI0nhcbc-unsplash.jpg');

final List<User> users = [
  User('id1', 'Bruce',
      'https://cdn.lorem.space/images/face/.cache/150x150/meysam-jarahkar-l4gz33evF9k-unsplash.jpg'),
  User('id2', 'Ashley',
      'https://cdn.lorem.space/images/face/.cache/500x0/behrouz-sasani-khMxnuosSV4-unsplash.jpg'),
  User('id3', 'Becky',
      'https://cdn.lorem.space/images/face/.cache/500x0/mateus-campos-felipe-uLDwvGvWrs0-unsplash.jpg'),
  User('id4', 'Jimmy',
      'https://cdn.lorem.space/images/face/.cache/150x150/pexels-mikhail-nilov-7679178.jpg'),
  User('id5', 'Heather',
      'https://cdn.lorem.space/images/face/.cache/150x150/ehsan-ahmadi-vsWy6nchcOs-unsplash.jpg'),
];
final List<Story> stories = [
  Story('id', users[0]),
  Story('id', users[1]),
  Story('id', users[2]),
  Story('id', users[3]),
  Story('id', users[4]),
];

final List<Post> posts = [
  Post(
      'id',
      users[0],
      'https://picsum.photos/id/1044/400/400',
      'title',
      'Rainforest, MY',
      'a few seconds ago',
      'Amazing view :)',
      '123',
      '34',
      true,
      false),
  Post(
      'id1',
      users[1],
      'https://picsum.photos/id/1024/400/400',
      'title2',
      'Black Rock, USA',
      '2 minutes ago',
      'Flappy Bird',
      '1123',
      '342',
      true,
      false),
  Post('id2', users[2], 'https://picsum.photos/id/124/400/400', 'title3',
      'Maldives, MV', '2 hours ago', 'Peace', '423', '74', true, true),
  Post('id3', users[3], 'https://picsum.photos/id/524/400/400', 'title4',
      'New York, USA', '4 hours ago', 'I was late', '323', '36', false, false),
  Post('id4', users[4], 'https://picsum.photos/id/57/400/400', 'title5',
      'London, ENG', '8 hours ago', 'I am Lost', '1123', '324', false, true),
];

final List<Reel> reels = [
  Reel(
    'id1',
    users[2],
    'https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Tour_Eiffel_Wikimedia_Commons_%28cropped%29.jpg/360px-Tour_Eiffel_Wikimedia_Commons_%28cropped%29.jpg',
    'Locally nicknamed "La dame de fer" (French for "Iron Lady"), it was constructed from 1887 to 1889 as the centerpiece of the 1889 World\'s Fair. Although initially criticised by some of France\'s leading artists and intellectuals for its design, it has since become a global cultural icon of France and one of the most recognisable structures in the world.The Eiffel Tower is the most visited monument with an entrance fee in the world; 6.91 million people ascended it in 2015. It was designated a monument historique in 1964, and was named part of a UNESCO World Heritage Site ("Paris, Banks of the Seine") in 1991.',
    'Eiffel Tower',
    '5.2k',
    '20',
    false,
    true,
    users[4],
    'Stay (Dont Go Away) [feat. Raye] - David Guetta',
  ),
  Reel(
    'id2',
    users[1],
    'https://cdn.theculturetrip.com/wp-content/uploads/2017/04/arc-de-triomphe-july-14th-2011--bnjphoto-wikimedia-commons-e1491514049187.jpg',
    'The Arc de Triomphe is located on the right bank of the Seine at the centre of a dodecagonal configuration of twelve radiating avenues. It was commissioned in 1806, after the victory at Austerlitz by Emperor Napoleon at the peak of his fortunes. Laying the foundations alone took two years and, in 1810, when Napoleon entered Paris from the west with his new bride, Archduchess Marie-Louise of Austria, he had a wooden mock-up of the completed arch constructed. The architect, Jean Chalgrin, died in 1811 and the work was taken over by Jean-Nicolas Huyot.',
    'Arc de Triomphe',
    '25.2k',
    '207',
    true,
    false,
    users[2],
    'Gods Plan - Drake',
  ),
  Reel(
      'id3',
      users[4],
      'https://imgs-akamai.mnstatic.com/7b/ec/7bec58b9701bb9b85ceda7532ebc417e.jpg',
      'Several movies have been filmed on the bridge, including some scenes in the 1969 James Bond film On Her Majesty\'s Secret Service when James Bond is in a car driving across a bridge with Marc Ange Draco\'s henchmen, and it is also featured near the end of the movie when Bond marries Tracy and drives across the bridge with her in Bond\'s Aston Martin. Normally, pedestrians cannot walk across the bridge, but every year there is a half-marathon that starts on the south bank and finishes in the north bank (Belem).',
      '25 de Abril Bridge',
      '125.2k',
      '2107',
      false,
      true,
      users[3],
      'Just Give Me a Reason (feat. Nate Ruess) - P!nk'),
  Reel(
      'id4',
      users[0],
      'https://wallpapercave.com/wp/wp8601240.jpg',
      'The Estádio da Luz, officially named Estádio do Sport Lisboa e Benfica, is a multi-purpose stadium located in Lisbon, Portugal. It is used mostly for association football matches, hosting the home games of Portuguese club S.L. Benfica, its owner.Opened on 25 October 2003 with an exhibition match between Benfica and Uruguayan club Nacional, it replaced the original Estádio da Luz, which had 120,000 seats. The seating capacity was decreased to 65,647 and is currently set at 64,642.',
      'Estádio da Luz',
      '500k',
      '5107',
      true,
      false,
      users[1],
      'Thats What I Like - Bruno Mars'),
];
