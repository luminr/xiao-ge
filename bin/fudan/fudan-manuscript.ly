\version "2.18.2"
\header {
  subsubtitle = \markup {
    \override #'(font-name . "PMingLiU")
    "曲調自1815年至1932年年荷蘭國歌『尼德蘭人的血脈』"
  }
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
    \new ChoirStaff \transpose c bes <<
      \relative c' <<
        {
          \key c \major \time 4/4 \tempo "alla marcia"  \dynamicUp
          \partial 4  g4 | c2 e4 d | c4. b16( a) g4 \breathe c4 | b4 c f e | e d r g, | \break
          c4 c e d |  c4. b8 a4 \breathe b8 c | d8( e) fis( g) b,4 a | g2 r4 g4 | f'4.( e8) d4 d | \break
          e4.( d8) c4 c8 e |  g4 g e c | e4 d r g, | c2 e8( c) c( b) | \break
          a4 a f'4.( d8) | c4 c b8( c) d( b) |  c2\cresc d\! | e4 c8( e) g( b, g4) | c2 r2 \bar "|."
        } \\
        \new Voice = "aligner" {
          \voiceTwo
          \partial 4  g4 | e4( g) g4 g | e4 f e  e4 | f4 e g g | g g r g |
          e4 e g g | f4. g8 a4 f8 f | g4 g4 g4 fis | g2 r4 g4 | g2 g4 g |
          g2 g4 d8 e |  g4 g e c | g'4 g r g | e2 g4 g |
          f4 f a2 | g4 g g g | g2 g | g4 c,8( e) g2 | e2 r2 |
        }
      >>
      \new Lyrics \lyricsto "aligner" {
        \set stanza = "(一)"
        復 旦 復 旦 旦 復 旦
        巍 巍 學 府 文 章 煥
        學 術 獨 立 思 想 自 由
        政 羅 教 網 無 羈 絆
        無 羈 絆 前 程 遠
        向 前 向 前 向 前 進 展
        復 旦 復 旦 旦 復 旦
        日 月 光 華 同 燦 爛
        同 燦 爛
      }
      \new Lyrics \lyricsto "aligner" {
        \set stanza = "(二)"
        復 旦 復 旦 旦 復 旦
        師 生 一 德 精 神 貫
        鞏 固 學 校 維 護 國 家
        先 憂 後 樂 交 相 勉
        交 相 勉 前 程 遠
        向 前 向 前 向 前 進 展
        復 旦 復 旦 旦 復 旦
        日 月 光 華 同 燦 爛
        同 燦 爛
      }
      \new Lyrics \lyricsto "aligner" {
        \set stanza = "(三)"
        復 旦 復 旦 旦 復 旦
        滬 濱 屹 立 東 南 冠
        作 育 國 士 恢 廓 學 風
        震 歐 鑠 美 聲 名 滿
        聲 名 滿 前 程 遠
        向 前 向 前 向 前 進 展
        復 旦 復 旦 旦 復 旦
        日 月 光 華 同 燦 爛
        同 燦 爛
      }
      \new Staff \relative c <<
        {
          \partial 4  g4 | c2 c4 b | c4 a c  g | g4 g d' c | c b r g |
          c4 c c d | d4. d8 d4 d8 c | d4 cis d c | b2 r4 g4 | d'4.( c8) b4 b |
          c4( f) e c8 e |  g4 g e c | c4 b r g | g2 c4 c |
          c4 c d2 | e4 e d8( e) f( d) | e2 c | c4 c8( e) g,4( e'8 d) | c2 r2 |

        } \\
        {
          \clef bass
          \key c \major
          \partial 4  g4 | c,4( e) g4 gis | a4 f c  c | d4 c b c | g' g r g |
          c,4 d8( g) c4 b | a4. g8 fis4 d'8 c | b4 a a d, | g2 r4 g4 | g2 g4 g |
          e4( g4) g4 c,8 e |  g4 g e c | g'4 g r g | c,2 c4 e |
          f4 f d4.( f8) | g4 g g g | c2 g | c4 d,8( e) g2 | <e c>2 r2 |
        }
      >>
    >>
  }

  \layout {
    \override BreathingSign.text = \markup { \musicglyph #"scripts.upbow" }
    \override Lyrics.VerticalAxisGroup #'staff-affinity = #CENTER
    \override Lyrics.LyricText.self-alignment-X = #LEFT
    \override Lyrics.LyricText.font-size = #-1
    \override Lyrics.LyricText.font-name = #"PMingLiU"
    %\override Score.SpacingSpanner.base-shortest-duration = #(ly:make-moment 1/32)

  }
  \midi { \tempo 4 = 100 }
}