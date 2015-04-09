\version "2.18.2"
\header {
  title = \markup {
    \override #'(font-name . "PMingLiU")
    "光華大學校歌"
  }
  subtitle = \markup {
    \override #'(font-name . "PMingLiU" )
    "1925年"
  }
  composer = \markup {
    \override #'(font-name . "PMingLiU")
    "童伯章作曲"
  }
  poet = \markup {
    \override #'(font-name . "PMingLiU")
    "楊蔭溥作詞"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge } CC-BY-SA 4.0 }
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }
}
\score{
  {
    \transpose c f \relative c'{
      \key c \major \time 4/4
      e4 e e c | e4. a8 g2 | c,4 e b c | d1 |
      e4 c e g | c4 a b2 | a4 g e d | g1 |
      g4 a g e | g4. a8 g2 | g4. a8 g4 e | f4 g f2 |
      g4. a8 g4 e | g4. a8 g2 | g4. a8 a4 g | e4 d c2 |
      e4 e e c | e4. a8 g2 | c,4 e b c | d1 |
      e4 c e g | c4. a8 b2 | e,4 g f d | c1 |
      \bar "|."
    }
    \addlyrics {
      \set stanza = "(一)"
      鯤 魚 久 蟄 北 溟 中
      今 已 化 為 鵬
      去 以 六 月 羊 角 風
      重 霄 一 奮 衝
      我 有 前 聖 羲 與 農
      肇 造 文 明 啟 晦 蒙
      我 有 後 聖 週 與 孔
      旁 流 教 澤 施 無 窮
      觀 國 之 光 遠 有 耀
      重 任 在 吾 躬
      中 華 民 氣 原 俊 偉
      奮 起 自 為 雄
    }
    \addlyrics {
      \set stanza = "(二)"
      平 原 寬 廣 帶 長 川
      有 基 筮 在 田
      風 雨 不 動 安 若 山
      廣 廈 列 萬 千
      科 分 教 育 冀 薪 傳
      更 參 文 明 究 人 天
      复 以 商 業 擴 其 用
      產 才 分 道 揚 先 鞭
      父 兄 師 保 瘁 心 力
      乃 至 美 且 全
      光 我 中 華 萬 億 年
      毋 讓 他 人 前
    }
  }
  \layout {
    \override Lyrics.VerticalAxisGroup #'staff-affinity = #CENTER
    \override Lyrics.LyricText.self-alignment-X = #LEFT
    \override Lyrics.LyricText.font-size = #-1
    \override Lyrics.LyricText.font-name = #"PMingLiU"
    \override Score.SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)

  }
  \midi { \tempo 4 = 110 }
}