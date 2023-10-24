import 'package:flutter/material.dart';
import 'package:haidokter/core.dart';

class DoctorCard extends StatelessWidget {
  final String photoUrl;
  final String doctorName;
  final String specialization;
  final String patientCount;
  final VoidCallback onPressed;

  DoctorCard({
    required this.photoUrl,
    required this.doctorName,
    required this.specialization,
    required this.patientCount,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 0,
            blurRadius: 10,
            offset: Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 32,
                backgroundImage: NetworkImage(photoUrl),
              ),
              const SizedBox(
                width: 12.0,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      doctorName,
                      style: TextStyle(
                          fontSize: 14.0, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      specialization,
                      style: TextStyle(color: greyColor),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      children: [
                        Text(
                          '$patientCount pasien ',
                          style: TextStyle(fontSize: 12, color: infoColor),
                        ),
                        Text(
                          'telah buat janji dengan dokter ini',
                          style: TextStyle(fontSize: 12, color: greyColor),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 12.0,
          ),
          Divider(),
          Row(
            children: [
              Row(
                children: [
                  Icon(
                    Icons.thumb_up,
                    size: 20.0,
                    color: infoColor,
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Row(
                    children: [
                      Text(
                        '100%',
                        style: TextStyle(fontSize: 16, color: infoColor),
                      ),
                      const SizedBox(
                        width: 3.0,
                      ),
                      Text(
                        '19 pasien >',
                        style: TextStyle(fontSize: 12, color: greyColor),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              TextButton.icon(
                onPressed: onPressed,
                icon: Icon(
                  Icons.add,
                  color: infoColor,
                ),
                label: Text(
                  'Berikan Ulasan',
                  style: TextStyle(color: infoColor),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
