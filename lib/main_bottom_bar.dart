import 'package:flutter/material.dart';
import 'Slider.dart';

class MainBottomBar extends StatelessWidget {
  final _state;
  final _drawer;

  MainBottomBar({state, drawer})
      : _state = state,
        _drawer = drawer;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
        child: Column(children: [
          Row(
            children: [
              Sliders(
                state: _state,
                colorCode: "red",
                color: _state.red,
              ),
              Center(
                child: Visibility(
                  visible: _drawer,
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      _state.red = 255.0;
                      _state.green = 0.0;
                      _state.blue = 0.0;
                    },
                    label: Text(_state.red.round().toString()),
                    shape: CircleBorder(),
                    backgroundColor: Colors.red,
                  ),
                ),
              ),
              Visibility(
                visible: !_drawer,
                child: Text(_state.red.round().toString()),
              )
            ],
          ),
          Row(
            children: [
              Sliders(
                state: _state,
                colorCode: "green",
                color: _state.green,
              ),
              Center(
                child: Visibility(
                  visible: _drawer,
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      _state.red = 0.0;
                      _state.green = 255.0;
                      _state.blue = 0.0;
                    },
                    label: Text(_state.green.round().toString()),
                    shape: CircleBorder(),
                    backgroundColor: Colors.green,
                  ),
                ),
              ),
              Visibility(
                visible: !_drawer,
                child: Text(_state.green.round().toString()),
              )
            ],
          ),
          Row(
            children: [
              Sliders(
                state: _state,
                colorCode: "blue",
                color: _state.blue,
              ),
              Center(
                child: Visibility(
                  visible: _drawer,
                  child: FloatingActionButton.extended(
                    onPressed: () {
                      _state.red = 0.0;
                      _state.green = 0.0;
                      _state.blue = 255.0;
                    },
                    label: Text(_state.blue.round().toString()),
                    shape: CircleBorder(),
                    backgroundColor: Colors.blue,
                  ),
                ),
              ),
              Visibility(
                visible: !_drawer,
                child: Text(_state.blue.round().toString()),
              )
            ],
          )
        ]),
      ),
    );
  }
}
