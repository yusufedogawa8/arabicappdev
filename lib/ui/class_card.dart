// part of 'uis.dart';

// class ClassCard extends StatelessWidget {
//   final String title;
//   final String img;
//   final Function button;

//   const ClassCard({
//     Key key,
//     this.img,
//     this.title,
//     this.button,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(20),
//       child: Container(
//         decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(30),
//           boxShadow: [
//             BoxShadow(
//               color: Colors.grey.withOpacity(0.3),
//               spreadRadius: -23,
//               blurRadius: 9,
//               offset: Offset(0, 3),
//             ),
//           ],
//         ),
//         child: Material(
//           color: Colors.transparent,
//           child: InkWell(
//             onTap: button,
//             child: Padding(
//               padding: const EdgeInsets.all(20.0),
//               child: Column(
//                 children: [
//                   Spacer(),
//                   Image.asset(
//                     img,
//                     height: 80,
//                   ),
//                   Spacer(),
//                   Text(
//                     title,
//                     textAlign: TextAlign.center,
//                     style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
