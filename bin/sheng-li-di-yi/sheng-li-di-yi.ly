\version "2.18.2"
\header {
  title = \markup {
    \override #'(font-name . "PMingLiU")
    "浙江省立第一師範學校校歌"
  }

  subtitle = \markup {
    \override #'(font-name . "PMingLiU" )
    "1914年"
  }
  composer = \markup {
    \override #'(font-name . "PMingLiU")
    "李叔同 作曲"
  }
  poet = \markup {
    \override #'(font-name . "PMingLiU")
    "夏丏尊 作詞"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge } CC-BY-SA 4.0 }
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }

}
\score{
  {
    \relative c'{
      \key c \major \time 4/4
      e4. e8 c2 | e4. e8 d4 g | a4. g8 e4 g | d2. r4 |
      e4. d8 c4 d | e4. e8 d4 g | a4. g8 d4 e | c2. r4 |
      c'4. c8 a4 c | g4. g8 e4 g | a4. g8 a4 c | g2. r4 |
      e4. d8 c4 d | e4. e8 d4 g | a4. g8 d4 e | c2. r4 |
      d4. d8 d2 | g4. g8 g2 | g4. d8 b'4. a8 | g2. r4 |
      d4. d8 d2 | g4. g8 g2 | c4. g8 e4. d8 | c2. r4 |

      \bar "|."
    }
    \addlyrics {
      人 人 人 代 謝 靡 盡 先 後 覺 新 民
      可 能 可 能 陶 冶 精 神 道 德 潤 心 身
      吾 儕 同 學 負 斯 重 任 相 勉 又 相 親
      五 載 光 陰 學 與 俱 進 磐 固 我 根 本
      葉 蓁 蓁 木 欣 欣 碧 梧 萬 枝 新
      之 江 西 西 湖 濱 桃 李 一 堂 春
    }
  }
  \layout {
    \override Lyrics.VerticalAxisGroup #'staff-affinity = #CENTER
    \override Lyrics.LyricText.self-alignment-X = #LEFT
    \override Lyrics.LyricText.font-size = #-1
    \override Lyrics.LyricText.font-name = #"PMingLiU"
    \override Score.SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)

  }
  \midi { \tempo 4 = 88 }
}