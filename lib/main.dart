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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => GetMoviesBloc()),
      ],
      child: const MaterialApp(
        home: PopularMoviesScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
