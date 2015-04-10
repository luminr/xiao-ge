\version "2.18.2"
\header {
  title = \markup {
    \override #'(font-name . "SimHei")
    "北洋大学校歌"
  }
  subtitle = \markup {
    \override #'(font-name . "SimSun" )
    "1935年"
  }
  composer = \markup {
    \override #'(font-name . "SimSun")
    "萧友梅曲"
  }
  poet = \markup {
    \override #'(font-name . "SimSun")
    "廖辅叔词"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge } CC-BY-SA 4.0 }
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }
}
\score{
  {
    \transpose c d \relative c'{
      \key c \major \time 4/4 \tempo  \markup { \override #'(font-name . "SimSun") "进行曲速度" }
      c'4. c8 g4 g | e f a g | e8 g c4 g f8 e | d4 r e e |
      d8 e f4 f f | e4 f g2 | c4. c8 g g e a | g4 \times 2/3 { e8 e e } d4 a' |
      g4 d8( e) c4 r | e8 r e r e r r4 | e8 r a r g r r4 | e8 r e r a r r4 |
      d,8 r e r c r r4 | g'2 g8 a b4 | c4 b a g | f2 f8 e d4 |
      c8 b c4 d2 | e2 e8 f g4 | d'4 c b a | g4 g a g |
      b2. g4 | a4 b c d | c2 c4 r4  \bar "|."
    }
    \addlyrics {
      花 堤 蔼 蔼
      北 运 滔 滔
      巍 巍 学 府 北 洋 高

      悠 长 称 历 史
      建 设 为 同 胞
      不 从 纸 上 逞 空 谈
      愿 实 地 把 中 华 改 造

      穷 学 理
      振 科 工
      重 实 验
      薄 雕 虫

      望 前 驱 之 英 华 卓 荦
      应 后 起 之 努 力 追 踪
      念 过 去 之 艰 难 缔 造

      愿 一 心 一 德 共 扬 校 誉 于 无 穷

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