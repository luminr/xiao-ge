\version "2.18.2"
\header {
  title = \markup {
    \override #'(font-name . "PMingLiU")
    "原名"
  }
  subtitle = \markup {
    \override #'(font-name . "PMingLiU" )
    "年"
  }
  composer = \markup {
    \override #'(font-name . "PMingLiU")
    "作曲"
  }
  poet = \markup {
    \override #'(font-name . "PMingLiU")
    "作詞"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge } CC-BY-SA 4.0 }
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }
}
\score{
  {
    \transpose c c \relative c'{
      \key c \major \time 4/4

      \bar "|."
    }
    \addlyrics {
      \set stanza = "(一)"

    }
  }
  \layout {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
    \override LyricText.self-alignment-X = #LEFT
    \override LyricText.font-size = #-1
    \override LyricText.font-name = #"PMingLiU"
  }
  \midi { \tempo 4 = 100 }
}