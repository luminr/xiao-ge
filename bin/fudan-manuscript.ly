\version "2.18.2"
\header {
  subtitle = \markup {
    \override #'(font-name . "Microsoft YaHei Light")
    "曲调自1815-1932年荷兰国歌《尼德兰人的血脉》"
  }
  title = \markup {
    \override #'(font-name . "Microsoft YaHei Light")
    "复旦大学校歌"
  }

  subsubtitle = \markup {
    \override #'(font-name . "Microsoft YaHei Light" )
    "1925年发表，2005年百年校庆正式恢复校歌地位"
  }
  composer = \markup {
    \override #'(font-name . "Microsoft YaHei Light")
    "刘大白词"
  }
  poet = \markup {
    \override #'(font-name . "Microsoft YaHei Light")
    "丰子恺曲"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge }}
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
        复 旦 复 旦 旦 复 旦， 巍 巍 学 府 文 章 焕：  学 术 独 立 思 想 自 由， 政 罗 教 网 无 羁 绊。  无 羁 绊， 前 程 远； 向 前！ 向 前！ 向 前 进 展！  复 旦 复 旦 旦 复 旦， 日 月 光 华 同 灿 烂！ 同 灿 烂！
      }
      \new Lyrics \lyricsto "aligner" {
        \set stanza = "(二)"
        复 旦 复 旦 旦 复 旦， 师 生 一 德 精 神 贯：  巩 固 学 校 维 护 国 家， 先 忧 后 乐 交 相 勉。  交 相 勉， 前 程 远； 向 前！ 向 前！ 向 前 进 展！  复 旦 复 旦 旦 复 旦， 日 月 光 华 同 灿 烂！ 同 灿 烂！
      }
      \new Lyrics \lyricsto "aligner" {
        \set stanza = "(三)"
        复 旦 复 旦 旦 复 旦， 沪 滨 屹 立 东 南 冠：  作 育 国 士 恢 廓 学 风， 震 欧 铄 美 声 名 满。  声 名 满， 前 程 远； 向 前！ 向 前！ 向 前 进 展！  复 旦 复 旦 旦 复 旦， 日 月 光 华 同 灿 烂！ 同 灿 烂！
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
    \override VerticalAxisGroup #'staff-affinity = #CENTER
    \override LyricText.self-alignment-X = #LEFT
    \override LyricText.font-size = #-1
    \override LyricText.font-name = #"Microsoft YaHei Light"

  }
  \midi { \tempo 4 = 100}
}