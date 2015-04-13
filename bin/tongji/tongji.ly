\version "2.18.2"
\header {
  title = \markup {
    \override #'(font-name . "PMingLiU")
    "國立同濟大學校歌"
  }
  subtitle = \markup {
    \override #'(font-name . "PMingLiU" )
    "1927年"
  }
  composer = \markup {
    \override #'(font-name . "PMingLiU")
    "蕭友梅 作曲"
  }
  poet = \markup {
    \override #'(font-name . "PMingLiU")
    "易韋齋 作詞"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge } CC-BY-SA 4.0 }
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }
}
\score{
  {
    \transpose c g \relative c'{
      \key c \major \time 4/4
      \partial 4 g8. e'16 | c4 g' g c,8( e) | d2 c8 e g g | d4 r c8 e g4 |
      d4 d g, r8 g | c4 c c r8 g | d'4 d d r8 e | d4 a'8 g fis( e) d4 |
      g,8 g e'4 e8 d c e | d2 r4 g, | c2 r4 g | d'2 r4 e8 d |
      c4 a' g f | e8 r r g, c4 g | e'4 r8 g, g'4 f | d4 r8 g, e'4 d8( e) | c2.
      \bar "|."
    }
    \addlyrics {
      \set stanza = "(一)"
      好 一 片 中 華 大 地
      不 振 興 工 藝 真 可 惜 真 可 惜
      同 有 耳 目
      同 有 手 足
      同 有 心 思 才 力
      不 作 工
      負 了 好 教 育
      勤 勞 誠 毅
      提 攜 我 中 華 國 民 同 舟 共 濟
      同 舟 共 濟 振 興 工 藝
    }
    \addlyrics {
      \set stanza = "(二)"
      好 一 片 中 華 大 地
      不 健 康 身 體 真 可 惜 真 可 惜
      同 有 心 腹
      同 有 肌 肉
      同 有 起 居 飲 食
      不 學 醫
      負 了 好 教 育
      慈 愛 仁 義
      扶 植 我 中 華 國 民 同 舟 共 濟
      同 舟 共 濟 健 康 身 體
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