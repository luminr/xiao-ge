\version "2.18.2"
\header {
  title = \markup {
    \override #'(font-name . "Microsoft YaHei Light")
    "浙江省立第一师范学校校歌"
  }
  subtitle = \markup {
    \override #'(font-name . "Microsoft YaHei Light")
    "杭州师范大学校歌"
  }
  subsubtitle = \markup {
    \override #'(font-name . "Microsoft YaHei Light" )
    "1914年创作"
  }
  composer = \markup {
    \override #'(font-name . "Microsoft YaHei Light")
    "夏丏尊曲"
  }
  poet = \markup {
    \override #'(font-name . "Microsoft YaHei Light")
    "李叔同词"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge }}
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }

}
\score{
  {
    \relative c'{
      \key c \major \time 4/4 \tempo 4 = 88
      e4. e8 c2 | e4. e8 d4 g | a4. g8 e4 g | d2. r4 |
      e4. d8 c4 d | e4. e8 d4 g | a4. g8 d4 e | c2. r4 |
      c'4. c8 a4 c | g4. g8 e4 g | a4. g8 a4 c | g2. r4 |
      e4. d8 c4 d | e4. e8 d4 g | a4. g8 d4 e | c2. r4 |
      d4. d8 d2 | g4. g8 g2 | g4. d8 b'4. a8 | g2. r4 |
      d4. d8 d2 | g4. g8 g2 | c4. g8 e4. d8 | c2. r4 |

      \bar "|."
    }
    \addlyrics {
      人 人 人， 代 謝 靡 盡， 先 後 覺 新 民。
      可 能 可 能， 陶 冶 精 神， 道 德 潤 心 身。
      吾 儕 同 學， 負 斯 重 任， 相 勉 又 相 親。
      五 載 光 陰， 學 與 俱 進， 磐 固 我 根 本。
      葉 蓁 蓁， 木 欣 欣， 碧 梧 萬 枝 新。
      之 江 西， 西 湖 濱， 桃 李 一 堂 春。
    }
  }
  \layout {
    \context {
      \Lyrics
      \override VerticalAxisGroup #'staff-affinity = #CENTER
      \override LyricText.self-alignment-X = #LEFT
      \override LyricText.font-size = #-1
      \override LyricText.font-name = #"Microsoft YaHei Light"
    }
  }
  \midi {}
}