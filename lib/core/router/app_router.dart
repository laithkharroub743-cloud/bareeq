import 'package:bareeq/features/auth/presentation/login_screen.dart';
import 'package:bareeq/features/auth/presentation/signup_screen.dart';
import 'package:bareeq/features/cart/presentation/cart_screen.dart';
import 'package:bareeq/features/catalog/presenstation/product_details_screen.dart';
import 'package:bareeq/features/orders/presentation/checkout_screen.dart';
import 'package:bareeq/features/shell/presentation/main_shell_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static const login = '/login';
  static const register = '/register';
  static const cart = '/cart';
  static const checkoutScreen = '/CheckoutScreen';
  static const mainShellScreen = '/';
  static const productDetailsScreen = '/product/:id';
  static final appRouter = GoRouter(
    initialLocation: '/login',
    routes: [
      GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
      GoRoute(
        path: '/register',
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(path: '/cart', builder: (context, state) => const CartScreen()),
      GoRoute(
        path: '/product/:id',
        builder: (context, state) {
          return ProductDetailsScreen(
            productId: int.tryParse(state.pathParameters['id']!) ?? -1,
          );
        },
      ),
      GoRoute(
        path: '/CheckoutScreen',
        builder: (context, state) => const CheckoutScreen(),
      ),
      GoRoute(path: '/', builder: (context, state) => const MainShellScreen()),
    ],
  );
}
