\version "2.18.2"
\header {
  title = \markup {
    \override #'(font-name . "PMingLiU")
    "廈門大學校歌"
  }
  subtitle = \markup {
    \override #'(font-name . "PMingLiU" )
    "1921年"
  }
  composer = \markup {
    \override #'(font-name . "PMingLiU")
    "趙元任作曲"
  }
  poet = \markup {
    \override #'(font-name . "PMingLiU")
    "鄭貞文作詞"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge } CC-BY-SA 4.0 }
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }
}
\score{
  \unfoldRepeats{
    \transpose c d \relative c''{
      \key c \major \time 2/4
      \repeat volta 2 {
        g8 g4. | g8 g4. | a8( g) e c' | g2 | g4 d8( g) |
        b4 b8 c | b8( a) g( fis) | g2~ | g4 r | \break
        g4 g | c4. g8 | e4 e8 g | c4. g8 | a8( g f e) | d2~ | d4 r | \break
        c8( b) a f' | e4 d8. d16 | c2 | c4 e8 g |
      }
      \alternative {
        {
          a4 g8. g16 | c2\fermata \bar "||" \break
        }
        { c4^"rit." \slashedGrace e16( d8.)\fermata^\markup{ \italic molto } c16 | c2\fermata   \bar "|." }
      }
    }
    \addlyrics {
      \set stanza = "(一)"
      自 強！ 自 強！ 學 海 何 洋 洋！
      誰 歟 操 鑰 發 其 藏？
      鷺 江 深 且 長， 致 吾 知 與 無 央。
      籲 嗟 乎！ 南 方 之 強！ 籲 嗟 乎！ 南 方 之 強！

      \set stanza = "(二)"
      自 強！ 自 強！ 人 生 何 茫 茫！
      誰 歟 普 渡 架 慈 航？
      鷺 江 深 且 長， 充 吾 愛 與 無 疆。
      籲 嗟 乎！ 南 方 之 強！ 籲 嗟 乎！ 南 方 之 強！
    }
  }
  \layout {
    \override VerticalAxisGroup #'staff-affinity = #CENTER
    \override LyricText.self-alignment-X = #LEFT
    \override LyricText.font-size = #-1
    \override LyricText.font-name = #"PMingLiU"
  }
  \midi {
    \tempo 4 = 100
  }
}