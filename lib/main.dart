import 'package:triller_zone/controller/movie_provider.dart';
import 'package:triller_zone/firebase_options.dart';

import 'utils/utils.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<MovieProvider>(create: (_) => MovieProvider()),
      ],
      child: const MaterialApp(
        home: PopularMoviesScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
