\version "2.18.2"
\header {
  title = \markup {
    \override #'(font-name . "PMingLiU")
    "光華歌"
  }
  subtitle = \markup {
    \override #'(font-name . "PMingLiU" )
    "1930年"
  }
  composer = \markup {
    \override #'(font-name . "PMingLiU")
    ""
  }
  poet = \markup {
    \override #'(font-name . "PMingLiU")
    "朱經農 作詞"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge } CC-BY-SA 4.0 }
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }
}
\score{
  {
    \relative c'{
      \key c \major \time 4/4
      \repeat volta 2 {
      f4 f f8 c4 d8 | f2 f4( g) | f2 f4( g) | f2 f4 f8( d) | f4 f8 f f4 g |
      a4 d c a8 g | f2 f4( g) | f2 f4 g | a4 a g g8( f)
      d4 g f f8 d | c4 c2( d4) | c4 c2 c4 | c'4 c c a |
      c4 c2( d4) | c4 c2( d4) | c4 c f, d | f4 f8 f f4 g |
      a4 d c a8 g | f2 f4( g) | f2 f4 g | a4 a g g8( f)
      d4 g f f8 d | c2 c4( d4) | c2 c | }
      f4 g a c | f4 f2\fermata r4 |
      \bar "|."
    }
    \addlyrics {
      \set stanza = "(一)"
      聽 我 們 三 呼 光 華 光 華 光 華
      教 人 格 物 致 知 誠 意 正 心 的 光 華 光 華
      要 同 德 同 心 愛 國 愛 羣 的 光 華 光 華
      努 力 為 學 的 光 華 光 華 光 華
      要 讀 書 運 動 愛 國 運 動 並 進 的 光 華 光 華
      知 天 下 興 亡 匹 夫 有 責 的 光 華 光 華
      我 們 愛 護 光 華
    }
    \addlyrics {
      \set stanza = "(二)"
      聽 我 們 三 呼 光 華 光 華 光 華
      教 人 好 學 不 倦 深 思 精 進 的 光 華 光 華
      要 虛 懷 若 谷 允 恭 克 讓 的 光 華 光 華
      培 養 人 格 的 光 華 光 華 光 華
      捐 除 私 見 大 公 無 我 合 力 同 造 光 華 光 華
      要 富 貴 不 淫 威 武 不 屈 的 光 華 光 華
    }
  }
  \layout {
    \override Lyrics.VerticalAxisGroup #'staff-affinity = #CENTER
    \override Lyrics.LyricText.self-alignment-X = #LEFT
    \override Lyrics.LyricText.font-size = #-1
    \override Lyrics.LyricText.font-name = #"PMingLiU"
    \override Score.SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)

  }
  \midi { \tempo 4 = 80 }
}