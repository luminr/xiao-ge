\version "2.18.2"
\header {

  title = \markup {
    \override #'(font-name . "SimHei" )
    "复旦大学校歌"
  }

  subtitle = \markup {
    \override #'(font-name . "SimSun" )
    "1925年"
  }
  composer = \markup {
    \override #'(font-name . "SimSun")
    "刘大白词"
  }
  poet = \markup {
    \override #'(font-name . "SimSun")
    "丰子恺曲"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge } CC-BY-SA 4.0 }
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }

}
\score{
  {
    \transpose c aes \relative c'
    {
      \key c \major \time 4/4 \tempo "alla marcia"  \dynamicUp

      \partial 4  g4 |
      e'4. e8 f4 e | d2 c4 \breathe c8 c | f4 e d c | d2 r4 g, | \break
      c4 g c b |  a4. b8 c4 \breathe d8 d | d4. b8 c4 a | g2 r4 g4 | \break
      e'4 c2 g4 | a4 g2 a8 b |  c4 d e8 e4. | d4( c) d4. g,8 | \break
      c4 c d d | e8.( f16) g4\fermata c,4 a | f'4 e d d |  c2. r4  \bar ":|."

    }
    \addlyrics {
      \set stanza = "(一)"
      复 旦 复 旦 旦 复 旦， 巍 巍 学 府 文 章 焕：  学 术 独 立 思 想 自 由， 政 罗 教 网 无 羁 绊。  无 羁 绊， 前 程 远； 向 前！ 向 前！ 向 前 进 展！  复 旦 复 旦 旦 复 旦， 日 月 光 华 同 灿 烂！
    }
    \addlyrics {
      \set stanza = "(二)"
      复 旦 复 旦 旦 复 旦， 师 生 一 德 精 神 贯：  巩 固 学 校 维 护 国 家， 先 忧 后 乐 交 相 勉。  交 相 勉， 前 程 远； 向 前！ 向 前！ 向 前 进 展！  复
    }
    \addlyrics {
      \set stanza = "(三)"
      复 旦 复 旦 旦 复 旦， 沪 滨 屹 立 东 南 冠：  作 育 国 士 恢 廓 学 风， 震 欧 铄 美 声 名 满。  声 名 满， 前 程 远； 向 前！ 向 前！ 向 前 进 展！  复
    }
  }

  \layout {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
    \override LyricText.font-size = #-1
    \override LyricText.self-alignment-X = #LEFT
    \override LyricText.font-name = #"SimSun"
  }
  \midi { \tempo 4 = 100}
}