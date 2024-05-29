import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_for_yay_portal/core/app_router.dart';
import 'package:task_for_yay_portal/features/form/presentation/cubit/submit_button_cubit.dart';
import 'package:task_for_yay_portal/features/form/presentation/cubit/submit_button_states.dart';
import 'package:task_for_yay_portal/features/profile/presentation/screens/profile_page.dart';
import '../../../../core/localization/localization.dart';

class SubmitButton extends StatelessWidget {
  SubmitButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SubmitButtonCubit, SubmitButtonStates>(

      listener: (context, state){
        /// In Success, navigate to the next page
        if (state is SuccessState) {
          // Navigate to the next page when SuccessState is triggered
          AppRouter.navigateTo(context, ProfilePage());
        }
      },

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          /// Submit Button
          ElevatedButton(
              onPressed: (){
                context.read<SubmitButtonCubit>().submit();
              },
              child: BlocBuilder<SubmitButtonCubit, SubmitButtonStates>(
                builder: (context, state) {

                  //Loading
                  if(state is LoadingState){
                    return const Center(child: CircularProgressIndicator());
                  }

                  //Idle: Submit
                  return Text(LocalTxt().submitButton);
                }
              )
          ),

          /// Error Message Text Status
          errorMessage(),

        ],
      ),
    );
  }

  Widget errorMessage(){
    return BlocBuilder<SubmitButtonCubit, SubmitButtonStates>(
        builder: (context, state) {

          // Error
          if(state is ErrorState){
            return const Text("Permission not granted!!", style: TextStyle(color: Colors.red),);
          }

          return const SizedBox.shrink();
        }
    );
  }
}
