\version "2.18.2"
\header {
  title = \markup {
    \override #'(font-name . "PMingLiU")
    "滬江大學校歌"
  }
  subtitle = \markup {
    \override #'(font-name . "PMingLiU" )
    "1923年"
  }
  composer = \markup {
    \italic "America the Beautiful," "Samuel A. Ward"
  }
  poet = \markup {
    \override #'(font-name . "PMingLiU")
    ""
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge } CC-BY-SA 4.0 }
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }
}
\score{
  {
  \relative c''{
      \key c \major \time 4/4
      \partial 4 g4 | g4. e8 e4 g | g4. d8 d4 e | f4 g a b | g2. g4 |
      g4. e8 e4 g | g4. d8 d4 d' | cis4 d e a, | d4 d d g,4 |
      e'4. e8 d4 c | c4. b8  b4 c | d4 b a g | c2. c4 |
      c4. a8 a4 c | c4. g8 g4 g | a4 c g d' | c2. r4 |
      \bar "|."
    }
    \addlyrics {
      我 來 我 校  時 曰 滬 江
      共 高 歌  樂 讚 揚
      讚 揚 之 聲  遍 於 四 方
      我 愛 母 校  爰 升 其 堂
      唯 我 母 校  信 義 勤 愛
      讚 揚 母 校 榮 光
      使 我 學 行  罔 或 不 臧
      增 榮 名 仰 滬 江
    }
  }
  \layout {
    \override Lyrics.VerticalAxisGroup #'staff-affinity = #CENTER
    \override Lyrics.LyricText.self-alignment-X = #LEFT
    \override Lyrics.LyricText.font-size = #-1
    \override Lyrics.LyricText.font-name = #"PMingLiU"
    \override Score.SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)

  }
  \midi { \tempo 4 = 100 }
}