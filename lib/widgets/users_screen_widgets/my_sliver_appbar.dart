import 'package:flutter/material.dart';

import 'dart:math' as math;

class MySliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SliverAppBar(
      expandedHeight: 80,
      toolbarHeight: 20,
      collapsedHeight: 20,
      floating: false,
      pinned: true,
      snap: false,
      flexibleSpace: MyFlexibleSpaceBar(),
      backgroundColor: Colors.white,
    );
  }
}

class MyFlexibleSpaceBar extends StatelessWidget {
  const MyFlexibleSpaceBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, c) {
        final settings = context
            .dependOnInheritedWidgetOfExactType<FlexibleSpaceBarSettings>();
        final deltaExtent = settings!.maxExtent - settings.minExtent;
        final t =
            (1.0 - (settings.currentExtent - settings.minExtent) / deltaExtent)
                .clamp(0.0, 1.0);
        final fadeStart = math.max(0.0, 1.0 - kToolbarHeight / deltaExtent);
        const fadeEnd = 1.0;
        final opacity = 1.0 - Interval(fadeStart, fadeEnd).transform(t);

        return Stack(
          children: [
            Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Opacity(
                  opacity: 1 - opacity,
                  child: Container(
                    padding: const EdgeInsets.only(top: 31, bottom: 11),
                    child: const Text(
                      "Пользователи",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            )),
            Opacity(
              opacity: opacity,
              child: Column(
                // alignment: Alignment.bottomCenter,
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // getImage(),
                  Container(
                    padding: const EdgeInsets.only(left: 16, bottom: 24),
                    child: const Text(
                      "Пользователи",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 28,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
