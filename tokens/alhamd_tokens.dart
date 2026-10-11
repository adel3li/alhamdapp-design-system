// الحمد — design tokens, generated from tokens.json (v2). Do not hand-edit values; edit tokens.json.
// Themes: AhColors.layl (dark, default) · AhColors.nahar (light). Fonts: Amiri, Amiri Quran, IBM Plex Sans Arabic (bundle in pubspec).
import 'package:flutter/material.dart';

class AhColors extends ThemeExtension<AhColors> {
  final Color ground;
  final Color groundDeep;
  final Color groundDeepest;
  final Color glassCard;
  final Color glassRaised;
  final Color glassInset;
  final Color hairline;
  final Color text;
  final Color textBody;
  final Color textMuted;
  final Color accentText;
  final Color accent;
  final Color accentSoft;
  final Color primary;
  final Color primaryPressed;
  final Color onPrimary;
  final Color danger;
  final Color quranText;
  final Color quranBorder;
  final Color scrim;
  final Color latticeStroke;
  final Color cone;
  final Color iconGround;
  final Color iconThread;
  const AhColors({required this.ground, required this.groundDeep, required this.groundDeepest, required this.glassCard, required this.glassRaised, required this.glassInset, required this.hairline, required this.text, required this.textBody, required this.textMuted, required this.accentText, required this.accent, required this.accentSoft, required this.primary, required this.primaryPressed, required this.onPrimary, required this.danger, required this.quranText, required this.quranBorder, required this.scrim, required this.latticeStroke, required this.cone, required this.iconGround, required this.iconThread});
  static const layl = AhColors(
    ground: Color(0xFF15152A), // App background (home, journal, calendar, settings)
    groundDeep: Color(0xFF111126), // Onboarding and reflection background — the only grounds that carry the star lattice
    groundDeepest: Color(0xFF0C0C1C), // Reflection step «التعمّق» only
    glassCard: Color(0xFF1E1E38), // Cards
    glassRaised: Color(0xFF25232E), // Sheets, dialogs, tab bar, toast, filled chip
    glassInset: Color(0xFF1B1B33), // Quran block, search field, setting rows, prompt card, text areas
    hairline: Color(0xFF2E2E4A), // 1px borders, dividers, ThreadProgress track, disabled button fill, toggle-off track
    text: Color(0xFFEDEDF5), // Titles and primary text
    textBody: Color(0xFFC7C4D8), // Body copy
    textMuted: Color(0xFFAEAECB), // Labels, timestamps, placeholders, surah references
    accentText: Color(0xFFE4C368), // The ONLY highlighted text colour: ayah text (dark only), active tab, chip text, text buttons, wordmark (dark)
    accent: Color(0xFFC8A951), // Marks and outlines: thread rule + dot, ThreadProgress fill, chip outlines, calendar «done» dots, scholar attribution, «ح» avatar ring
    accentSoft: Color(0x2EC8A951), // Selected chip fill (accent at 18% dark / 14% light) under accent-text
    primary: Color(0xFF6C63FF), // Fills only: primary button, today ring, toggle-on, numbered prompt badge
    primaryPressed: Color(0xFF594DFF), // Pressed primary button (white label 5
    onPrimary: Color(0xFFFFFFFF), // Label and knob colour on primary fills
    danger: Color(0xFFE5837A), // Delete only, always with the word «حذف»
    quranText: Color(0xFFE4C368), // Ayah text in Amiri Quran inside ﴿ ﴾: gold-bright on dark, ink on light
    quranBorder: Color(0x47C8A951), // 1px border of the Quran block and share-card ayah card (accent at 28% / 35%)
    scrim: Color(0x99111126), // Backing behind a chip that sits on the star lattice
    latticeStroke: Color(0x0DEDEDF5), // Star-lattice stroke (text at 5%)
    cone: Color(0x0FEDEDF5), // Dark: spotlight radial wash behind «نعمة اليوم», ≤6%
    iconGround: Color(0xFF2A1F19), // App-icon artwork only (brown / cream)
    iconThread: Color(0xFFD4704F), // Wordmark thread on the app icon
  );
  static const nahar = AhColors(
    ground: Color(0xFFF4EDE3), // App background (home, journal, calendar, settings)
    groundDeep: Color(0xFFEDE3D4), // Onboarding and reflection background — the only grounds that carry the star lattice
    groundDeepest: Color(0xFFE6DAC8), // Reflection step «التعمّق» only
    glassCard: Color(0xFFFBF8F3), // Cards
    glassRaised: Color(0xFFFFFFFF), // Sheets, dialogs, tab bar, toast, filled chip
    glassInset: Color(0xFFEFE6D9), // Quran block, search field, setting rows, prompt card, text areas
    hairline: Color(0xFFDCCFBE), // 1px borders, dividers, ThreadProgress track, disabled button fill, toggle-off track
    text: Color(0xFF2A1F19), // Titles and primary text
    textBody: Color(0xFF4A3B32), // Body copy
    textMuted: Color(0xFF6B5A4E), // Labels, timestamps, placeholders, surah references
    accentText: Color(0xFF9E4A30), // The ONLY highlighted text colour: ayah text (dark only), active tab, chip text, text buttons, wordmark (dark)
    accent: Color(0xFFB9573B), // Marks and outlines: thread rule + dot, ThreadProgress fill, chip outlines, calendar «done» dots, scholar attribution, «ح» avatar ring
    accentSoft: Color(0x24B9573B), // Selected chip fill (accent at 18% dark / 14% light) under accent-text
    primary: Color(0xFFB9573B), // Fills only: primary button, today ring, toggle-on, numbered prompt badge
    primaryPressed: Color(0xFF8F4229), // Pressed primary button (white label 5
    onPrimary: Color(0xFFFFFFFF), // Label and knob colour on primary fills
    danger: Color(0xFFA63D30), // Delete only, always with the word «حذف»
    quranText: Color(0xFF2A1F19), // Ayah text in Amiri Quran inside ﴿ ﴾: gold-bright on dark, ink on light
    quranBorder: Color(0x59B9573B), // 1px border of the Quran block and share-card ayah card (accent at 28% / 35%)
    scrim: Color(0xB3F4EDE3), // Backing behind a chip that sits on the star lattice
    latticeStroke: Color(0x0D2A1F19), // Star-lattice stroke (text at 5%)
    cone: Color(0x99E6DAC8), // Dark: spotlight radial wash behind «نعمة اليوم», ≤6%
    iconGround: Color(0xFFF4EDE3), // App-icon artwork only (brown / cream)
    iconThread: Color(0xFFB9573B), // Wordmark thread on the app icon
  );
  @override AhColors copyWith({Color? ground, Color? groundDeep, Color? groundDeepest, Color? glassCard, Color? glassRaised, Color? glassInset, Color? hairline, Color? text, Color? textBody, Color? textMuted, Color? accentText, Color? accent, Color? accentSoft, Color? primary, Color? primaryPressed, Color? onPrimary, Color? danger, Color? quranText, Color? quranBorder, Color? scrim, Color? latticeStroke, Color? cone, Color? iconGround, Color? iconThread}) => AhColors(ground: ground ?? this.ground, groundDeep: groundDeep ?? this.groundDeep, groundDeepest: groundDeepest ?? this.groundDeepest, glassCard: glassCard ?? this.glassCard, glassRaised: glassRaised ?? this.glassRaised, glassInset: glassInset ?? this.glassInset, hairline: hairline ?? this.hairline, text: text ?? this.text, textBody: textBody ?? this.textBody, textMuted: textMuted ?? this.textMuted, accentText: accentText ?? this.accentText, accent: accent ?? this.accent, accentSoft: accentSoft ?? this.accentSoft, primary: primary ?? this.primary, primaryPressed: primaryPressed ?? this.primaryPressed, onPrimary: onPrimary ?? this.onPrimary, danger: danger ?? this.danger, quranText: quranText ?? this.quranText, quranBorder: quranBorder ?? this.quranBorder, scrim: scrim ?? this.scrim, latticeStroke: latticeStroke ?? this.latticeStroke, cone: cone ?? this.cone, iconGround: iconGround ?? this.iconGround, iconThread: iconThread ?? this.iconThread);
  @override AhColors lerp(AhColors? o, double t) { if (o == null) return this; return AhColors(ground: Color.lerp(ground, o.ground, t)!, groundDeep: Color.lerp(groundDeep, o.groundDeep, t)!, groundDeepest: Color.lerp(groundDeepest, o.groundDeepest, t)!, glassCard: Color.lerp(glassCard, o.glassCard, t)!, glassRaised: Color.lerp(glassRaised, o.glassRaised, t)!, glassInset: Color.lerp(glassInset, o.glassInset, t)!, hairline: Color.lerp(hairline, o.hairline, t)!, text: Color.lerp(text, o.text, t)!, textBody: Color.lerp(textBody, o.textBody, t)!, textMuted: Color.lerp(textMuted, o.textMuted, t)!, accentText: Color.lerp(accentText, o.accentText, t)!, accent: Color.lerp(accent, o.accent, t)!, accentSoft: Color.lerp(accentSoft, o.accentSoft, t)!, primary: Color.lerp(primary, o.primary, t)!, primaryPressed: Color.lerp(primaryPressed, o.primaryPressed, t)!, onPrimary: Color.lerp(onPrimary, o.onPrimary, t)!, danger: Color.lerp(danger, o.danger, t)!, quranText: Color.lerp(quranText, o.quranText, t)!, quranBorder: Color.lerp(quranBorder, o.quranBorder, t)!, scrim: Color.lerp(scrim, o.scrim, t)!, latticeStroke: Color.lerp(latticeStroke, o.latticeStroke, t)!, cone: Color.lerp(cone, o.cone, t)!, iconGround: Color.lerp(iconGround, o.iconGround, t)!, iconThread: Color.lerp(iconThread, o.iconThread, t)!); }
}

