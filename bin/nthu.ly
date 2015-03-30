\version "2.19.17"
\header {
  title = \markup {
    \override #'(font-name . "Microsoft JhengHei Light")
    "西山蒼蒼"
  }
  subtitle = \markup {
    \override #'(font-name . "Microsoft JhengHei Light")
    "國立清華大學校歌"
  }
  subsubtitle = \markup {
    \override #'(font-name . "Microsoft JhengHei Light" )
    "1923年審定膺選為校歌，1930年編合唱"
  }
  composer = \markup {
    \override #'(font-name . "Microsoft JhengHei Light")
    "張麗真 作曲"
  }
  arranger = \markup {
    \override #'(font-name . "Microsoft JhengHei Light")
    "趙元任 編曲"
  }
  poet = \markup {
    \override #'(font-name . "Microsoft JhengHei Light")
    "汪鸞翔 作詞"
  }
  copyright = \markup { \with-url #"https://github.com/luminr/xiao-ge"  { https://github.com/luminr/xiao-ge }}
  tagline = \markup { Engraved at \simple #(strftime "%Y-%m-%d" (localtime (current-time))) with  LilyPond \simple #(lilypond-version) }

}
\score{
  \transpose c ees  \new ChoirStaff <<
    \new Staff
    \relative c' <<
      \new Voice = "voice" {
        \voiceOne
        \key c \major \time 4/4 \tempo 4 = 88
        \repeat volta 3 {
          c4 c8( e) g4 g | a4 c8( a) g4 g | e4 e g8( e) c4 | a4 c8 e-\markup { \override #'(font-name . "Microsoft JhengHei Light") 亦有作F } g2 |
          a4 a a8( c) g4 | e4 d e8( d) c4 | d4 g g8( fis) g4 | a4 a b8( a) g4 |
          c4. c8 a4 c | g4. a8 g2 | a4. a8 g4 e | d4 d8( e) g2 |
          c,4. c8 c4 e | d4 e8( d) c2 | a'4. a8 g4 e | d4 d8( e) c2 |
          c'4  c2 \oneVoice r4 | \voiceOne a4 a2 \oneVoice r4 | \voiceOne g4 g a g | d4 d8( e) g2 |
          c4  c2  \oneVoice r4 | \voiceOne < \parenthesize e a,>4 < \parenthesize e a,>2 \oneVoice  r4 | \voiceOne  g,4 g a g | d e8( d) c2 |
        }
      } \\
      {
        c4 c e e | f4 dis e4 d | c4 c e8( c) a4 | a4 a8 c b2 |
        f'4 f f e | c4 b c8( b) a4 | c4 b d d | e4 e fis d |
        e4. e8 e4 e | e4 dis e2 | e4. e8 d4 c | b4 b c2 |
        c4. c8 c4 c | b4 b c2 | c4. c8 c4 c | d4 b c2 |
        e4  e2 s4 | f4 f2 s4 | c4 f e d | b b c2 |
        e4  e2 s4 | fis4 fis2 s4 | e4 e dis e | g,4 g g2 |
      }
    >>
    \new Lyrics \lyricsto "voice" {
      \set stanza = "(一)"
      西 山 蒼 蒼， 東 海 茫 茫， 吾 校 莊 嚴， 巍 然 中 央，
      東 西 文 化， 薈 萃 一 堂， 大 同 爰 躋， 祖 國 以 光。
      莘 莘 學 子 來 遠 方， 莘 莘 學 子 來 遠 方，
      春 風 化 雨 樂 未 央， 行 健 不 息 須 自 強。
      自 強， 自 強， 行 健 不 息 須 自 強！
      自 強， 自 強， 行 健 不 息 須 自 強！
    }
    \new Lyrics \lyricsto "voice" {
      \set stanza = "(二)"
      左 圖 右 史， 鄴 架 巍 巍， 致 知 窮 理， 學 古 探 微，
      新 舊 合 冶， 殊 途 同 歸， 肴 核 仁 義， 聞 道 日 肥。
      服 膺 守 善 心 無 違， 服 膺 守 善 心 無 違，
      海 能 就 下 眾 水 歸， 學 問 篤 實 生 光 輝。
      光 輝， 光 輝， 學 問 篤 實 生 光 輝！
      光 輝， 光 輝， 學 問 篤 實 生 光 輝！
    }

    \new Lyrics \lyricsto "voice" {
      \set stanza = "(三)"
      器 識 為 先， 文 藝 其 從； 立 德 立 言， 無 問 西 東。
      孰 紹 介 是， 吾 校 之 功， 同 仁 一 視， 泱 泱 大 風。
      水 木 清 華 眾 秀 鍾， 水 木 清 華 眾 秀 鍾，
      萬 悃 如 一 矢 以 忠， 赫 赫 吾 校 名 無 窮。
      無 窮， 無 窮， 赫 赫 吾 校 名 無 窮！
      無 窮， 無 窮， 赫 赫 吾 校 名 無 窮！
    }
    \new Staff
    \relative c <<
      {
        \clef bass \key c \major
        \repeat volta 3 {
          e4 e8( g) c4 c | c4 c c b | c4 a g a4 | g4 fis8 fis g2 |
          c4 c c c | c4 a a8( gis) a4 | fis4 g a g | c4 a c b |
          a4. a8 a4 a | b4 b b2 | c4. c8 c4 a | g4 g4 g2 |
          g4 f e e | f4 g8( f) e2 | f4. f8 g4 g | g4 f e2 |
          a4  a2 \oneVoice r4 | \voiceOne c4 c2 \oneVoice r4 | \voiceOne c4 b c b | g g g2 |
          a4  a2 \oneVoice r4 | \voiceOne c4 c2 \oneVoice r4 | \voiceOne c4 c c b | g f e2 |
        }
      } \\
      {
        c4 c c c | f4 fis g4 g, | a4 a b c | d4 d8 d g,2 |
        f'4 f f8( a) c4 | c,4 f e a, | a4 g c b | c4 c d g, |
        a4. a8 c8( b) a4 | b4 b e2 | a,4. a8 a8( b) c4 | g'4 g8( f) e2 |
        e4 d c a | g4 g8( a) c2 | a4. f'8 e8( d) c4 | b8( a) g4 c2 |
        a4 a2 s4 | f'4 f2 s4 | e4 d c g' | g f e2 |
        a,4 a2 s4 | d4 d2 s4 | g4 g fis g | g,4 g8( a) c2 |
      }
    >>
  >>
  \layout {
    \context {
      \Lyrics
      \override VerticalAxisGroup #'staff-affinity = #CENTER
      \override LyricText.self-alignment-X = #LEFT
      \override LyricText.font-size = #-1
      \override LyricText.font-name = #"Microsoft JhengHei Light"
    }
  }
  \midi {}
}