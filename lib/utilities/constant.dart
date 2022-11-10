import 'package:flutter/material.dart';

const kMainBodyColor = Color(0xff00704A);

const kSecondaryColor = Color(0xffEEFCEA);

final kFields = InputDecoration(
  label: const Text('Email or Username'),
  labelStyle: const TextStyle(
    color: kMainBodyColor,
  ),
  fillColor: Colors.white,
  filled: true,
  focusedBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: const BorderSide(
      color: kMainBodyColor,
      width: 2,
    ),
  ),
  enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(20),
    borderSide: const BorderSide(
      color: kMainBodyColor,
    ),
  ),
);
