import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:i18n_extension/i18n_widget.dart';
import 'package:geradocs/app/modules/gera/gera_controller.dart';

class GeraPage extends StatefulWidget {
  const GeraPage({Key? key}) : super(key: key);

  @override
  _GeraPageState createState() => _GeraPageState();
}

class _GeraPageState extends ModularState<GeraPage, GeraController> {
  /// -----------------------------------------------------------------------///
  /// initState:
  /// A method called once when the stateful widget is inserted in the widget
  /// tree, used to initialize data, properties and any other object that
  /// could change the data on this widget.
  @override
  void initState() {
    super.initState();
  }

  /// -----------------------------------------------------------------------///
  /// Widget build - Main Login Page Content
  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Scaffold(
          backgroundColor: Color(0xffFFC300),
          body: I18n(
            child: Column(
              children: [
                SafeArea(
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 10.0,
                    ),
                    height: 80,
                    width: double.infinity,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BackButton(
                          onPressed: () {
                            Modular.to.navigate('/home');
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                      bottom: 10.0,
                    ),
                    padding: EdgeInsets.only(
                      left: 10.0,
                      right: 10.0,
                    ),
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          30.0,
                        ),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.all(5.0),
                          height: 220.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Gerar:",
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                    style: textButtonStyle(
                                      controller.imei
                                          ? Color(0xff645844)
                                          : Color(0x80848383),
                                    ),
                                    onPressed: () {
                                      controller.imei = !controller.imei;
                                      controller.calculateBinary(
                                          controller.imei, 1);
                                    },
                                    child: Text('IMEI'),
                                  ),
                                  TextButton(
                                    style: textButtonStyle(
                                      controller.ean
                                          ? Color(0xff645844)
                                          : Color(0x80848383),
                                    ),
                                    onPressed: () {
                                      controller.ean = !controller.ean;
                                      controller.calculateBinary(
                                        controller.ean,
                                        2,
                                      );
                                    },
                                    child: Text('EAN'),
                                  ),
                                  TextButton(
                                    style: textButtonStyle(
                                      controller.cnpj
                                          ? Color(0xff645844)
                                          : Color(0x80848383),
                                    ),
                                    onPressed: () {
                                      controller.cnpj = !controller.cnpj;
                                      controller.calculateBinary(
                                        controller.cnpj,
                                        4,
                                      );
                                    },
                                    child: Text('CNPJ'),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  TextButton(
                                    style: textButtonStyle(
                                      controller.cpf
                                          ? Color(0xff645844)
                                          : Color(0x80848383),
                                    ),
                                    onPressed: () {
                                      controller.cpf = !controller.cpf;
                                      controller.calculateBinary(
                                        controller.cpf,
                                        8,
                                      );
                                    },
                                    child: Text('CPF'),
                                  ),
                                  TextButton(
                                    style: textButtonStyle(
                                      controller.rg
                                          ? Color(0xff645844)
                                          : Color(0x80848383),
                                    ),
                                    onPressed: () {
                                      controller.rg = !controller.rg;
                                      controller.calculateBinary(
                                        controller.rg,
                                        16,
                                      );
                                    },
                                    child: Text('RG'),
                                  ),
                                  TextButton(
                                    style: textButtonStyle(
                                      controller.tit
                                          ? Color(0xff645844)
                                          : Color(0x80848383),
                                    ),
                                    onPressed: () {
                                      controller.tit = !controller.tit;
                                      controller.calculateBinary(
                                        controller.tit,
                                        32,
                                      );
                                    },
                                    child: Text('Título El.'),
                                  )
                                ],
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  "Quantidade:",
                                ),
                              ),
                              SliderTheme(
                                data: SliderTheme.of(context).copyWith(
                                  activeTrackColor: Color(0xff645844),
                                  inactiveTrackColor: Color(0xffe9f0f7),
                                  trackShape: RoundedRectSliderTrackShape(),
                                  trackHeight: 5.0,
                                  thumbColor: Color(0xff645844),
                                  thumbShape: RoundSliderThumbShape(
                                    enabledThumbRadius: 10.0,
                                  ),
                                  overlayColor: Color(0xffe9f0f7),
                                  overlayShape: RoundSliderOverlayShape(
                                    overlayRadius: 5.0,
                                  ),
                                ),
                                child: Slider(
                                  value: controller.quant,
                                  min: 1,
                                  max: 100,
                                  divisions: 100,
                                  label: controller.quant.round().toString(),
                                  onChanged: (double value) {
                                    setState(
                                      () {
                                        controller.quant = value;
                                      },
                                    );
                                  },
                                ),
                              ),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    fixedSize: Size(167, 48),
                                    textStyle: TextStyle(fontSize: 25.0),
                                    primary: Color(controller.showButton
                                        ? 0xff645844
                                        : 0xffe9f0f7),
                                    elevation: 5),
                                onPressed: () {
                                  controller.showButton
                                      ? controller.generatePressed()
                                      : null;
                                },
                                child: Text('Gerar'),
                              ),
                            ],
                          ),
                        ),
                        Expanded(flex: 1, child: Text("ok"))
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 10.0,
                  ),
                  height: 80,
                  width: double.infinity,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "GeraDoc...",
                        style: TextStyle(
                          color: Color(0xff645844),
                          fontSize: 40.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  textButtonStyle(Color color) {
    return TextButton.styleFrom(
      textStyle: TextStyle(fontSize: 10.0),
      primary: Color(0xffffffff),
      backgroundColor: color,
    );
  }

  /// -----------------------------------------------------------------------///
  /// The framework calls this method when this State object will never build
  /// again. This stage of the lifecycle is terminal: there is no way to remount
  /// a State object that has been disposed.
  @override
  void dispose() {
    super.dispose();
  }
}
