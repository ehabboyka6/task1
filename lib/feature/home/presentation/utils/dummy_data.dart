import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:task1/core/utils/app_colors.dart';
import 'package:task1/feature/home/presentation/utils/enums.dart';

class ProfileEntity extends Equatable {
  final String name;
  final String imageUrl;
  final String svnNumber;
  final int status;
  final int relationshipStatus;
  final int? connectionNumber;
  final int medicineNumber;
  final int consultNumber;
  final Color borderColor;

  const ProfileEntity({
    required this.name,
    required this.imageUrl,
    required this.svnNumber,
    required this.status,
    required this.relationshipStatus,
    this.connectionNumber,
    required this.medicineNumber,
    required this.consultNumber,
    required this.borderColor,
  });

  @override
  List<Object?> get props => [
        name,
        imageUrl,
        svnNumber,
        status,
        relationshipStatus,
        connectionNumber,
        medicineNumber,
        consultNumber,
      ];
}

final List<ProfileEntity> profileListDummyData = [
  ProfileEntity(
      imageUrl:
          'https://s3-alpha-sig.figma.com/img/6d74/2c29/f7f776f024c6b676a133ff4b33cfa192?Expires=1741564800&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=i0iuxnuqfuskqd73EdtR6mYOsTiJJOfnQHvYEX9smTZ79-n6WTvfzPTx7wqNafCkOIsIOLpBUxDtCWZb8OJ37CPFeqi00eogexKpSCmPpKdGaFUEwpVZVb0AMxuorY8-Ca7IJspQPDrmcB5uOzj5TlLDz6ZTVY~17I99kAfj~YgYceT0MxHMwq0UZ5SZVPxA-0cqxcnunkDVUPYUsE7fgabhNoNEFEFpAOAZvaopxgc0dRNqHv8R2108RoeqTbZZ4Z4VZYl66J7K6fhFqUkFTA3zdk6WIqda3FGBbeWHm~CZoGIWGRdrSAV4O4U7PEv2CAtF9I9h401GLMfkYThcKg__',
      name: "Matthew Brian",
      svnNumber: '123 456 789',
      connectionNumber: 2,
      medicineNumber: 11,
      consultNumber: 2,
      relationshipStatus: RelationshipStatus.me.index,
      status: Status.verified.index,
      borderColor: AppColors.transparentColor),
  ProfileEntity(
      imageUrl:
          'https://s3-alpha-sig.figma.com/img/d317/5d01/8ff5819ae1730f31c69509db4c3a6108?Expires=1741564800&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=bG~jDDCgt01RSsq6-1w7qe6XCV0AOyRhhiAtOm1mvrUHMGaOqKDZUMgVnyUHgD--HZKRkbmGR1yCig0GddSRrt1k75ixa0i5qnOLO9n8s-mLSi25BUn~kOiYf3t0OYIoDS~9JURevqWEOFrZfIByBcf11yDq8xMeQ0O11MD5RUExHdMBUTJqPMVW~vcg6F0ELIv-6nR-aTMWyBCDj8X0bqtenn1Rs1JBywZuWpEeJEm7RudhlZmdv5xo2WwfM2UcCQ2lFoS485gwwJyDC8ombfChR6ZTpYxgcwa0URNizs-bxzgI34TeBy~0BkSyeeJDSgyfGKGEJ4zb06qLRmAbyw__',
      name: "Matthew Brian",
      svnNumber: '123 456 789',
      medicineNumber: 5,
      consultNumber: 0,
      relationshipStatus: RelationshipStatus.myFather.index,
      status: Status.unverified.index,
      borderColor: AppColors.blueColor),
  ProfileEntity(
      imageUrl:
          "https://s3-alpha-sig.figma.com/img/dea5/22b0/f2729cda9cecd452b1b6accc0099b803?Expires=1741564800&Key-Pair-Id=APKAQ4GOSFWCW27IBOMQ&Signature=aKXm6Pbozz5969ACjvxnSsAJIx3llNyTrhBky013yJJM86jN3rgPIVUUKddCKiQQpijf72nTSJoe7j8WeP6gFz41hxYL6OHD8p7g-gl6jFXz-CjHk4BV03QsIraXowC6OaLOSDTCu3hvl74tu3TheeGmLIzho9zvJwVKZmOE6AJv2vL~Ou-KSsdY0-1ruVSIJn41Erk-jvHCxS-8s8RMz5yA6IxguVn7NkfR8wFSZ3xJNypMgZQ01vzpnbECTFVUgMYC9WG4bAQS99Gr2myB0hmNfViF6r5GDJyM1yzu2wNzO2uwd9t9uyXz-0~Ur7RTMATn1RNdhbx39M9iQF0o4A__",
      name: "Erica Jason",
      svnNumber: '123 456 789',
      medicineNumber: 9,
      consultNumber: 3,
      relationshipStatus: RelationshipStatus.myMother.index,
      status: Status.pending.index,
      borderColor: AppColors.lightRedColor),
];
