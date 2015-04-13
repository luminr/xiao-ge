\version "2.18.2"
\header {
  title = \markup {
    \override #'(font-name . "PMingLiU")
    "南京高等師範學校校歌"
  }
  subtitle = \markup {
    \override #'(font-name . "PMingLiU" )
    "1915年"
  }
  composer = \markup {
    \override #'(font-name . "PMingLiU")
    "李叔同 作曲"
  }
  poet = \markup {
    \override #'(font-name . "PMingLiU")
    "江謙 作詞"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge } CC-BY-SA 4.0 }
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }
}
\score{
  {
    \transpose c g \relative c'{
      \key c \major \time 4/4 \tempo \markup { \override #'(font-name . "PMingLiU")  "中速"  }
      e2 c | g e' | g f | e2. r4 |
      d2 d | c4 b c2 | e4 d d c | d2 g, |
      e' c | g4 c e2 | g2 f | e d |
      d4 d e d | c b c e | e2 d4 c | d2 c |
      g'4 g g g | a2 g | g g | g4 g g2 |  a d, | fis g |
      e c | g4 c e2 | g2 f | e d |
      d d | c4 b c2 | e2  d | d c\fermata  \bar "|."
    }
    \addlyrics {
      大 哉  一 誠 天 下 動
      如 鼎 三 足 兮  曰 知  曰 仁  曰 勇
      千 聖 會 歸 兮  集 成 於 孔
      下 開 萬 代 旁 萬 方 兮  一 趨 兮 同
      踵 海 西 上 兮  江 東
      巍 巍 北 極 兮  金 城 之 中
      天 開 教 澤 兮  吾 道 無 窮
      吾 願 無 窮 兮  如 日 方 暾
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