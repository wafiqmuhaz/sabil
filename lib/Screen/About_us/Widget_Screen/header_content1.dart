// import 'dart:html';
import 'package:url_launcher/url_launcher.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:caris/Style/Style.dart';

class HeaderContent1T2 extends StatelessWidget {
  const HeaderContent1T2({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1600) {
          return  DesktopHeaderContent1T2();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1600) {
          return  DesktopHeaderContent1T2();
        } else {
          return  MobileHeaderContent1T2();
        }
      },
    );
  }
}

_launchURL() async {
  final url = Uri.encodeFull('https://wafiqmuhaz.netlify.app');
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}


// class DesktopHeaderContent1T2 extends StatelessWidget {
//   const DesktopHeaderContent1T2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Container(
//         width: 1000, // fixed width for desktop
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             const Center(
//               child: Text(
//                 'SURAT KEPUTUSAN\nYAYASAN SABILIURRIDHO AR RUHANIDAH',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//             ),
//             const SizedBox(height: 20),
//             const Center(
//               child: Text(
//                 'Nomor : 007/SK/YRSR/VII/2024\nTentang\nPengangkatan Pengurus Yayasan Sabiliurridho Ar Ruhanidah',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(fontSize: 18),
//               ),
//             ),
//             const SizedBox(height: 20),
//             const Text(
//               'MENIMBANG:',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             _buildDesktopContent1(),
//             // Add more sections like MENGINGAT and MEMUTUSKAN as needed
//             const Text(
//               'MENGINGAT:',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             _buildDesktopContent2(),
//             const Text(
//               'MEMUTUSKAN:',
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             _buildDesktopContent3(),
//             SizedBox(
//               height: 12,
//             ),
//             const Text(
//               'DEWAN PENGURUS:',
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
//             ),
//             // _buildFooter()
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildDesktopContent1() {
//     return const Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'a. Surat Keputusan Yayasan Sabilurridho Ar Ruhandiah Nomor : 005/SK/YSRAR/VII/2024 tentang adanya keinginan luhur membantu pemerintah dalam pemberdayaan social',
//           style: TextStyle(fontSize: 16),
//         ),
//         SizedBox(height: 10),
//         Text(
//           'b. Dalam usaha meningkatkan pembinaan dan pengembangan Yayasan Sabilurridho Ar Ruhandiah dipandang perlu membentuk Susunan Kepengurusan.',
//           style: TextStyle(fontSize: 16),
//         ),
//         Text(
//           'c. Dengan pertimbangan tersebut di atas, dipanjang perlu menetapkan Keputusan ini.',
//           style: TextStyle(fontSize: 16),
//         ),
//         // Continue with other content sections similarly
//       ],
//     );
//   }

//   Widget _buildDesktopContent2() {
//     return const Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           '1. UU Negara Kesatuan Republik Indonesia No. 16 Tahun 2001 tentang Yayasan',
//           style: TextStyle(fontSize: 16),
//         ),
//         SizedBox(height: 10),
//         Text(
//           '2. UU Negara Kesatuan Republik Indonesia No. 17 Tahun 2013 tentang Organisasi Kemasyarakatan',
//           style: TextStyle(fontSize: 16),
//         ),
//         Text(
//           '3. UU Negara Kesatuan Republik Indonesia No. 11 Tahun 2009 tentang Kesejahteraan Sosia',
//           style: TextStyle(fontSize: 16),
//         ),
//         // Continue with other content sections similarly
//       ],
//     );
//   }

//   Widget _buildDesktopContent3() {
//     return const Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'Susunan Kepengurusan Yayasan Sabilurridho Ar Ruhandiah Masa Bhakti 2024 s.d. 2029, sebagai berikut',
//           style: TextStyle(fontSize: 16),
//         ),
//         SizedBox(height: 10),

//         // Continue with other content sections similarly
//       ],
//     );
//   }

//   Widget _buildFooter() {
//     return const Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         SizedBox(height: 20),
//         Text(
//           'Ditetapkan di: Cangkuang-Bandung\nPada tanggal: 7 Juli 2024\nKetua Pembina',
//           style: TextStyle(fontSize: 16),
//         ),
//         SizedBox(height: 8),
//         Text(
//           'Yendi Sofyan, S.Pd.I',
//           style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//         ),
//       ],
//     );
//   }
// }

// class MobileHeaderContent1T2 extends StatelessWidget {
//   const MobileHeaderContent1T2({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Center(
//             child: Text(
//               'SURAT KEPUTUSAN\nYAYASAN SABILIURRIDHO AR RUHANIDAH',
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//             ),
//           ),
//           const SizedBox(height: 16),
//           const Center(
//             child: Text(
//               'Nomor : 007/SK/YRSR/VII/2024\nTentang\nPengangkatan Pengurus Yayasan Sabiliurridho Ar Ruhanidah',
//               textAlign: TextAlign.center,
//               style: TextStyle(fontSize: 16),
//             ),
//           ),
//           const SizedBox(height: 16),
//           const Text(
//             'MENIMBANG:',
//             style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//           ),
//           _buildMobileContent(),
//           _buildFooter(),
//         ],
//       ),
//     );
//   }

//   Widget _buildMobileContent() {
//     return const Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           'a. Surat Keputusan Yayasan Sabiliurridho Ar Ruhanidah Nomor: 005/SK/YSRAR/VII/2024 tentang adanya keinginan luhur...',
//           style: TextStyle(fontSize: 14),
//         ),
//         SizedBox(height: 8),
//         Text(
//           'b. Dalam usaha meningkatkan pemberdayaan umat...',
//           style: TextStyle(fontSize: 14),
//         ),
//         // Continue with other content sections similarly
//       ],
//     );
//   }

//   Widget _buildFooter() {
//     return const Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         SizedBox(height: 20),
//         Text(
//           'Ditetapkan di: Cangkuang-Bandung\nPada tanggal: 7 Juli 2024\nKetua Pembina',
//           style: TextStyle(fontSize: 14),
//         ),
//         SizedBox(height: 8),
//         Text(
//           'Yendi Sofyan, S.Pd.I',
//           style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
//         ),
//       ],
//     );
//   }
// }

// Desktop layout
class DesktopHeaderContent1T2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'SURAT KEPUTUSAN\nYAYASAN SABILIURRIDHO AR RUHANIADH',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 16),
          // MENIMBANG section
          const Text('MENIMBANG:'),
          const Text('a. Surat Keputusan Yayasan Sabilurridho Ar Ruhandiah Nomor : 005/SK/YSRAR/VII/2024 tentang adanya keinginan luhur membantu pemerintah dalam pemberdayaan social'),
          const Text('b. dalam usaha meningkatkan pembinaan dan pengembangan Yayasan Sabilurridho Ar Ruhandiah dipandang perlu membentuk Susunan Kepengurusan.'),
          const Text('c. dengan pertimbangan tersebut di atas, dipanjang perlu menetapkan Keputusan ini.'),
          const SizedBox(height: 8),
          // MENGINGAT section
          const Text('MENGINGAT:'),
          const Text('1. UU Negara Kesatuan Republik Indonesia No. 16 Tahun 2001 tentang Yayasan'),
          const Text('2. UU Negara Kesatuan Republik Indonesia No. 17 Tahun 2013 tentang Organisasi Kemasyarakatan'),
          const Text('3. UU Negara Kesatuan Republik Indonesia No. 11 Tahun 2009 tentang Kesejahteraan Sosia'),
          const SizedBox(height: 8),
          // MEMUTUSKAN section and Board members
          const Text('MEMUTUSKAN:'),
          const Text('Susunan Kepengurusan Yayasan Sabilurridho Ar Ruhandiah Masa Bhakti 2024 s.d. 2029, sebagai berikut'),
          const SizedBox(height: 16),
          // Table-like structure
          const Text('DEWAN PENGURUS'),
          Table(
            columnWidths: {
              0: const FlexColumnWidth(2),
              1: const FlexColumnWidth(3),
            },
            border: TableBorder.all(),
            children: [
              const TableRow(children: [
                Text('Ketua:'),
                Text('Rohendi Abdullah, S.Pd.I'),
              ]),
              const TableRow(children: [
                Text('Sekretaris:'),
                Text('Husni Farid'),
              ]),
              const TableRow(children: [
                Text('Bendahara:'),
                Text('Ait Rachmawaty'),
              ]),
              // Continue adding rows for the rest of the sections...
            ],
          ),
          const SizedBox(height: 16),
          const Text('Ditetapkan di: Cangkuang-Bandung'),
          const Text('Pada tanggal: 7 Juli 2024'),
          const SizedBox(height: 16),
          const Align(
            alignment: Alignment.centerRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Yendi Sofyan, S.Pd.I'),
                Text('Ketua Pembina'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// Mobile layout
class MobileHeaderContent1T2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Center(
            child: Text(
              'SURAT KEPUTUSAN\nYAYASAN SABILIURRIDHO AR RUHANIADH',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 16),
          // MENIMBANG section
          const Text('MENIMBANG:'),
          const Text('a. Surat Keputusan Yayasan Sabilurridho Ar Ruhandiah Nomor : 005/SK/YSRAR/VII/2024 tentang adanya keinginan luhur membantu pemerintah dalam pemberdayaan social'),
          const Text('b. dalam usaha meningkatkan pembinaan dan pengembangan Yayasan Sabilurridho Ar Ruhandiah dipandang perlu membentuk Susunan Kepengurusan.'),
          const Text('c. dengan pertimbangan tersebut di atas, dipanjang perlu menetapkan Keputusan ini.'),
          const SizedBox(height: 8),
          // MENGINGAT section
          const Text('MENGINGAT:'),
          const Text('1. UU Negara Kesatuan Republik Indonesia No. 16 Tahun 2001 tentang Yayasan'),
          const Text('2. UU Negara Kesatuan Republik Indonesia No. 17 Tahun 2013 tentang Organisasi Kemasyarakatan'),
          const Text('3. UU Negara Kesatuan Republik Indonesia No. 11 Tahun 2009 tentang Kesejahteraan Sosia'),
          const SizedBox(height: 8),
          // MEMUTUSKAN section and Board members
          const Text('MEMUTUSKAN:'),
          const Text('Susunan Kepengurusan Yayasan Sabilurridho Ar Ruhandiah Masa Bhakti 2024 s.d. 2029, sebagai berikut'),
          const SizedBox(height: 16),
          // Table-like structure
          const Text('DEWAN PENGURUS'),
          Table(
            columnWidths: {
              0: const FlexColumnWidth(2),
              1: const FlexColumnWidth(3),
            },
            border: TableBorder.all(),
            children: [
              const TableRow(children: [
                Text('Ketua:'),
                Text('Rohendi Abdullah, S.Pd.I'),
              ]),
              const TableRow(children: [
                Text('Sekretaris:'),
                Text('Husni Farid'),
              ]),
              const TableRow(children: [
                Text('Bendahara:'),
                Text('Ait Rachmawaty'),
              ]),
              // Continue adding rows for the rest of the sections...
            ],
          ),
          const SizedBox(height: 16),
          const Text('Ditetapkan di: Cangkuang-Bandung'),
          const Text('Pada tanggal: 7 Juli 2024'),
          const SizedBox(height: 16),
          const Align(
            alignment: Alignment.centerRight,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text('Yendi Sofyan, S.Pd.I'),
                Text('Ketua Pembina'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}