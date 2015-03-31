\version "2.18.2"
\header {
  title = \markup {
    \override #'(font-name . "SimHei")
    "原名"
  }
  subtitle = \markup {
    \override #'(font-name . "SimSun")
    "校歌"
  }
  subsubtitle = \markup {
    \override #'(font-name . "SimSun" )
    "年份"
  }
  composer = \markup {
    \override #'(font-name . "SimSun")
    "曲"
  }
  poet = \markup {
    \override #'(font-name . "SimSun")
    "词"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge }}
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }
}
\score{
  {
    \transpose c c \relative c'{
      \key c \major \time 4/4 \tempo 4 = 100

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
    \override LyricText.font-name = #"SimSun"
  }
  \midi {}
}