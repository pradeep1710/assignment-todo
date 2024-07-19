import 'package:flutter/material.dart';
import './appcolors.dart';

class AppTextStyle {
  const AppTextStyle._();

  // none
  static const none = TextStyle(fontSize: 0);

  // REGULAR FONT WITH DIFFERENT SIZE
  static const r5 = TextStyle(fontSize: 5);
  static const r8 = TextStyle(fontSize: 8);
  static const r10 = TextStyle(fontSize: 10);
  static const r11 = TextStyle(fontSize: 11);
  static const r12 = TextStyle(fontSize: 12);
  static const r13 = TextStyle(fontSize: 13);
  static const r14 = TextStyle(fontSize: 14);
  static const r15 = TextStyle(fontSize: 15);
  static const r16 = TextStyle(fontSize: 16);
  static const r17 = TextStyle(fontSize: 17);
  static const r18 = TextStyle(fontSize: 18);
  static const r19 = TextStyle(fontSize: 19);
  static const r20 = TextStyle(fontSize: 20);

  // REGULAR FONT WITH DIFFERENT SIZE & SWATCH COLOR
  static const r10swatch = TextStyle(fontSize: 10, color: AppColors.swatch);
  static const r11swatch = TextStyle(fontSize: 11, color: AppColors.swatch);
  static const r12swatch = TextStyle(fontSize: 12, color: AppColors.swatch);
  static const r13swatch = TextStyle(fontSize: 13, color: AppColors.swatch);
  static const r14swatch = TextStyle(fontSize: 14, color: AppColors.swatch);
  static const r15swatch = TextStyle(fontSize: 15, color: AppColors.swatch);
  static const r16swatch = TextStyle(fontSize: 16, color: AppColors.swatch);
  static const r17swatch = TextStyle(fontSize: 17, color: AppColors.swatch);
  static const r18swatch = TextStyle(fontSize: 18, color: AppColors.swatch);
  static const r19swatch = TextStyle(fontSize: 19, color: AppColors.swatch);
  static const r20swatch = TextStyle(fontSize: 20, color: AppColors.swatch);

  // REGULAR FONT WITH DIFFERENT SIZE & SWATCH COLOR
  static const r8textGrey = TextStyle(fontSize: 8, color: AppColors.textGrey);
  static const r10textGrey = TextStyle(fontSize: 10, color: AppColors.textGrey);
  static const r11textGrey = TextStyle(fontSize: 11, color: AppColors.textGrey);
  static const r12textGrey = TextStyle(fontSize: 12, color: AppColors.textGrey);
  static const r13textGrey = TextStyle(fontSize: 13, color: AppColors.textGrey);
  static const r14textGrey = TextStyle(fontSize: 14, color: AppColors.textGrey);
  static const r16textGrey = TextStyle(fontSize: 16, color: AppColors.textGrey);

  // REGULAR FONT WITH DIFFERENT SIZE & WHITE COLOR
  static const r10white = TextStyle(fontSize: 10, color: AppColors.white);
  static const r11white = TextStyle(fontSize: 10, color: AppColors.white);
  static const r12white = TextStyle(fontSize: 12, color: AppColors.white);

  // REGULAR FONT WITH DIFFERENT SIZE & GOLD COLOR
  static const r8gold = TextStyle(fontSize: 8, color: AppColors.gold);

  // BOLD FONT WITH DIFFERENT SIZE
  static const b10 = TextStyle(fontSize: 10, fontWeight: FontWeight.bold);
  static const b11 = TextStyle(fontSize: 11, fontWeight: FontWeight.bold);
  static const b12 = TextStyle(fontSize: 12, fontWeight: FontWeight.bold);
  static const b13 = TextStyle(fontSize: 13, fontWeight: FontWeight.bold);
  static const b14 = TextStyle(fontSize: 14, fontWeight: FontWeight.bold);
  static const b15 = TextStyle(fontSize: 15, fontWeight: FontWeight.bold);
  static const b16 = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
  static const b17 = TextStyle(fontSize: 17, fontWeight: FontWeight.bold);
  static const b18 = TextStyle(fontSize: 18, fontWeight: FontWeight.bold);
  static const b19 = TextStyle(fontSize: 19, fontWeight: FontWeight.bold);
  static const b20 = TextStyle(fontSize: 20, fontWeight: FontWeight.bold);
  static const b25 = TextStyle(fontSize: 25, fontWeight: FontWeight.bold);
  static const b35 = TextStyle(fontSize: 35, fontWeight: FontWeight.bold);

  // BOLD FONT WITH DIFFERENT SIZE & WHITE COLOR
  static const b10white = TextStyle(
      fontSize: 10, color: AppColors.white, fontWeight: FontWeight.bold);
  static const b12white = TextStyle(
      fontSize: 12, color: AppColors.white, fontWeight: FontWeight.bold);
  static const b20white = TextStyle(
      fontSize: 20, color: AppColors.white, fontWeight: FontWeight.bold);
  static const b14white = TextStyle(
      fontSize: 14, color: AppColors.white, fontWeight: FontWeight.bold);
  static const b18white = TextStyle(
      fontSize: 18, color: AppColors.white, fontWeight: FontWeight.bold);

