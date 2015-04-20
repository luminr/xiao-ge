\version "2.18.2"
\header {
  title = \markup {
    \override #'(font-name . "PMingLiU")
    "中央大學校歌"
  }
  subtitle = \markup {
    \override #'(font-name . "PMingLiU" )
    "1947年"
  }
  composer = \markup {
    \override #'(font-name . "PMingLiU")
    "程懋筠 作曲"
  }
  poet = \markup {
    \override #'(font-name . "PMingLiU")
    "汪東 作詞"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge } CC-BY-SA 4.0 }
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }
}
\score{
  {
    \transpose c a \relative c'{
      \key c \major \time 4/4 \tempo "Maestoso" 4 = 116 \dynamicUp
      \override TextSpanner.bound-details.left.text = \markup { \upright \italic "cresc." }

      \partial 4 g4\mf | e4. f8 g8 c4 a8 | g2. e4 | d4.( c8) d8([ c)] d([ e)] | d2. g4\p |
      e'4. d8 c8 b4 c8 | a2. g4 | a4. g8\< a8([ c)] b\>  d\! | c2. e4^\markup{ \dynamic p \bold "Legato"} | e2. c8[ a8] |
      a2. r4 | c2. b8([ a)] | g2. c4 | f2.\f  f8\< a8\> | g2. d4\! |
      e2.\p fis4^\markup { \italic "rit." } | g2.\fermata g,4^\markup {\bold "a tempo"} | g4 f8([ a)] g4 c | g4 b8( d) c4 e4 | e4 d8( c) d4 g,-> |
      c4-> c8( d) c4 g'4\f | g2. f8  g | e2. r4 | d2.\p c8( d) | e2. c4 |
      c2\f->  c8(\startTextSpan e4.) | g2 e8\stopTextSpan r e4\ff | d2. g8(-> \noBeam g8)-> | c,2. r4 |

      \bar "|."
    }
    \addlyrics {
      維 襟 江 而 枕 海 兮 金 陵 宅 其 中
      陟 陞 皇 以 臨 睨 兮 此 實 為 天 府 之 雄
      煥 哉 郁 郁 兮 文 所 鍾 宏 我 黌 舍 兮 甲 於 南 東
      干 戈 永 戢 弦 誦 斯 崇 百 年 樹 人 鬱 鬱 蔥 蔥
      廣 博 易 良 兮 吳 之 風 以 此 為 教 兮 四 方 來 同
    }
  }
  \layout {
    \override Lyrics.VerticalAxisGroup #'staff-affinity = #CENTER
    \override Lyrics.LyricText.self-alignment-X = #LEFT
    \override Lyrics.LyricText.font-size = #-1
    \override Lyrics.LyricText.font-name = #"PMingLiU"
    \override Score.SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)

  }
  \midi {
    \tempo "Maestoso" 4 = 93
    \context {
      \Score
      midiMinimumVolume = #1
      midiMaximumVolume = #1
    }
  }
}