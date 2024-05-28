import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_for_yay_portal/features/form/presentation/cubit/submit_button_cubit.dart';
import 'package:task_for_yay_portal/features/form/presentation/screens/form_page.dart';
import 'core/bloc_observer.dart';
import 'injection.dart' as inject;

Future<void> main() async {

  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();

  //initialization
  await inject.init();

  //Bloc Observer
  Bloc.observer = MyBlocObserver();

  runApp(EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('ar')],
      path: 'assets/locals',
      fallbackLocale: const Locale('en'),
      child: const MyApp()
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: ((context) => SubmitButtonCubit()),),
      ],

      child: MaterialApp(
        title: 'Task Yay Portal',
        debugShowCheckedModeBanner: false,

        //Localization
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,

        //Theme
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),

        //Handle Color Theme Change
        home: FormPage(),
      ),
    );
  }
}
