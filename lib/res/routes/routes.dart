import 'package:client_manager/view/agreement/agreement_list_view.dart';
import 'package:client_manager/view/auth/pre_login_view.dart';
import 'package:client_manager/view/booking/booking_details_view/full_booking_details_view.dart';
import 'package:client_manager/view/booking/booking_form_view.dart';
import 'package:client_manager/view/booking/booking_form_view2.dart';
import 'package:client_manager/view/booking/booking_list_view.dart';
import 'package:client_manager/view/booking/calc_list_view.dart';
import 'package:client_manager/view/booking/edit/attach_documents_edit.dart';
import 'package:client_manager/view/booking/edit/client_info_edit.dart';
import 'package:client_manager/view/booking/edit/commitment_edit.dart';
import 'package:client_manager/view/booking/edit/decision_maker_edit.dart';
import 'package:client_manager/view/booking/edit/payee_edit.dart';
import 'package:client_manager/view/booking/edit/plot_details_edit.dart';
import 'package:client_manager/view/booking/edit/transaction_edit.dart';
import 'package:client_manager/view/booking/pay_now_view.dart';
import 'package:client_manager/view/booking/quick_booking_view.dart';
import 'package:client_manager/view/booking/tabs/commitment.dart';
import 'package:client_manager/view/dashboard_view.dart';
import 'package:client_manager/view/home/profile_view.dart';
import 'package:client_manager/view/splash_screen.dart';
import 'package:get/get.dart';
import 'package:client_manager/res/routes/routes_name.dart';
import 'package:client_manager/view/home/home_view.dart';
import 'package:client_manager/view/auth/login_view.dart';

class AppRoutes {

  static appRoutes() => [
    GetPage(
      name: RouteName.splashScreen,
      page: () => const SplashScreen() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ),
    GetPage(
      name: RouteName.loginView,
      page: () => const LoginView() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,
    GetPage(
      name: RouteName.preLoginView,
      page: () => const PreLoginView() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,
    GetPage(
      name: RouteName.homeView,
      page: () => const HomeView() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,

    GetPage(
      name: RouteName.dashboardView,
      page: () => const DashboardView() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,
    GetPage(
      name: RouteName.profileView,
      page: () => const ProfileView() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,


    GetPage(
      name: RouteName.bookingListView,
      page: () => const BookingListView() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,
    GetPage(
      name: RouteName.bookingForm1,
      page: () => const BookingFormView1() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,
    GetPage(
      name: RouteName.bookingForm2,
      page: () => const BookingFormView2() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,
    GetPage(
      name: RouteName.bookingDetails,
      page: () => const FullBookingDetailsView() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,
    GetPage(
      name: RouteName.clientInfoTab,
      page: () => const ClientInfoEdit() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,
    GetPage(
      name: RouteName.decisionMaker,
      page: () => const DecisionMakerEdit() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,
    GetPage(
      name: RouteName.payee,
      page: () => const PayeeEdit() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,
    GetPage(
      name: RouteName.transaction,
      page: () => const TransactionEdit() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,
    GetPage(
      name: RouteName.plotDetails,
      page: () => const PlotDetailsEdit() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,
    GetPage(
      name: RouteName.attachDocuments,
      page: () => const AttachDocumentsEdit() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,
    GetPage(
      name: RouteName.commitment,
      page: () => const AddCommitment() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,
    GetPage(
      name: RouteName.commitmentEdit,
      page: () => const CommitmentEdit() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,
    GetPage(
      name: RouteName.costListView,
      page: () => const CostListView() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,
    GetPage(
      name: RouteName.quickBookingView,
      page: () => const QuickBookingView() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,
    GetPage(
      name: RouteName.payNowView,
      page: () => const PayNowView() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,
    GetPage(
      name: RouteName.agreementListView,
      page: () => const AgreementListView() ,
      transitionDuration: const Duration(milliseconds: 250),
      transition: Transition.leftToRightWithFade ,
    ) ,
  ];

}