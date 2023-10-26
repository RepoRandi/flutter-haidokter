import 'package:flutter/material.dart';
import 'package:haidokter/core.dart';

class DoctorScheduleCard extends StatelessWidget {
  final String title;
  final String hospitalPhotoUrl;
  final String hospitalName;
  final String address;
  final String distanceInKm;
  final String consultationFee;
  final List<String> schedules;
  final VoidCallback onSeeAllTapped;
  final VoidCallback onScheduleTapped;

  const DoctorScheduleCard({
    Key? key,
    required this.title,
    required this.hospitalPhotoUrl,
    required this.hospitalName,
    required this.address,
    required this.distanceInKm,
    required this.consultationFee,
    required this.schedules,
    required this.onSeeAllTapped,
    required this.onScheduleTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16, right: 16, bottom: 6),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12.0),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6.0),
                  child: Image.network(
                    hospitalPhotoUrl,
                    width: 50.0,
                    height: 50.0,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(width: 10.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        hospitalName,
                        style: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        address,
                        style: TextStyle(fontSize: 12.0, color: greyColor),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        '$distanceInKm km dari anda',
                        style: TextStyle(fontSize: 12.0, color: greyColor),
                      ),
                      const SizedBox(height: 5.0),
                      Text(
                        'Biaya konsultasi Rp. $consultationFee',
                        style: TextStyle(fontSize: 14, color: orangeColor),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(2),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: Colors.blueGrey,
                      width: 1,
                    ),
                  ),
                  child: CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.arrow_forward,
                      color: infoColor,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            for (var i in schedules)
              Container(
                width: double.infinity,
                margin: const EdgeInsets.only(bottom: 10.0),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: disabledColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(i),
                    const SizedBox(height: 12.0),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                        foregroundColor: infoColor,
                        side: BorderSide(
                          color: infoColor,
                        ),
                      ),
                      onPressed: onScheduleTapped,
                      child: Text(
                        '16:00 - 18:30',
                        style: TextStyle(fontSize: 14, color: infoColor),
                      ),
                    ),
                  ],
                ),
              ),
            const SizedBox(height: 10.0),
            Row(
              children: [
                TextButton(
                  child: Text(
                    'Lihat Semua Lokasi & Jadwal',
                    style: TextStyle(color: infoColor),
                  ),
                  onPressed: onSeeAllTapped,
                ),
                Icon(
                  Icons.chevron_right,
                  size: 16.0,
                  color: infoColor,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
