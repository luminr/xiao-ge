\version "2.18.2"
\header {
  title = \markup {
    \override #'(font-name . "SimHei")
    "南京高等师范学校校歌"
  }
  subtitle = \markup {
    \override #'(font-name . "SimSun" )
    "1915年"
  }
  composer = \markup {
    \override #'(font-name . "SimSun")
    "李叔同曲"
  }
  poet = \markup {
    \override #'(font-name . "SimSun")
    "江谦词"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge } CC-BY-SA 4.0 }
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }
}
\score{
  {
    \transpose c g \relative c'{
      \key c \major \time 4/4 \tempo \markup { \override #'(font-name . "SimSun")  "中速"  }
      e2 c | g e' | g f | e2. r4 |
      d2 d | c4 b c2 | e4 d d c | d2 g, |
      e' c | g4 c e2 | g2 f | e d |
      d4 d e d | c b c e | e2 d4 c | d2 c |
      g'4 g g g | a2 g | g g | g4 g g2 |  a d, | fis g |
      e c | g4 c e2 | g2 f | e d |
      d d | c4 b c2 | e2  d | d c\fermata  \bar "|."
    }
    \addlyrics {
      大 哉 一 诚 天 下 动， 如 鼎 三 足 兮， 曰 知、 曰 仁、 曰 勇。 千 圣 会 归 兮， 集 成 于 孔。 下 开 万 代 旁 万 方 兮， 一 趋 兮 同。 踵 海 西 上 兮， 江 东； 巍 巍 北 极 兮， 金 城 之 中。 天 开 教 泽 兮， 吾 道 无 穷； 吾 愿 无 穷 兮， 如 日 方 暾。
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