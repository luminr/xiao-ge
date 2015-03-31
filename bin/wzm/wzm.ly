\version "2.18.2"
\header {
  title = \markup {
    \override #'(font-name . "SimHei")
    "浙江省立第十中学校歌"
  }
  subtitle = \markup {
    \override #'(font-name . "SimSun")
    "温州中学校歌"
  }
  subsubtitle = \markup {
    \override #'(font-name . "SimSun" )
    "1923年"
  }
  composer = \markup {
    \override #'(font-name . "SimSun")
    "阮湘咸曲"
  }
  poet = \markup {
    \override #'(font-name . "SimSun")
    "朱自清词"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge }}
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }
}
\score{
  {
    \transpose c f \relative c'{
      \key c \major \time 4/4 \tempo 4 = 100 \dynamicUp
      \partial 4  % g4 | c4. d8 e f g4 | a4 g f e | d8 e d a g4 d' | c2.
      g4 | c4. b8 c4 e | d4 c g'2 |  a4. g8 e4 c | d2. g4 | \break
      e4 d8( c) a2 | g4 c d e | d4. c8 g'2 | g4 g e c | \break
      d4 e8( f) e2 | a4-> a-> g8( f) e4 | d4-> g-> e8( d e g) | c,2. a4 | \break
      c4 d8( e) d( c) g'4 | e2. d8( e) | d8( a) g4 e' d8.( b16) | c2. r4  \bar "|."
    }
    \addlyrics {
      雁 山 云 影, 瓯 海 潮 淙。 看 钟 灵 毓 秀, 桃 李 葱 茏。 怀 籀 亭 边 勤 讲 诵, 中 山 精 舍 坐 春 风。 英 奇 匡 国, 作 圣 启 蒙, 上 下 古 今 一 冶, 东 西 学 艺 攸 同。

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