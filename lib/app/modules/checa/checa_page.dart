import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:i18n_extension/i18n_widget.dart';

import 'package:geradocs/app/modules/checa/checa_controller.dart';

class ChecaPage extends StatefulWidget {
  const ChecaPage({Key? key}) : super(key: key);

  @override
  _ChecaPageState createState() => _ChecaPageState();
}

class _ChecaPageState extends ModularState<ChecaPage, ChecaController> {

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
                    margin:
                        EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0),
                    padding:
                        EdgeInsets.only(top: 30.0, left: 20.0, right: 20.0),
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
                          height: 120.0,
                          child: Column(
                            children: [
                              Text(
                                'Digite um documento',
                                style: TextStyle(
                                  fontSize: 25.0,
                                ),
                              ),
                              Text(
                                'Conseguimos validar: Códigos EAN, RGs emitidos '
                                'em SP, CNPJs, CPFs, Títulos de Eleitor e '
                                'IMEIs.\nEm breve outros documentos...',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 13.0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        TextField(
                          maxLength: 15,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          onChanged: controller.onChangeDoc,
                          enableSuggestions: false,
                          autocorrect: false,
                          style: TextStyle(
                              fontSize: 30.0,
                              color: Color(0xff000000),
                          ),
                          decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 20.0),
                            filled: true,
                            fillColor: Color(0xffe9f0f7),
                            hintStyle:
                                TextStyle(color: Color(0xff000000),),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                '${controller.textResponse}',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20.0),
                              ),
                              Text(
                                '${controller.documentResponse}',
                                textAlign: TextAlign.center,
                                style: TextStyle(fontSize: 20.0),
                              ),
                            ],
                          ),
                        ),
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
                        "ChecaDoc...",
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

  /// -----------------------------------------------------------------------///
  /// The framework calls this method when this State object will never build
  /// again. This stage of the lifecycle is terminal: there is no way to remount
  /// a State object that has been disposed.
  @override
  void dispose() {
    super.dispose();
  }
}
