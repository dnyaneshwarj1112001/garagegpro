import 'package:garagegpro/app/routes/app_routes_path.dart';
import 'package:garagegpro/app/routes/main_shell.dart';
import 'package:garagegpro/app/routes/routes_names.dart' hide AppRoutepath;
import 'package:garagegpro/features/auth/presentation/pages/loginPage.dart';
import 'package:garagegpro/features/billing/presentation/pages/billing_page.dart';
import 'package:garagegpro/features/customer/presentation/pages/customer_screen.dart';

import 'package:garagegpro/features/dashboard/presentation/pages/dashboard_page.dart';
import 'package:garagegpro/features/splash/presentation/pages/splash_screen.dart';
import 'package:garagegpro/features/vehichicles/presentation/pages/vehicles_screen.dart';

import 'package:go_router/go_router.dart';

class AppRouter {
  static final GoRouter router = GoRouter(
    initialLocation: AppRoutepath.splash,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: AppRoutepath.splash,
        name: AppRoutepath.splash,
        builder: (context, state) => SplashScreen(),
      ),

      GoRoute(
        path: AppRoutepath.login,
        builder: (context, state) => LoginPage(),
        name: AppRoutepath.login,
      ),

      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return MainShell(navigationShell: navigationShell);
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutepath.dashboard,
                name: RouteNames.dashboard,
                builder: (context, state) => DashbordScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutepath.customers,
                builder: (context, state) => CustomerScreen(),
                name: RouteNames.customers,
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutepath.vehicles,
                name: RouteNames.vehicles,
                builder: (context, state) => VehiclesScreen(),
              ),
            ],
          ),

          StatefulShellBranch(
            routes: [
              GoRoute(
                path: AppRoutepath.billing,
                name: RouteNames.billing,
                builder: (context, state) => BillingPage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
