\version "2.18.2"
\header {
  title = \markup {
    \override #'(font-name . "PMingLiU")
    "北洋大學校歌"
  }
  subtitle = \markup {
    \override #'(font-name . "PMingLiU" )
    "1935年"
  }
  composer = \markup {
    \override #'(font-name . "PMingLiU")
    "蕭友梅 作曲"
  }
  poet = \markup {
    \override #'(font-name . "PMingLiU")
    "廖輔叔 作詞"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge } CC-BY-SA 4.0 }
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }
}
\score{
  {
    \transpose c d \relative c'{
      \key c \major \time 4/4 \tempo  \markup { \override #'(font-name . "PMingLiU") "进行曲速度" }
      c'4. c8 g4 g | e f a g | e8 g c4 g f8 e | d4 r e e |
      d8 e f4 f f | e4 f g2 | c4. c8 g g e a | g4 \times 2/3 { e8 e e } d4 a' |
      g4 d8( e) c4 r | e8 r e r e r r4 | e8 r a r g r r4 | e8 r e r a r r4 |
      d,8 r e r c r r4 | g'2 g8 a b4 | c4 b a g | f2 f8 e d4 |
      c8 b c4 d2 | e2 e8 f g4 | d'4 c b a | g4 g a g |
      b2. g4 | a4 b c d | c2 c4 r4  \bar "|."
    }
    \addlyrics {
      花 堤 藹 藹 北 運 滔 滔 巍 巍 學 府 北 洋 高
      悠 長 稱 歷 史 建 設 為 同 胞 不 從 紙 上 逞 空 談 願 實 地 把 中 華 改 造
      窮 學 理 振 科 工 重 實 驗 薄 雕 蟲
      望 前 驅 之 英 華 卓 犖 應 後 起 之 努 力 追 踪 念 過 去 之 艱 難 締 造
      願 一 心 一 德 共 揚 校 譽 於 無 窮
    }
  }
  \layout {
    \override Lyrics.VerticalAxisGroup #'staff-affinity = #CENTER
    \override Lyrics.LyricText.self-alignment-X = #LEFT
    \override Lyrics.LyricText.font-size = #-1
    \override Lyrics.LyricText.font-name = #"PMingLiU"
    \override Score.SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)
  }
  \midi { \tempo 4 = 115 }
}