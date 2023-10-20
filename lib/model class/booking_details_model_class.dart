import 'package:flutter/material.dart';

class BookingDeatilsModelClass{
String? hName;
String? hAddress;
int? hHotline;
int? hBedNumber;

BookingDeatilsModelClass({this.hName, this.hAddress, this.hHotline, this.hBedNumber});


static List<BookingDeatilsModelClass> generatedBookingList = [

  BookingDeatilsModelClass(
    hName: "United Hospital",
    hAddress: "Ghulshan-2",
    hBedNumber: 20,
    hHotline: 01765321985,
  ),

  BookingDeatilsModelClass(
    hName: "Bangladesh Medical College",
    hAddress: "Dhanmondi",
    hBedNumber: 38,
    hHotline: 0176214774,
  ),

  BookingDeatilsModelClass(
    hName: "Evercare Hospital",
    hAddress: "Boshundhara",
    hBedNumber: 41,
    hHotline: 01765216795,
  ),

  BookingDeatilsModelClass(
    hName: "Dhaka Shishu Hospital",
    hAddress: "Shamoli",
    hBedNumber: 25,
    hHotline: 01610983415,
  ),

  BookingDeatilsModelClass(
    hName: "Popular Medical College",
    hAddress: "Dhanmondi",
    hBedNumber: 21,
    hHotline: 01512904318,
  ),

  BookingDeatilsModelClass(
    hName: "Ibne Sina",
    hAddress: "Shankar",
    hBedNumber: 60,
    hHotline: 01765321712,
  ),

  BookingDeatilsModelClass(
    hName: "Vision Eye Hospital",
    hAddress: "Mohammadpur",
    hBedNumber: 41,
    hHotline: 0176214973,
  ),

  BookingDeatilsModelClass(
    hName: "Exim Bank Hospital",
    hAddress: "Sewrapara",
    hBedNumber: 47,
    hHotline: 01945216456,
  ),

  BookingDeatilsModelClass(
    hName: "Lions Hospital",
    hAddress: "agerga",
    hBedNumber: 51,
    hHotline: 01530983040,
  ),

  BookingDeatilsModelClass(
    hName: "US Bangla Medical College",
    hAddress: "Purbachal",
    hBedNumber: 50,
    hHotline: 01832904841,
  ),
];
}