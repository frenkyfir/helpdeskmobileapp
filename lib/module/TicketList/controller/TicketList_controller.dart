import 'package:flutter/material.dart';
import 'package:hyper_ui/service/ticket_service/ticket_service.dart';
import '../view/TicketList_view.dart';

class TicketlistController extends State<TicketlistView> {
  static late TicketlistController instance;
  late TicketlistView view;

  @override
  void initState() {
    instance = this;
    getTickets();
    getTicketsClosed();
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);

  List tickets = [];
  List ticketsClosed = [];

  getTickets() async {
    tickets = await TicketService().getTickets();
    setState(() {});
  }

  getTicketsClosed() async {
    ticketsClosed = await TicketService().getTicketsClosed();
    setState(() {});
  }

  // List<Map<String, dynamic>> tickets = [
  //   {
  //     'ticketId': 1,
  //     'subject': 'Masalah jaringan',
  //     'description': 'Tidak bisa mengakses internet.',
  //     'status': 'Open',
  //     'assignedTo': 'John Doe',
  //   },
  //   {
  //     'ticketId': 2,
  //     'subject': 'Kesalahan login',
  //     'description': 'Tidak bisa masuk ke akun.',
  //     'status': 'In Progress',
  //     'assignedTo': 'Jane Smith',
  //   },
  //   {
  //     'ticketId': 3,
  //     'subject': 'Permintaan akses aplikasi',
  //     'description': 'Butuh akses ke aplikasi HR.',
  //     'status': 'Open',
  //     'assignedTo': null,
  //   },
  //   {
  //     'ticketId': 4,
  //     'subject': 'Masalah printer',
  //     'description': 'Printer tidak bisa mencetak.',
  //     'status': 'Closed',
  //     'assignedTo': 'Mark Johnson',
  //   },
  //   // Tiket 5 sampai 19 (contoh tambahan):
  //   {
  //     'ticketId': 5,
  //     'subject': 'Lupa password',
  //     'description': 'Tidak ingat password akun email.',
  //     'status': 'Open',
  //     'assignedTo': 'Anna Lee',
  //   },
  //   {
  //     'ticketId': 6,
  //     'subject': 'Permintaan perangkat baru',
  //     'description': 'Membutuhkan laptop baru untuk pekerjaan.',
  //     'status': 'Open',
  //     'assignedTo': null,
  //   },
  //   {
  //     'ticketId': 7,
  //     'subject': 'Masalah koneksi VPN',
  //     'description': 'Tidak bisa terhubung ke VPN kantor.',
  //     'status': 'In Progress',
  //     'assignedTo': 'John Doe',
  //   },
  //   {
  //     'ticketId': 8,
  //     'subject': 'Permintaan akses server',
  //     'description': 'Butuh akses ke server produksi.',
  //     'status': 'Open',
  //     'assignedTo': 'Mark Johnson',
  //   },
  //   {
  //     'ticketId': 9,
  //     'subject': 'Kendala mencetak dokumen',
  //     'description': 'Dokumen tidak tampil lengkap saat mencetak.',
  //     'status': 'Closed',
  //     'assignedTo': 'Jane Smith',
  //   },
  //   {
  //     'ticketId': 10,
  //     'subject': 'Kesalahan tampilan website',
  //     'description': 'Halaman website tidak tampil dengan benar.',
  //     'status': 'Open',
  //     'assignedTo': null,
  //   },
  //   {
  //     'ticketId': 11,
  //     'subject': 'Pembatalan pesanan',
  //     'description': 'Membatalkan pesanan karena salah pilih produk.',
  //     'status': 'Closed',
  //     'assignedTo': 'Anna Lee',
  //   },
  //   {
  //     'ticketId': 12,
  //     'subject': 'Masalah aplikasi mobile',
  //     'description': 'Aplikasi selalu crash saat dibuka.',
  //     'status': 'In Progress',
  //     'assignedTo': 'Mark Johnson',
  //   },
  //   {
  //     'ticketId': 13,
  //     'subject': 'Permintaan perubahan password',
  //     'description': 'Minta ganti password akun.',
  //     'status': 'Open',
  //     'assignedTo': null,
  //   },
  //   {
  //     'ticketId': 14,
  //     'subject': 'Kendala pengiriman email',
  //     'description': 'Email tidak terkirim ke beberapa penerima.',
  //     'status': 'Open',
  //     'assignedTo': 'Jane Smith',
  //   },
  //   {
  //     'ticketId': 15,
  //     'subject': 'Kesalahan faktur',
  //     'description': 'Faktur pembelian salah total harga.',
  //     'status': 'Closed',
  //     'assignedTo': 'John Doe',
  //   },
  //   {
  //     'ticketId': 16,
  //     'subject': 'Permintaan izin cuti',
  //     'description': 'Mengajukan izin cuti selama seminggu.',
  //     'status': 'Open',
  //     'assignedTo': null,
  //   },
  //   {
  //     'ticketId': 17,
  //     'subject': 'Masalah aplikasi HR',
  //     'description': 'Aplikasi HR error saat input data karyawan.',
  //     'status': 'In Progress',
  //     'assignedTo': 'Anna Lee',
  //   },
  //   {
  //     'ticketId': 18,
  //     'subject': 'Permintaan bantuan laptop',
  //     'description': 'Butuh bantuan instalasi software di laptop.',
  //     'status': 'Open',
  //     'assignedTo': 'Jane Smith',
  //   },
  //   {
  //     'ticketId': 19,
  //     'subject': 'Kesalahan laporan keuangan',
  //     'description': 'Laporan keuangan tidak balance.',
  //     'status': 'Closed',
  //     'assignedTo': 'Mark Johnson',
  //   },
  //   {
  //     'ticketId': 20,
  //     'subject': 'Permintaan penambahan fitur',
  //     'description': 'Meminta fitur baru pada aplikasi.',
  //     'status': 'Open',
  //     'assignedTo': null,
  //   },
  // ];
}
