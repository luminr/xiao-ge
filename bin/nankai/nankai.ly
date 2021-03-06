\version "2.19.17"
\header {
  title = \markup {
    \override #'(font-name . "PMingLiU")
    "南開大學校歌"
  }
  subtitle = \markup {
    \override #'(font-name . "PMingLiU" )
    "1919年"
  }
  composer = \markup {
    \override #'(font-name . "PMingLiU" )
    "德國民歌"
    \italic
    "O Tannenbaum"
  }

  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge } CC-BY-SA 4.0 }
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }
}

verse = \lyricmode {
  渤 海 之 濱 白 河 之 津 巍 巍 我 南 開 精 神
  汲 汲 駸 駸 月 異 日 新 發 煌 我 前 途 無 垠
  美 哉 大 仁 智 勇 真 純
  以 鑄 以 陶 文 質 彬 彬
  渤 海 之 濱 白 河 之 津 巍 巍 我 南 開 精 神
}

\score{

  {
    \new ChoirStaff \transpose c g <<
      \new Staff \with {
        instrumentName = "S."
      }
      \relative c'{
        \key c \major \time 3/4
        \partial 4 g4 |
        c8. c16 c4 d | e8. e16 e2 | d8. e16 f4 b, | d8. c16 c4 g |
        c8. c16 c4 d | e8. e16 e2 | d8. e16 f4 b, | d8. c16 c4 r8 g' |
        g8. e16 a4. g8 | g8. f16 f4 r8 f | f8. d16 g4. f8 | f8. e16 e4 g, |
        c8. c16 c4 d | e8. e16 e2 | d8. e16 f4 b, | d8. c16 c2  \bar "|."
      }
      \addlyrics \verse
      \new Staff \with {
        instrumentName = "A."
      }\relative c' {
        \key c \major
        \partial 4 g4 |
        g8. g16 g4 b | c8. c16 c2 | b8. c16 d4 g, | g8. g16 g4 g |
        g8. g16 g4 b | c8. c16 c2 | b8. c16 d4 g, | g8. g16 g4 r8 c |
        c8. c16 c4. c8 | c8. b16 b4 r8 d | d8. b16 e4. d8 | d8. c16 c4 g |
        g8. g16 g4 b | c8. c16 c2 | b8. c16 d4 g, | g8. g16 g2  \bar "|."
      }
      \addlyrics \verse
      \new Staff \with {
        instrumentName = "T."
      }\relative c {
        \key c \major \clef "treble_8"
        \partial 4 g4 |
        e'8. e16 e4 g | g8. g16 g2 | g8. g16 g4 f | f8. e16 e4 g |
        e8. e16 e4 g | g8. g16 g2 | g8. g16 g4 f | f8. e16 e4 r8 e |
        e8. c16 f4. e8 | e8. d16 d4 r8 g | g8. g16 g4. g8 | g8. g16 g4 g |
        e8. e16 e4 g | g8. g16 g2 | g8. g16 g4 f | f8. e16 e2 \bar "|."
      }
      \addlyrics \verse
      \new Staff \with {
        instrumentName = "B."
      }\relative c {
        \key c \major \clef bass
        \partial 4 g4 |
        c8. c16 c4 g | c8. c16 c2 | g8. g16 g4 g | c8. c16 c4 g |
        c8. c16 c4 g | c8. c16 c2 | g8. g16 g4 g | c8. c16 c4 r8 c |
        c8. c16 c4. c8 | g8. g16 g4 r8 g | g8. g16 g4. b8 | c8. c16 c4 g |
        c8. c16 c4 g | c8. c16 c2 | g8. g16 g4 g | c8. c16 c2  \bar "|."
      }
    >>
  }
  \layout {
    \override Lyrics.VerticalAxisGroup #'staff-affinity = #CENTER
    \override Lyrics.LyricText.self-alignment-X = #LEFT
    \override Lyrics.LyricText.font-size = #-1
    \override Score.SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)
    \override LyricText.font-name = #"PMingLiU"
  }
  \midi { \tempo 4 = 100 }
}