import 'package:flutter/material.dart';

// class LightEffectContainer extends StatefulWidget {
//   final Widget child;
//   const LightEffectContainer({required this.child});

//   @override
//   _LightEffectContainerState createState() => _LightEffectContainerState();
// }

// class _LightEffectContainerState extends State<LightEffectContainer> {
//   Offset _mousePosition = Offset.zero;

//   @override
//   Widget build(BuildContext context) {
//     return MouseRegion(
//       onHover: (event) {
//         setState(() {
//           _mousePosition = event.localPosition;
//           print(
//               'Mouse Position: $_mousePosition'); // Debugging: Print cursor position
//         });
//       },
//       child: Container(
//         width: double.infinity, // Ensure it covers the whole width
//         height: double.infinity, // Ensure it covers the whole height
//         decoration: BoxDecoration(
//           gradient: RadialGradient(
//             center: Alignment(
//               2 * (_mousePosition.dx / MediaQuery.of(context).size.width) - 1,
//               2 * (_mousePosition.dy / MediaQuery.of(context).size.height) - 1,
//             ),
//             radius: 0.6,
//             colors: [
//               Colors.red,
//               Colors.blue,
//               Colors.green,
//             ],
//             stops: [0.0, 0.5, 1.0],
//           ),
//         ),
//         child: widget.child,
//       ),
//     );
//   }
// }

class LightEffectContainer extends StatefulWidget {
  final Widget child;
  const LightEffectContainer({required this.child});

  @override
  _LightEffectContainerState createState() => _LightEffectContainerState();
}

class _LightEffectContainerState extends State<LightEffectContainer> {
  Offset _mousePosition = Offset.zero;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          _mousePosition = event.localPosition;
        });
      },
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: Alignment(
                    2 *
                            (_mousePosition.dx /
                                MediaQuery.of(context).size.width) -
                        1,
                    2 *
                            (_mousePosition.dy /
                                MediaQuery.of(context).size.height) -
                        1,
                  ),
                  radius: 0.2,
                  colors: [
                    Colors.white,
                    Colors.grey.shade200,
                    Colors.grey.shade400,
                  ],
                  stops: [0.0, 0.5, 1.0],
                ),
              ),
            ),
          ),
          widget.child, // Your page content
        ],
      ),
    );
  }
}
