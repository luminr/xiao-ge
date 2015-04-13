\version "2.18.2"
\header {
  title = \markup {
    \override #'(font-name . "PMingLiU")
    "浙江省立第十中學校歌"
  }
  subtitle = \markup {
    \override #'(font-name . "PMingLiU" )
    "1923年"
  }
  composer = \markup {
    \override #'(font-name . "PMingLiU")
    "阮湘咸 作曲"
  }
  poet = \markup {
    \override #'(font-name . "PMingLiU")
    "朱自清 作詞"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge } CC-BY-SA 4.0 }
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }
}
\score{
  {
    \transpose c f \relative c'{
      \key c \major \time 4/4  \dynamicUp
      \partial 4  % g4 | c4. d8 e f g4 | a4 g f e | d8 e d a g4 d' | c2.
      g4 | c4. b8 c4 e | d4 c g'2 |  a4. g8 e4 c | d2. g4 |
      e4 d8( c) a2 | g4 c d e | d4. c8 g'2 | g4 g e c |
      d4 e8( f) e2 | a4-> a-> g8( f) e4 | d4-> g-> e8( d e g) | c,2. a4 |
      c4 d8( e) d( c) g'4 | e2. d8( e) | d8( a) g4 e' d8.( b16) | c2. r4  \bar "|."
    }
    \addlyrics {
      雁 山 雲 影
      甌 海 潮 淙
      看 鐘 靈 毓 秀
      桃 李 蔥 蘢
      懷 籀 亭 邊 勤 講 誦
      中 山 精 舍 坐 春 風
      英 奇 匡 國
      作 聖 啟 蒙
      上 下 古 今 一 冶
      東 西 學 藝 攸 同。
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