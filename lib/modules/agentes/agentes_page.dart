import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:parallax_image/parallax_image.dart';
import 'package:valorant_brasil/modules/agentes/agentes_controller.dart';
import 'package:valorant_brasil/theme/text_theme.dart';

class AgentesPage extends GetView<AgentesController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        child: ListView(
          children: [
            Container(
              width: Get.width,
              child: new ParallaxImage(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 16),
                  child: Text(
                    'CYPHER',
                    style: listAgents,
                  ),
                ),
                extent: 100.0,
                image: new ExactAssetImage(
                  'assets/images/bg.jpg',
                ),
              ),
            ),
            Container(
              child: new ParallaxImage(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 16),
                  child: Text(
                    'RAZE',
                    style: listAgents,
                  ),
                ),
                extent: 100.0,
                image: new ExactAssetImage(
                  'assets/images/bg.jpg',
                ),
              ),
            ),
            Container(
              child: new ParallaxImage(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 16),
                  child: Text(
                    'SAGE',
                    style: listAgents,
                  ),
                ),
                extent: 100.0,
                image: new ExactAssetImage(
                  'assets/images/bg.jpg',
                ),
              ),
            ),
            Container(
              child: new ParallaxImage(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 16),
                  child: Text(
                    'VIPER',
                    style: listAgents,
                  ),
                ),
                extent: 100.0,
                image: new ExactAssetImage(
                  'assets/images/bg.jpg',
                ),
              ),
            ),
            Container(
              child: new ParallaxImage(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 16),
                  child: Text(
                    'REYNA',
                    style: listAgents,
                  ),
                ),
                extent: 100.0,
                image: new ExactAssetImage(
                  'assets/images/bg.jpg',
                ),
              ),
            ),
            Container(
              child: new ParallaxImage(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 16),
                  child: Text(
                    'KILLJOY',
                    style: listAgents,
                  ),
                ),
                extent: 100.0,
                image: new ExactAssetImage(
                  'assets/images/bg.jpg',
                ),
              ),
            ),
            Container(
              child: new ParallaxImage(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 16),
                  child: Text(
                    'JETT',
                    style: listAgents,
                  ),
                ),
                extent: 100.0,
                image: new ExactAssetImage(
                  'assets/images/bg.jpg',
                ),
              ),
            ),
            Container(
              child: new ParallaxImage(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 16),
                  child: Text(
                    'OMEN',
                    style: listAgents,
                  ),
                ),
                extent: 100.0,
                image: new ExactAssetImage(
                  'assets/images/bg.jpg',
                ),
              ),
            ),
            Container(
              child: new ParallaxImage(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 16),
                  child: Text(
                    'SOVA',
                    style: listAgents,
                  ),
                ),
                extent: 100.0,
                image: new ExactAssetImage(
                  'assets/images/bg.jpg',
                ),
              ),
            ),
            Container(
              child: new ParallaxImage(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 16),
                  child: Text(
                    'BRIMSTONE',
                    style: listAgents,
                  ),
                ),
                extent: 100.0,
                image: new ExactAssetImage(
                  'assets/images/bg.jpg',
                ),
              ),
            ),
            Container(
              child: new ParallaxImage(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 16),
                  child: Text(
                    'PHOENIX',
                    style: listAgents,
                  ),
                ),
                extent: 100.0,
                image: new ExactAssetImage(
                  'assets/images/bg.jpg',
                ),
              ),
            ),
            Container(
              child: new ParallaxImage(
                child: Padding(
                  padding: const EdgeInsets.only(top: 16.0, left: 16),
                  child: Text(
                    'BREACH',
                    style: listAgents,
                  ),
                ),
                extent: 100.0,
                image: new ExactAssetImage(
                  'assets/images/bg.jpg',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
