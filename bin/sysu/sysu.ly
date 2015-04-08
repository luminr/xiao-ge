\version "2.18.2"
\header {
  title = \markup {
    \override #'(font-name . "PMingLiU") \bold
    "中山大學校歌"
  }
  subtitle = \markup {
    \override #'(font-name . "PMingLiU" )
    ""
  }
  composer = \markup {
    \override #'(font-name . "PMingLiU")
    "陳洪 作曲"
  }
  poet = \markup {
    \override #'(font-name . "PMingLiU")
    "鄒魯 作詞"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge } CC-BY-SA 4.0 }
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }
}
\score{
  {
    \transpose c g \relative c'{
      \key c \major \time 4/4
      g4 c c4. d8 | e4 f e d | d c b4. a8 | b4 c8 a g2 |
      g4 c c4. d8 | e4 f a g | g f e4. d8 | c4 d8 b c2 |
      d4 g, e' c | f4. e8 d4 c | e4 f a g | f4. c8 d4 e |
      e4. d8 d4 d | d2 e4. fis8 | g1\fermata |
      g,4 c c4. d8 | e4 f a g | g f e4. d8 | c4 d8 b c2 \bar "|."
    }
    \addlyrics {
      白 雲 山 高 珠 江 水 長
      吾 校 矗 立 蔚 為 國 光
      國 父 手 創 遺 澤 餘 芳
      三 民 主 義 儀 行 四 方
      民 國 基 礎 大 同 梯 航
      莘 莘 學 子 濟 濟 一 堂
      學 以 致 用 不 息 自 強
      發 揚 光 大 貫 徹 主 張
      懿 歟 勉 旃 勿 墮 勿 忘
    }
  }
  \layout {
    \override Lyrics.VerticalAxisGroup #'staff-affinity = #CENTER
    \override Lyrics.LyricText.self-alignment-X = #LEFT
    \override Lyrics.LyricText.font-size = #-1
    \override Lyrics.LyricText.font-name = #"PMingLiU"
    \override Score.SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)
  }
  \midi { \tempo 4 = 75 }
}