class AhSpace {
  static const double grid = 4; // Base step.
  static const double cardGap = 12; // Gap between stacked cards.
  static const double pageInset = 20; // Horizontal page margin.
  static const double cardPad = 20; // Card padding (compact).
  static const double cardPadLg = 24; // Card padding (roomy).
  static const double sectionGap = 28; // Gap between page sections.
  static const double tapMin = 44; // Minimum touch target; compact button height.
  static const double buttonH = 56; // Primary button height.
}

class AhRadius {
  static const double field = 12; // Inputs, textareas, share-card inner card.
  static const double dialogButton = 14; // Buttons inside dialogs and empty states.
  static const double button = 16; // Buttons, setting rows, Quran block, top bar.
  static const double sheet = 20; // Dialogs, sheets, tab bar.
  static const double card = 24; // Glass cards.
  static const double pill = 999; // Chips, toggles, toasts, avatar, dots.
}

class AhBlur {
  static const double card = 20;
  static const double raised = 24;
}

class AhMotion {
  static const Duration micro = Duration(milliseconds: 150); // easeOut — toggles, presses.
  static const Duration standard = Duration(milliseconds: 250); // easeOutCubic — navigation, sheets.
  static const Duration sentence = Duration(milliseconds: 400); // Reflection sentence fade-in.
  static const Duration ambience = Duration(milliseconds: 2500); // easeInOutCubic — reflection ambience shift (800ms with reduced motion).
  static const Duration ambienceReduced = Duration(milliseconds: 800);
}

