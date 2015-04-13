\version "2.18.2"
\header {
  title = \markup {
    \override #'(font-name . "PMingLiU")
    "清華大學校歌"
  }
  subtitle = \markup {
    \override #'(font-name . "PMingLiU" )
    "1923年創作"
  }
  composer = \markup {
    \override #'(font-name . "PMingLiU")
    "張麗真 作曲"
  }
  poet = \markup {
    \override #'(font-name . "PMingLiU")
    "汪鸞翔 作詞"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge } CC-BY-SA 4.0 }
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }

}
\score{
  \transpose c ees \relative c'
  {
    \key c \major \time 4/4
    \repeat volta 3 {
      c4 c8( e) g4 g | a4 c8( a) g4 g | e4 e g8( e) c4 | a4 c8 d g2 |
      a4 a a8( c) g4 | e4 d e8( d) c4 | d4 g g8( fis) g4 | a4 a b8( a) g4 |
      c4. c8 a4 c | g4. a8 g2 | a4. a8 g4 e | d4 d8( e) g2 |
      c,4. c8 c4 e | d4 e8( d) c2 | a'4. a8 g4 e | d4 d8( e) c2 |
      c'4 c2 r4 | a4 a2 r4 | g4 g a g | d4 e g2 |
      c4 c2 r4 | a4 a2 r4 | g4 g a g | d e8( d) c2 |
    }
  }
  \addlyrics  {
    \set stanza = "(一)"
    西 山 蒼 蒼 東 海 茫 茫 吾 校 莊 嚴 巍 然 中 央
    東 西 文 化 薈 萃 一 堂 大 同 爰 躋 祖 國 以 光
    莘 莘 學 子 來 遠 方 莘 莘 學 子 來 遠 方
    春 風 化 雨 樂 未 央 行 健 不 息 須 自 強
    自 強 自 強 行 健 不 息 須 自 強
    自 強 自 強 行 健 不 息 須 自 強
  }
  \addlyrics  {
    \set stanza = "(二)"
    左 圖 右 史 鄴 架 巍 巍 致 知 窮 理 學 古 探 微
    新 舊 合 冶 殊 途 同 歸 肴 核 仁 義 聞 道 日 肥
    服 膺 守 善 心 無 違 服 膺 守 善 心 無 違
    海 能 就 下 眾 水 歸 學 問 篤 實 生 光 輝
    光 輝 光 輝 學 問 篤 實 生 光 輝
    光 輝 光 輝 學 問 篤 實 生 光 輝
  }

  \addlyrics  {
    \set stanza = "(三)"
    器 識 為 先 文 藝 其 從 立 德 立 言 無 問 西 東
    孰 紹 介 是 吾 校 之 功 同 仁 一 視 泱 泱 大 風
    水 木 清 華 眾 秀 鍾 水 木 清 華 眾 秀 鍾
    萬 悃 如 一 矢 以 忠 赫 赫 吾 校 名 無 窮
    無 窮 無 窮 赫 赫 吾 校 名 無 窮
    無 窮 無 窮 赫 赫 吾 校 名 無 窮
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