  // BOLD FONT WITH DIFFERENT SIZE & BLACK COLOR
  static final b14black = TextStyle(
      fontSize: 14, color: AppColors.black, fontWeight: FontWeight.bold);

  // BOLD FONT WITH DIFFERENT SIZE & RED COLOR
  static final b14red = TextStyle(
      fontSize: 14, color: AppColors.red, fontWeight: FontWeight.bold);
  static final b16red = TextStyle(
      fontSize: 16, color: AppColors.red, fontWeight: FontWeight.bold);

  // BOLD FONT WITH DIFFERENT SIZE & TEXTGREY COLOR
  static const b8textGrey = TextStyle(
      fontSize: 8, color: AppColors.textGrey, fontWeight: FontWeight.bold);
  static const b10textGrey = TextStyle(
      fontSize: 10, color: AppColors.textGrey, fontWeight: FontWeight.bold);
  static const b11textGrey = TextStyle(
      fontSize: 11, color: AppColors.textGrey, fontWeight: FontWeight.bold);
  static const b12textGrey = TextStyle(
      fontSize: 12, color: AppColors.textGrey, fontWeight: FontWeight.bold);
  static const b13textGrey = TextStyle(
      fontSize: 13, color: AppColors.textGrey, fontWeight: FontWeight.bold);
  static const b14textGrey = TextStyle(
      fontSize: 14, color: AppColors.textGrey, fontWeight: FontWeight.bold);
  static const b16textGrey = TextStyle(
      fontSize: 16, color: AppColors.textGrey, fontWeight: FontWeight.bold);

  // BOLD FONT WITH DIFFERENT SIZE & SWATCH COLOR
  static const b8swatch = TextStyle(
      fontSize: 8, color: AppColors.swatch, fontWeight: FontWeight.bold);
  static const b10swatch = TextStyle(
      fontSize: 10, color: AppColors.swatch, fontWeight: FontWeight.bold);
  static const b11swatch = TextStyle(
      fontSize: 11, color: AppColors.swatch, fontWeight: FontWeight.bold);
  static const b12swatch = TextStyle(
      fontSize: 12, color: AppColors.swatch, fontWeight: FontWeight.bold);
  static const b13swatch = TextStyle(
      fontSize: 13, color: AppColors.swatch, fontWeight: FontWeight.bold);
  static const b14swatch = TextStyle(
      fontSize: 14, color: AppColors.swatch, fontWeight: FontWeight.bold);
  static const b15swatch = TextStyle(
      fontSize: 15, color: AppColors.swatch, fontWeight: FontWeight.bold);
  static const b16swatch = TextStyle(
      fontSize: 16, color: AppColors.swatch, fontWeight: FontWeight.bold);
  static const b17swatch = TextStyle(
      fontSize: 17, color: AppColors.swatch, fontWeight: FontWeight.bold);
  static const b18swatch = TextStyle(
      fontSize: 18, color: AppColors.swatch, fontWeight: FontWeight.bold);
  static const b19swatch = TextStyle(
      fontSize: 19, color: AppColors.swatch, fontWeight: FontWeight.bold);
  static const b20swatch = TextStyle(
      fontSize: 20, color: AppColors.swatch, fontWeight: FontWeight.bold);
  static const b25swatch = TextStyle(
      fontSize: 25, color: AppColors.swatch, fontWeight: FontWeight.bold);

  // BOLD FONT WITH DIFFERENT SIZE & ACCENT COLOR
  static const b8accent = TextStyle(
      fontSize: 8, color: AppColors.accent, fontWeight: FontWeight.bold);
  static const b10accent = TextStyle(
      fontSize: 10, color: AppColors.accent, fontWeight: FontWeight.bold);
  static const b11accent = TextStyle(
      fontSize: 11, color: AppColors.accent, fontWeight: FontWeight.bold);
  static const b12accent = TextStyle(
      fontSize: 12, color: AppColors.accent, fontWeight: FontWeight.bold);
  static const b13accent = TextStyle(
      fontSize: 13, color: AppColors.accent, fontWeight: FontWeight.bold);
  static const b14accent = TextStyle(
      fontSize: 14, color: AppColors.accent, fontWeight: FontWeight.bold);
  static const b15accent = TextStyle(
      fontSize: 15, color: AppColors.accent, fontWeight: FontWeight.bold);
  static const b16accent = TextStyle(
      fontSize: 16, color: AppColors.accent, fontWeight: FontWeight.bold);
  static const b17accent = TextStyle(
      fontSize: 17, color: AppColors.accent, fontWeight: FontWeight.bold);
  static const b18accent = TextStyle(
      fontSize: 18, color: AppColors.accent, fontWeight: FontWeight.bold);
  static const b19accent = TextStyle(
      fontSize: 19, color: AppColors.accent, fontWeight: FontWeight.bold);
  static const b20accent = TextStyle(
      fontSize: 20, color: AppColors.accent, fontWeight: FontWeight.bold);
  static const b25accent = TextStyle(
      fontSize: 25, color: AppColors.accent, fontWeight: FontWeight.bold);
}