class AhIcon {
  static const double size = 22; static const double sizeTab = 24; static const double stroke = 1.5;
}

class AhShadow {
  static const cardLayl = [BoxShadow(color: Color(0x59000000), blurRadius: 32, offset: Offset(0, 12))];
  static const raisedLayl = [BoxShadow(color: Color(0x73000000), blurRadius: 40, offset: Offset(0, 16))];
  static const cardNahar = [BoxShadow(color: Color(0x142A1F19), blurRadius: 24, offset: Offset(0, 8))];
  static const raisedNahar = [BoxShadow(color: Color(0x1F2A1F19), blurRadius: 40, offset: Offset(0, 16))];
}

/// User text size: عادي 1.0 · كبير 1.125 · أكبر 1.25 — multiply the whole ramp, keep line heights.
class AhType {
  static const display = 'Amiri'; static const quran = 'Amiri Quran'; static const ui = 'IBM Plex Sans Arabic';
  static TextTheme ramp(double scale) => TextTheme(
    displayLarge: TextStyle(fontFamily: display, fontSize: 72 * scale, height: 1, fontWeight: FontWeight.w700), // wordmark
    headlineLarge: TextStyle(fontFamily: display, fontSize: 34 * scale, height: 1.5, fontWeight: FontWeight.w700), // blessing-title
    headlineMedium: TextStyle(fontFamily: display, fontSize: 30 * scale, height: 1.5, fontWeight: FontWeight.w700), // screen-title
    titleLarge: TextStyle(fontFamily: display, fontSize: 19 * scale, height: 1.5, fontWeight: FontWeight.w700), // dialog-title
    titleMedium: TextStyle(fontFamily: display, fontSize: 20 * scale, height: 1.9, fontWeight: FontWeight.w400), // hadith
    titleSmall: TextStyle(fontFamily: display, fontSize: 17 * scale, height: 1.9, fontWeight: FontWeight.w400), // scholar
    bodyLarge: TextStyle(fontFamily: quran, fontSize: 24 * scale, height: 2.1, fontWeight: FontWeight.w400), // ayah
    labelLarge: TextStyle(fontFamily: ui, fontSize: 18 * scale, height: 1.5, fontWeight: FontWeight.w600), // button
    bodyMedium: TextStyle(fontFamily: ui, fontSize: 16 * scale, height: 1.8, fontWeight: FontWeight.w400), // body
    bodySmall: TextStyle(fontFamily: ui, fontSize: 15 * scale, height: 1.8, fontWeight: FontWeight.w400), // field
    labelMedium: TextStyle(fontFamily: ui, fontSize: 14 * scale, height: 1.8, fontWeight: FontWeight.w400), // secondary
    labelSmall: TextStyle(fontFamily: ui, fontSize: 13 * scale, height: 1.6, fontWeight: FontWeight.w400), // chip
    displaySmall: TextStyle(fontFamily: ui, fontSize: 12 * scale, height: 1.6, fontWeight: FontWeight.w400), // label
    displayMedium: TextStyle(fontFamily: ui, fontSize: 11 * scale, height: 1.6, fontWeight: FontWeight.w400), // tab
  );
}

ThemeData ahTheme(AhColors c, {double scale = 1.0}) {
  final dark = c == AhColors.layl;
  return ThemeData(
    useMaterial3: true,
    brightness: dark ? Brightness.dark : Brightness.light,
    scaffoldBackgroundColor: c.ground,
    fontFamily: AhType.ui,
    colorScheme: ColorScheme(
      brightness: dark ? Brightness.dark : Brightness.light,
      primary: c.primary, onPrimary: c.onPrimary,
      secondary: c.accent, onSecondary: c.ground,
      surface: c.glassCard, onSurface: c.text,
      error: c.danger, onError: c.onPrimary,
    ),
    textTheme: AhType.ramp(scale).apply(bodyColor: c.textBody, displayColor: c.text),
    extensions: [c],
  );
}
