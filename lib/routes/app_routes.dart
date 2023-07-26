import 'package:manish_s_application2/presentation/feedback_collection_screen/feedback_collection_screen.dart';
import 'package:manish_s_application2/presentation/feedback_collection_screen/binding/feedback_collection_binding.dart';
import 'package:manish_s_application2/presentation/blog_importing_screen/blog_importing_screen.dart';
import 'package:manish_s_application2/presentation/blog_importing_screen/binding/blog_importing_binding.dart';
import 'package:manish_s_application2/presentation/blog_posts_management_screen/blog_posts_management_screen.dart';
import 'package:manish_s_application2/presentation/blog_posts_management_screen/binding/blog_posts_management_binding.dart';
import 'package:manish_s_application2/presentation/reviews_screen/reviews_screen.dart';
import 'package:manish_s_application2/presentation/reviews_screen/binding/reviews_binding.dart';
import 'package:manish_s_application2/presentation/content_management_screen/content_management_screen.dart';
import 'package:manish_s_application2/presentation/content_management_screen/binding/content_management_binding.dart';
import 'package:manish_s_application2/presentation/custom_form_screen/custom_form_screen.dart';
import 'package:manish_s_application2/presentation/custom_form_screen/binding/custom_form_binding.dart';
import 'package:manish_s_application2/presentation/document_opener_screen/document_opener_screen.dart';
import 'package:manish_s_application2/presentation/document_opener_screen/binding/document_opener_binding.dart';
import 'package:manish_s_application2/presentation/documents_screen/documents_screen.dart';
import 'package:manish_s_application2/presentation/documents_screen/binding/documents_binding.dart';
import 'package:manish_s_application2/presentation/dynamic_content_screen/dynamic_content_screen.dart';
import 'package:manish_s_application2/presentation/dynamic_content_screen/binding/dynamic_content_binding.dart';
import 'package:manish_s_application2/presentation/edit_profile_screen/edit_profile_screen.dart';
import 'package:manish_s_application2/presentation/edit_profile_screen/binding/edit_profile_binding.dart';
import 'package:manish_s_application2/presentation/manage_blog_comments_screen/manage_blog_comments_screen.dart';
import 'package:manish_s_application2/presentation/manage_blog_comments_screen/binding/manage_blog_comments_binding.dart';
import 'package:manish_s_application2/presentation/security_policy_screen/security_policy_screen.dart';
import 'package:manish_s_application2/presentation/security_policy_screen/binding/security_policy_binding.dart';
import 'package:manish_s_application2/presentation/notes_screen/notes_screen.dart';
import 'package:manish_s_application2/presentation/notes_screen/binding/notes_binding.dart';
import 'package:manish_s_application2/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:manish_s_application2/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:manish_s_application2/presentation/pagination_screen/pagination_screen.dart';
import 'package:manish_s_application2/presentation/pagination_screen/binding/pagination_binding.dart';
import 'package:manish_s_application2/presentation/paid_content_screen/paid_content_screen.dart';
import 'package:manish_s_application2/presentation/paid_content_screen/binding/paid_content_binding.dart';
import 'package:manish_s_application2/presentation/search_screen/search_screen.dart';
import 'package:manish_s_application2/presentation/search_screen/binding/search_binding.dart';
import 'package:manish_s_application2/presentation/user_account_screen/user_account_screen.dart';
import 'package:manish_s_application2/presentation/user_account_screen/binding/user_account_binding.dart';
import 'package:manish_s_application2/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:manish_s_application2/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:manish_s_application2/presentation/save_as_pdf_screen/save_as_pdf_screen.dart';
import 'package:manish_s_application2/presentation/save_as_pdf_screen/binding/save_as_pdf_binding.dart';
import 'package:manish_s_application2/presentation/splash_screen/splash_screen.dart';
import 'package:manish_s_application2/presentation/splash_screen/binding/splash_binding.dart';
import 'package:manish_s_application2/presentation/terms_and_conditions_screen/terms_and_conditions_screen.dart';
import 'package:manish_s_application2/presentation/terms_and_conditions_screen/binding/terms_and_conditions_binding.dart';
import 'package:manish_s_application2/presentation/translation_screen/translation_screen.dart';
import 'package:manish_s_application2/presentation/translation_screen/binding/translation_binding.dart';
import 'package:manish_s_application2/presentation/two_factor_authentication_screen/two_factor_authentication_screen.dart';
import 'package:manish_s_application2/presentation/two_factor_authentication_screen/binding/two_factor_authentication_binding.dart';
import 'package:manish_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:manish_s_application2/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String feedbackCollectionScreen = '/feedback_collection_screen';

  static const String blogImportingScreen = '/blog_importing_screen';

  static const String blogPostsManagementScreen =
      '/blog_posts_management_screen';

  static const String reviewsScreen = '/reviews_screen';

  static const String contentManagementScreen = '/content_management_screen';

  static const String customFormScreen = '/custom_form_screen';

  static const String documentOpenerScreen = '/document_opener_screen';

  static const String documentsScreen = '/documents_screen';

  static const String dynamicContentScreen = '/dynamic_content_screen';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String manageBlogCommentsScreen = '/manage_blog_comments_screen';

  static const String securityPolicyScreen = '/security_policy_screen';

  static const String notesScreen = '/notes_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String paginationScreen = '/pagination_screen';

  static const String paidContentScreen = '/paid_content_screen';

  static const String searchScreen = '/search_screen';

  static const String userAccountScreen = '/user_account_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String saveAsPdfScreen = '/save_as_pdf_screen';

  static const String splashScreen = '/splash_screen';

  static const String termsAndConditionsScreen = '/terms_and_conditions_screen';

  static const String translationScreen = '/translation_screen';

  static const String twoFactorAuthenticationScreen =
      '/two_factor_authentication_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: feedbackCollectionScreen,
      page: () => FeedbackCollectionScreen(),
      bindings: [
        FeedbackCollectionBinding(),
      ],
    ),
    GetPage(
      name: blogImportingScreen,
      page: () => BlogImportingScreen(),
      bindings: [
        BlogImportingBinding(),
      ],
    ),
    GetPage(
      name: blogPostsManagementScreen,
      page: () => BlogPostsManagementScreen(),
      bindings: [
        BlogPostsManagementBinding(),
      ],
    ),
    GetPage(
      name: reviewsScreen,
      page: () => ReviewsScreen(),
      bindings: [
        ReviewsBinding(),
      ],
    ),
    GetPage(
      name: contentManagementScreen,
      page: () => ContentManagementScreen(),
      bindings: [
        ContentManagementBinding(),
      ],
    ),
    GetPage(
      name: customFormScreen,
      page: () => CustomFormScreen(),
      bindings: [
        CustomFormBinding(),
      ],
    ),
    GetPage(
      name: documentOpenerScreen,
      page: () => DocumentOpenerScreen(),
      bindings: [
        DocumentOpenerBinding(),
      ],
    ),
    GetPage(
      name: documentsScreen,
      page: () => DocumentsScreen(),
      bindings: [
        DocumentsBinding(),
      ],
    ),
    GetPage(
      name: dynamicContentScreen,
      page: () => DynamicContentScreen(),
      bindings: [
        DynamicContentBinding(),
      ],
    ),
    GetPage(
      name: editProfileScreen,
      page: () => EditProfileScreen(),
      bindings: [
        EditProfileBinding(),
      ],
    ),
    GetPage(
      name: manageBlogCommentsScreen,
      page: () => ManageBlogCommentsScreen(),
      bindings: [
        ManageBlogCommentsBinding(),
      ],
    ),
    GetPage(
      name: securityPolicyScreen,
      page: () => SecurityPolicyScreen(),
      bindings: [
        SecurityPolicyBinding(),
      ],
    ),
    GetPage(
      name: notesScreen,
      page: () => NotesScreen(),
      bindings: [
        NotesBinding(),
      ],
    ),
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: paginationScreen,
      page: () => PaginationScreen(),
      bindings: [
        PaginationBinding(),
      ],
    ),
    GetPage(
      name: paidContentScreen,
      page: () => PaidContentScreen(),
      bindings: [
        PaidContentBinding(),
      ],
    ),
    GetPage(
      name: searchScreen,
      page: () => SearchScreen(),
      bindings: [
        SearchBinding(),
      ],
    ),
    GetPage(
      name: userAccountScreen,
      page: () => UserAccountScreen(),
      bindings: [
        UserAccountBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: saveAsPdfScreen,
      page: () => SaveAsPdfScreen(),
      bindings: [
        SaveAsPdfBinding(),
      ],
    ),
    GetPage(
      name: splashScreen,
      page: () => SplashScreen(),
      bindings: [
        SplashBinding(),
      ],
    ),
    GetPage(
      name: termsAndConditionsScreen,
      page: () => TermsAndConditionsScreen(),
      bindings: [
        TermsAndConditionsBinding(),
      ],
    ),
    GetPage(
      name: translationScreen,
      page: () => TranslationScreen(),
      bindings: [
        TranslationBinding(),
      ],
    ),
    GetPage(
      name: twoFactorAuthenticationScreen,
      page: () => TwoFactorAuthenticationScreen(),
      bindings: [
        TwoFactorAuthenticationBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    )
  ];
}
