import 'package:Weather/widgets/defaultContainer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeRoute extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {
    return DefaultContainer(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 6.0),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Weather",
                  style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
                ),
                Material(
                    color: Colors.transparent,
                    child: IconButton(
                        highlightColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        onPressed: () {},
                        icon: const Icon(
                          CupertinoIcons.add,
                          color: Colors.white,
                        ))),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 15.4),
            ),
            Expanded(
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: [
                  CupertinoSliverRefreshControl(
                    onRefresh: () async {},
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate([
                      Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 6.0,
                          horizontal: 12.0,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12.0),
                          image: DecorationImage(
                            image: AssetImage('assets/sunny.png'),
                            fit: BoxFit.cover,
                            opacity: 54.0
                          ),
                          
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Suseong-gu",
                                    style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 16.0,
                                    )),
                                Text(
                                  "27 °C",
                                  style: const TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 28.0,
                                  ),
                                ), // this is bigger
                              ],
                            ),
                            Icon(
                              CupertinoIcons.sun_max_fill,
                              color: Colors.white,
                              size: 29.0,
                            ), // todo: add bg image (container(box decoration))
                          ],
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
