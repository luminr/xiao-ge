\version "2.18.2"
\header {
  title = \markup {
    \override #'(font-name . "PMingLiU")
    "復旦大學校歌"
  }

  subtitle = \markup {
    \override #'(font-name . "PMingLiU" )
    "1925年"
  }
  composer = \markup {
    \override #'(font-name . "PMingLiU")
    "劉大白 作詞"
  }
  poet = \markup {
    \override #'(font-name . "PMingLiU")
    "豐子愷 作曲"
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
      e'4. e8 f4 e | d2 c4 \breathe c8 c | f4 e d c | d2 r4 g, |
      c4 g c b |  a4. b8 c4 \breathe d8 d | d4. b8 c4 a | g2 r4 g4 |
      e'4 c2 g4 | a4 g2 a8 b |  c4 d e8 e4. | d4( c) d4. g,8 |
      c4 c d d | e8.( f16) g4\fermata c,4 a | f'4 e d d |  c2. r4  \bar ":|."

    }
    \addlyrics {
      \set stanza = "(一)"
      復 旦 復 旦 旦 復 旦
      巍 巍 學 府 文 章 煥
      學 術 獨 立 思 想 自 由
      政 羅 教 網 無 羈 絆
      無 羈 絆 前 程 遠
      向 前 向 前 向 前 進 展
      復 旦 復 旦 旦 復 旦
      日 月 光 華 同 燦 爛
    }
    \addlyrics {
      \set stanza = "(二)"
      復 旦 復 旦 旦 復 旦
      師 生 一 德 精 神 貫
      鞏 固 學 校 維 護 國 家
      先 憂 後 樂 交 相 勉
      交 相 勉 前 程 遠
      向 前 向 前 向 前 進 展
      復
    }
    \addlyrics {
      \set stanza = "(三)"
      復 旦 復 旦 旦 復 旦
      滬 濱 屹 立 東 南 冠
      作 育 國 士 恢 廓 學 風
      震 歐 鑠 美 聲 名 滿
      聲 名 滿 前 程 遠
      向 前 向 前 向 前 進 展
      復
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